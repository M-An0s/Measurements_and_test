
#include "FFT.h"
#include "ap_int.h"

//for FFFT works for 8
#define N 8
#define Nlog 3

#define A 4
#define Comm 4
#define B 4
//buffer size
#define Size (A*Comm)

//for Matrix Mult


enum State{
        IDLE,
        LOAD,
        PIP_1,
        COMPUTE_FFT,
        COMPUTE_CONV,
        COMPUTE_GEMM,
        UNLOAD,
    };


//call simple_mull function to allow for multiple functions 
//len_t is the lenght of the computational loop 
//for example for (outer_loop){for(len){Do_computation();}}
// f_cnt is the variable incrementing in each loop iteration
//valid represents the validity of the actuall result 
///<x>_i channels are streams of HWPE each having a custom interface on each own 


//Function Shift
// 0         0 ---> ifft
// 1         0 ---> fft
// 0         1 ---> convolution 
// 1         1 ---> matrix mult


/*void fft(int idx_1, int idx_2, State *state, res_t buffer_a[Size], res_t buffer_b[Size],dat_t *tmp_re_x,dat_t *tmp_im_x, dat_t *tmp_re_y, 
     dat_t *tmp_im_y,res_t tmp_im,res_t tmp_re){
                dat_t a1;
                dat_t b1;
                dat_t a2;
                dat_t b2;
   

                //buffer_a will be used for real and buffer_b for imaginary
                a1 = buffer_a[idx_1];
                b1 = buffer_b[idx_1];
                a2 = buffer_a[idx_2];
                b2 = buffer_b[idx_2];

                *tmp_re_x = a1;
                *tmp_im_x = b1;

                        //butterfly operations
                *tmp_im_y = (a2* (tmp_im) + b2*(tmp_re))>>7;
                        
                *tmp_re_y = (a2*(tmp_re) - b2*(tmp_im))>>7;
                        //assigning to output 
                *state =  FFT_CTRL;}*/
    void mul_pip(res_t a,res_t b,State ST,res_t *c){
         *c = a*b;  
    }

void cont(hs_is_t *a_i,hs_is_t *b_i,hs_is_t *c_i,hs_is_t *d_o,
             bool clear,bool enable,bool function,bool start,shift_t shift,len_t len,
             len_t *f_cnt, bool *f_valid){

   // #pragma HLS PIPELINE II=1

    #pragma HLS INTERFACE ap_ctrl_none port=return // do not create ready,done (control logic is embodied inside)

    #pragma HLS INTERFACE ap_none port = a_i //in
    #pragma HLS disaggregate variable = a_i

    #pragma HLS INTERFACE ap_none port = b_i //in
    #pragma HLS disaggregate variable = b_i

    #pragma HLS INTERFACE ap_none port = c_i //in
    #pragma HLS disaggregate variable = c_i

    #pragma HLS INTERFACE ap_none port = d_o //out
    #pragma HLS disaggregate variable = d_o

    static res_t store_result; 
    static bool store_result_valid;
    static bool store_result_ready;
    static d_non_t d_nonshifted;
    static bool d_nonshifted_valid;
    //cnt
    static count_t r_cnt;

    //new signal for the use of accumulator 
    static res_t r_acc;
    static bool r_acc_ready;
    static bool r_acc_valid;
    static res_t c_shifted;

    //static bool ready;
    static len_t b_count;
    static int i;
    static int j_a;
    static int j_b;

   
    static res_t buffer_a[Size];
    #pragma HLS ARRAY_PARTITION variable=buffer_a complete dim=1
    static res_t buffer_b[Size];
    #pragma HLS ARRAY_PARTITION variable=buffer_b complete dim=1
    static res_t buffer;
    #pragma HLS ARRAY_PARTITION variable=buffer complete dim=1
    //wrong coeffs temporarily doubled
    const dat_t re_twiddles[N] = {0x80, 0x5a, 0x0, -0x5a, -0x80, -0x5a, 0x0, 0x5a};
    const dat_t im_twiddles[N] = {0x0, -0x5a, -0x80, -0x5a, 0x0, 0x5a, 0x80, 0x5a};
    #pragma HLS ARRAY_PARTITION variable=re_twiddles complete
    #pragma HLS ARRAY_PARTITION variable=im_twiddles complete   

    static int s_idx;
    static int d_idx;
    static int idx_1;
    static int idx_2;
    static int offset_start;
    static int offset_j;
    static int half;
    static int step;
    static int ctrl;

    
    static res_t sum;
    static res_t prod;
    static bool buffer_ok;

    static ap_uint<2> shift_fft;
    static bool sign;
    static res_t tmp_re;
    static res_t tmp_im;
    static int offset_tw;
    res_t tmp;
    res_t tmp_a;
    res_t tmp_b;
    static dat_t tmp_re_x;
    static dat_t tmp_im_x;
    static dat_t tmp_re_y;
    static dat_t tmp_im_y; 
    static State state = IDLE;

    static res_t pip_a;
    static res_t pip_b;

    // Multiplier accepts new value from `a_i` and `b_i` when `r_mult` is ready and both
    // `a_i` & `b_i` are valid, or when both `a_i` & `b_i` are invalid
    //Those ready mean ready to accept new input 

    c_shifted = (((ap_int<64>)c_i->data) << shift);

    //d_o->data = r_mult;
    a_i -> ready = !buffer_ok; //(store_result_ready & a_i->valid & b_i->valid) | (!a_i->valid & !b_i->valid); //... or if suddenly one becomes non valid
    b_i -> ready = !buffer_ok; //(store_result_ready & a_i->valid & b_i->valid) | (!a_i->valid & !b_i->valid);
    //Multiplier accepts new value from `c_i` when `r_acc` is ready or `c_i` is invalid
    c_i -> ready = 1;
    r_acc_ready  = d_o -> ready | !r_acc_valid;
   

    //For fft: do one normal then try the trick with the parallel ones 
    //One presaved buffer with the constants
    //TODO IMPORTANT -> The Fourier constants have decimal places so you need FIXED POINT ARITHMETIC 
    //You need to do scalling after each multiplication to preserve the original number 
    //format -> that's what the shifted and non shifted values were used for 
  

    switch(state){

        case IDLE:{
               store_result = 0;
                store_result_valid = 0;

                j_a = 0;
                j_b =0;
                b_count =0;

                //ready = 0;

                r_cnt = 0;
                r_acc = 0;
                r_acc_valid =0;
                i =0;
               
                sum = 0;
                prod =0;

                //ctrl 
                ctrl = 2;

                s_idx =0;

                //index_1 always starts from zero
                idx_1= 0;
                //index_2 always starts from one for Fourier Zero for others 
                idx_2 = 1;

                //j
                offset_j =0;

                //offset_twiddle 
                offset_tw = 0;
                tmp_re = re_twiddles[0];
                half = 1;
                //start from N/2
                step = N>>1;
                //start 
                offset_start = 0;
                pip_a =0;
                pip_b = 0; 
            if(start){
                state = LOAD;  
            }
            break;}

         case LOAD:{
            buffer_ok = 0;
            store_result_valid =  a_i->valid && b_i->valid;
            if (store_result_valid){ //&& store_result_ready)){ //(a_i->valid)&&(b_i->valid)
                    tmp_a = a_i->data;
                    tmp_b = b_i->data;
                    buffer_a[j_a++] = tmp_a;
                    buffer_b[j_b++] = tmp_b;
                    
                    b_count++;}
             if((b_count>=N) && (shift ==0)){
                buffer_ok = 1;

                //some fft vs ifft things 
                if(function == 1){
                    shift_fft =0;
                    sign = 1;
                    tmp_im = im_twiddles[0];

                    }
                else{
                    shift_fft =Nlog;
                    sign = 0;
                    tmp_im = -im_twiddles[0];}

                    state = COMPUTE_FFT;}

                else if(b_count>=(Size) && (shift ==1)){
                    buffer_ok =1;
                    idx_2 = 0;
                    idx_1 =0;
                    if(function == 0){
                        state = COMPUTE_CONV;}
                    if(function == 1){
                        state = COMPUTE_GEMM;
                    }
                }
            pip_a = buffer_a[0];
            pip_b = buffer_b[0];
            break;}

          
        case COMPUTE_CONV:{
            r_acc_valid = 0;
            //convolution
                if(idx_1+offset_j<=idx_2){
                        //a -> x(k) and b->h(n-k)
                        sum += prod;
                        idx_1 ++;}

                else{
                    r_acc = sum;
                    sum =0;
                    state = UNLOAD;

                    if(idx_2<Size-1){
                        idx_2++;
                        idx_1 = 0;
                    }
                    else{
                        idx_1=1+offset_j;
                        offset_j++;
                        idx_2 ++;
                    } 
                }
            pip_a = buffer_a[idx_1];
            pip_b = buffer_b[idx_2-idx_1];
            break;
            }

    
        case COMPUTE_GEMM:{
                //IMPORTANT
                buffer_ok =1;
                r_acc_valid =0;
                //ALWAYS PIPELINE THE ARRAY ACCESSES
                //ACCESSING BOTH ARRAYS FOR ONE ACTION CREATES AN ENORMOUS CRITICAL PATH
                
                //offset_a -> offset_j , offset_b -> offset_start
                //REASURE HLS THAT THIS IS A PIPE NOT A DEPENDENCY
                sum += prod;
                s_idx++;
                //tmp_a = buffer_a[idx_1]* buffer_b[idx_2];
                //tmp_b = tmp_a;
                //change column
                idx_1++;
                    //change row
                idx_2 = idx_2 + B;

            if(s_idx == Comm){
                if(offset_start !=B-1){     
                        //first column again
                        idx_1 = offset_j;
                        //next column
                        idx_2 = offset_start+1;
                        offset_start = offset_start+1;}

                else{
                    offset_j = offset_j +Comm;
                    offset_start = 0;
                    idx_2 =0;
                } 
                 
                s_idx = 0;
                r_acc = sum;
                sum = 0; 
                state = UNLOAD;}
            pip_a = buffer_a[idx_1];
            pip_b = buffer_b[idx_2];
            
            break;
        }

       
        case UNLOAD:{
            if ((r_cnt <= len)&&(store_result_ready)){
                r_acc_valid =1;
                i++;
                r_cnt++;
            }

                if(shift ==0){
                state = COMPUTE_FFT;}

                else if((shift ==1) && (function ==0)){
                    state = COMPUTE_CONV;
                }
                else if((shift ==1) && (function == 1)){
                    state = COMPUTE_GEMM;
                }
            

            if(i == len){
                state = IDLE;
                r_acc_valid =1;
            }

        break;}

        }
    
    
    mul_pip(pip_a,pip_b,state,&prod);
    d_nonshifted       = (ap_int<64>)(r_acc);
    d_nonshifted_valid = r_acc_valid;
    store_result_ready = r_acc_ready | !store_result_valid; 

    
    d_o->data  =(ap_int<64>)r_acc;
    d_o->valid = enable & r_acc_valid; //d_nonshifted_valid;
    d_o->strb  = 15;
    
    *f_cnt = r_cnt;
    *f_valid = r_acc_valid;

}