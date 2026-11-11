
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
#define Q 15

//for Matrix Mult


enum State{
        IDLE,           //0
        LOAD,           //1
        LOAD_FFT,       //2
        COMPUTE_FFT,    //3
        COMPUTE_FFT1,   //4
        pre_compute,    //5
        COMPUTE_FFT2,   //6
        UNLOAD_FFT,     //7
        FFT_CTRL,       //8
        FFT_comb0,      //9
        FFT_comb,       //10
        FFT_comb1,      //11
        comb_un,        //12
        COMPUTE_CONV,   //13
        COMPUTE_GEMM,   //14
        UNLOAD,         //15
    };


//call simple_mull function to allow for multiple functions 
//len_t is the lenght of the computational loop 
//for example for (outer_loop){for(len){Do_computation();}}
// f_cnt is the variable incrementing in each loop iteration
//valid represents the validity of the actuall result 
///<x>_i channels are streams of HWPE each having a custom interface on each own 


//Shift     Function
// 0         0 ---> ifft
// 0         1 ---> fft
// 1         0 ---> convolution 
// 1         1 ---> matrix mult
// 2         0 ---> complex mult

    void mul_pip(res_t a,res_t b,State ST,res_t *c){
         *c = a*b;  
    }
    ap_uint<3> rev3(ap_uint<3> j) { return (j[0], j[1], j[2]); }

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

    static res_t res_a[N]; //(changed from size  to N)
    #pragma HLS ARRAY_PARTITION variable=res_a complete dim=1
    static res_t res_b[N];
    #pragma HLS ARRAY_PARTITION variable=res_b complete dim=1
    static res_t buffer_a[Size];
    #pragma HLS ARRAY_PARTITION variable=buffer_a complete dim=1
    static res_t buffer_b[Size];
    #pragma HLS ARRAY_PARTITION variable=buffer_b complete dim=1
    static dat_t buffer_c[N];
    #pragma HLS ARRAY_PARTITION variable=buffer_c complete dim=1
    //wrong coeffs temporarily doubled 
   

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
    dat_t tmp_c;
    static dat_t tmp_re_x;
    static dat_t tmp_im_x;
    static dat_t tmp_re_y;
    static dat_t tmp_im_y; 
    static State state = IDLE;
    //Changed to dat_t pipa,pipb
    static dat_t pip_a;
    static dat_t pip_b;
    static bool store_c_valid;
    static int j_c; 

    // Multiplier accepts new value from `a_i` and `b_i` when `r_mult` is ready and both
    // `a_i` & `b_i` are valid, or when both `a_i` & `b_i` are invalid
    //Those ready mean ready to accept new input 

    c_shifted = (((ap_int<64>)c_i->data) << shift);

    //d_o->data = r_mult;
    a_i -> ready = !buffer_ok; //(store_result_ready & a_i->valid & b_i->valid) | (!a_i->valid & !b_i->valid); //... or if suddenly one becomes non valid
    b_i -> ready = !buffer_ok; //(store_result_ready & a_i->valid & b_i->valid) | (!a_i->valid & !b_i->valid);
    c_i -> ready = (shift == 2) && !buffer_ok;
    r_acc_ready  = d_o -> ready | !r_acc_valid;
   
    //k for now: 
    static int k;
    static dat_t t_re,t_im;
    static dat_t e_re,e_im,w_re,w_im;
    static res_t a1,b1,a2,b2;
    static res_t tr,ti;
    static res_t fft_prod1,fft_prod2;
    static dat_t fft_pip1,fft_pip2;
    switch(state){

        case IDLE:{
               store_result = 0;
                store_result_valid = 0;
                store_c_valid =0;
                j_c=0;

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
                fft_prod1 = 0;
                fft_prod2 = 0;
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
                //tmp_re = re_twiddles[0];
                half = 1;
                //start from N/2
                step = N>>1;
                //start 
                offset_start = 0;
                pip_a =0;
                pip_b = 0; 
                k = 0;
            if(start){
                if(shift==1){
                state = LOAD;}
                else{
                    state = LOAD_FFT;
                }  
            }
            break;}

        case LOAD:{
            buffer_ok = 0;
            store_result_valid =  a_i->valid && b_i->valid;
            store_c_valid = (shift ==2)?c_i->valid:1;
            if (store_result_valid&& store_c_valid){ //&& store_result_ready)){ //(a_i->valid)&&(b_i->valid)
                    tmp_a = a_i->data;
                    tmp_b = b_i->data;
                    tmp_c = (shift==2)?c_i->data:(ap_int<32>)0;
                    buffer_a[j_a++] = tmp_a;
                    buffer_b[j_b++] = tmp_b;
                    buffer_c[j_c++] = tmp_c;
                    
                    b_count++;}

                if(b_count>=(Size) && (shift ==1)){
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


         case LOAD_FFT:{
            buffer_ok = 0;
            store_result_valid =  a_i->valid && b_i->valid;
            store_c_valid = (shift ==2)?c_i->valid:1;
            if (store_result_valid&& store_c_valid){ //&& store_result_ready)){ //(a_i->valid)&&(b_i->valid)
                    tmp_a = a_i->data;
                    tmp_b = b_i->data;
                    tmp_c = (shift==2)?c_i->data:(ap_int<32>)0;
                    res_a[rev3(j_a)] = tmp_a;//
                    res_b[rev3(j_b)] = tmp_b;//
                    buffer_c[j_c++] = tmp_c;
                    j_a = j_a+1;
                    j_b = j_b+1;
                    
                    b_count++;}
             if((b_count>=N) && (shift ==0)){
                buffer_ok = 1;
                idx_1 = 0;
                idx_2 = 1;
                //some fft vs ifft things 
                if(function == 1){
                    shift_fft =0;
                    sign = 1;
                    //tmp_im = im_twiddles[0];

                    }
                else{
                    shift_fft =Nlog;
                    sign = 0;
                    //tmp_im = -im_twiddles[0];
                    }
                   
                    state = COMPUTE_FFT;}

                else if((shift ==2) && (function ==0)&&(b_count>=N)){
                    shift_fft =0;
                    sign = 1;
                    //tmp_im = im_twiddles[0];
                    buffer_ok =1;
                    state = COMPUTE_FFT;
                }
        
            break;}
                
         case COMPUTE_FFT:{
          
           
            buffer_a[idx_1] = res_a[idx_1]+ res_a[idx_2];
            buffer_a[idx_2] = res_a[idx_1]- res_a[idx_2]; 
            buffer_b[idx_1] = res_b[idx_1]+ res_b[idx_2];
            buffer_b[idx_2] = res_b[idx_1]- res_b[idx_2];
            idx_1+=2;
            idx_2+=2;
            

            if(idx_2>7){
                state = COMPUTE_FFT1;
                idx_1 =0;
                idx_2 =2;
                tr = buffer_a[2];   // W^0, so t = x[2] directly
                ti = buffer_b[2];
            }
            break;}
        
        case COMPUTE_FFT1:{
            res_a[idx_1] = buffer_a[idx_1] + tr;
            res_b[idx_1] = buffer_b[idx_1] + ti;
            res_a[idx_2] = buffer_a[idx_1] - tr;
            res_b[idx_2] = buffer_b[idx_1] - ti;

            idx_1 += (idx_1 & 1) ? 3 : 1;   // walks 0,1,4,5
            idx_2  = idx_1 + 2;
            
           

            if(idx_1<8){
            if((idx_1 & 1) == 0){        // W^0  -> t = x[idx_2]
                    tr =  buffer_a[idx_2];
                    ti =  buffer_b[idx_2];
                } else {                      // W^2 = -j  -> t = (imag, -real)
                    tr =  buffer_b[idx_2];
                    ti = -buffer_a[idx_2];
                }}

            if(idx_2>7){
               state = pre_compute;
               idx_1 = 0;
               idx_2 = 4;
               tr = res_a[4];
               ti = res_b[4];
               fft_pip1 = res_a[5]+res_b[5];
               fft_pip2 = res_b[5]-res_a[5];

            }

            break;
        }
        case pre_compute:{
            //static const dat_t C =23170;
            fft_prod1 = 23170*(fft_pip1);
            fft_prod2 = 23170*(fft_pip2);
            state = COMPUTE_FFT2;
            break;
        }
        case COMPUTE_FFT2:{
        r_acc_valid = 0;
   
        // ---- butterfly with the PRECOMPUTED tr, ti ----
        buffer_a[idx_1] = res_a[idx_1]+ tr;
        buffer_b[idx_1] = res_b[idx_1] + ti;
        buffer_a[idx_2] = res_a[idx_1] - tr;
        buffer_b[idx_2] = res_b[idx_1] - ti;

        idx_1 += 1;
        idx_2 += 1;

        // ---- precompute next tr, ti ----
        dat_t ar = res_a[idx_2];
        dat_t ai = res_b[idx_2];
        switch(idx_1){
            case 0:  tr = ar;                     ti = ai;                     break;  // W^0 = 1
            case 1:  tr = fft_prod1>>Q;          ti = fft_prod2>>Q;          break;  // W^1  
            case 2:  tr = ai;                     ti = -ar;                    break;  // W^2 = -j
            case 3:  tr = fft_prod1>>Q;          ti = fft_prod2>>Q;          break;  // W^3       break;  // W^3
            default: tr = 0;                      ti = 0;                      break;
                }
        if(idx_1 >= 4){
            state = UNLOAD_FFT;
        }
        
        if(idx_1==2){
            state = pre_compute;
        }
        fft_pip1 = (res_b[7] -res_a[7]);
        fft_pip2 = -(res_a[7]+res_b[7]);
        break;}

        case UNLOAD_FFT:{
            r_acc_valid =0;
            if(shift==0){
                if(i<N){
                r_acc = buffer_b[i];}
                else{
                    r_acc = buffer_a[i-N];
                }
                state = UNLOAD;}
                else if(shift ==2){
                    state = FFT_comb0;
                } 
            break;
        }
        
        case FFT_comb0:{
            //operands
            e_re = buffer_a[k];
            e_im = buffer_b[k];
            ap_int<32> cw = buffer_c[k];
            w_re = (ap_int<16>) cw.range(15, 0);
            w_im = (ap_int<16>) cw.range(31, 16);
            state = FFT_comb;
            break;
        }
        case FFT_comb:{


            // W * O   -- same complex multiply as fft()
       
            t_re = ((res_t)e_re*w_re - (res_t)e_im*w_im)>> Q;
            t_im = ((res_t)e_re*w_im + (res_t)e_im*w_re)>> Q;
            state = FFT_comb1;
           
            break;
        }

        case FFT_comb1:{ 
            buffer_a[k]   = t_re;
            buffer_b[k]   =  t_im;
            k++;   
            if (k == 8) {k = 0; state = comb_un; }
            else state = FFT_comb0;
            break;
             
        }

        case comb_un:{
              r_acc_valid = 0;
             if(i<N){
                r_acc = buffer_b[i];}
                else{
                    r_acc = buffer_a[i-N];
                }
                state = UNLOAD;
            break;
        }

          
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
                state = UNLOAD_FFT;}

                else if((shift ==1) && (function ==0)){
                    state = COMPUTE_CONV;
                }
                else if((shift ==1) && (function == 1)){
                    state = COMPUTE_GEMM;
                }
                else if(shift ==2){
                    state = comb_un;
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