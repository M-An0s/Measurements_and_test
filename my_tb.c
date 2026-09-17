#include <stdint.h>
#include "archi_hwpe.h"
#include "hal_hwpe.h"
#include "tinyprintf.h"

#include "inc/hwpe_stimuli_a.h"
#include "inc/hwpe_stimuli_b.h"
#include "inc/hwpe_stimuli_c.h"
#include "inc/hwpe_stimuli_d.h"
#include "inc/results.h"

#define N 16
#define T 4
#define LEN T*T-1
#define Size_T T*T
#define safe_off 128
#define tile_it (N^2/T^2)

#define word 4

void call_hwpe(int tile,int itr){
  uint8_t *a = stim_a;
  uint8_t *b = stim_b;
  uint8_t *c = stim_c;
  uint8_t *d = stim_d;
  int offload_id_tmp, offload_id;
  int offset =word*tile*itr*Size_T;
   hwpe_soft_clear();
    hwpe_bytecode_set(HWPE_LOOPS1_OFFS,           0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE5_LOOPS0_OFFS, 0x00040000);
  hwpe_bytecode_set(HWPE_BYTECODE4_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE3_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE2_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE1_OFFS,        0x000008cd);
  hwpe_bytecode_set(HWPE_BYTECODE0_OFFS,        0x11a12c05);
  while((offload_id_tmp = hwpe_acquire_job()) < 0);
   hwpe_a_addr_set((unsigned int) a+offset);
  hwpe_b_addr_set((unsigned int) b+offset);
  hwpe_c_addr_set((unsigned int) c);
  hwpe_d_addr_set((unsigned int) d+offset); //+4*16
  hwpe_nb_iter_set(itr);
  hwpe_len_iter_set(LEN);
  hwpe_vectstride_set(word*Size_T); //4bytes/word * word_cnt
  hwpe_shift_simplemul_set(hwpe_shift_simplemul_value(1, 1));
  hwpe_trigger_job();

}
void tilling_loop(int lower,int upper){
   uint8_t *d = stim_d;
  for(int j=lower;j<upper;j++){  //tile_it => N^2/T^2 for 16,4 => 16
    int base = j * 4 * Size_T;
    int base_r = j*Size_T;
    for (int i = 0; i <Size_T; i++) {
     ((uint32_t *)d)[base_r+i]   = ((uint32_t *)d)[base+i]+
          ((uint32_t *)d)[base+i + Size_T] +
          ((uint32_t *)d)[base+ i + 2*Size_T] +
          ((uint32_t *)d)[base + i + 3*Size_T];}
  }
}
int main() {
  int res_matrix[64];
  uint8_t *a = stim_a;
  uint8_t *b = stim_b;
  uint8_t *c = stim_c;
  uint8_t *d = stim_d;


  volatile int errors = 0;
  int gold_sum = 0, check_sum = 0;
  int i,j;
  
  int offload_id_tmp, offload_id;
  int tile=0;
  /* convolution-accumulation - HW */
  // enable hwpe
  hwpe_cg_enable();
  while((offload_id_tmp = hwpe_acquire_job()) < 0);

  // set up bytecode
  hwpe_bytecode_set(HWPE_LOOPS1_OFFS,           0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE5_LOOPS0_OFFS, 0x00040000);
  hwpe_bytecode_set(HWPE_BYTECODE4_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE3_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE2_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE1_OFFS,        0x000008cd);
  hwpe_bytecode_set(HWPE_BYTECODE0_OFFS,        0x11a12c05);
  

  
   hwpe_a_addr_set((unsigned int) a);
  hwpe_b_addr_set((unsigned int) b);
  hwpe_c_addr_set((unsigned int) c);
  hwpe_d_addr_set((unsigned int) d); //+4*16
  hwpe_nb_iter_set(4); //ITR NUMBER FOR ONE TILE
  hwpe_len_iter_set(LEN);
  hwpe_vectstride_set(word*Size_T); //4bytes/word * word_cnt
  hwpe_shift_simplemul_set(hwpe_shift_simplemul_value(1, 1));
  hwpe_trigger_job();
  asm volatile ("wfi" ::: "memory");
  tile ++;


  //FOR COMPUTING ALL THE TILES CALL: 
  // tilling_loop(0,tile_it);


  while(tile<tile_it){
     call_hwpe(tile,4);//4 IS ITR NUMBER FOR 1 TILE
  
    tilling_loop((tile-1),tile);
    asm volatile ("wfi" ::: "memory");
    tile++;
  }
  tilling_loop((tile-1),tile);
  
  
 
 
  hwpe_cg_disable();
  //NAIVE LOOP
  /*
 for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
        uint32_t sum = 0;

        for (int k = 0; k < N; k++) {
            sum += ((uint32_t *)a)[i * N + k] *
                   ((uint32_t *)b)[k * N + j];
        }

        ((uint32_t *)d)[i * N + j] = sum;
      }
  } */

  //FIRST CHECK CORRECTNESS THEN COMMENT OUT TO CHECK CYCLES
    
  
  for(int i=0; i<N*N; i++){
   // if(((uint32_t *) d)[i] != expected[i] )errors++;
   if(((uint32_t *)d)[i] != expected[i] )errors++;
  }
  *(int *) 0x80000000 = errors;
  return errors;
}