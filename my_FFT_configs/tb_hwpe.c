/*
 * Copyright (C) 2019 ETH Zurich and University of Bologna
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* 
 * Authors:  Francesco Conti <fconti@iis.ee.ethz.ch>
 */

#include <stdint.h>
#include "archi_hwpe.h"
#include "hal_hwpe.h"
#include "tinyprintf.h"

#include "inc/hwpe_stimuli_a.h"
#include "inc/hwpe_stimuli_b.h"
#include "inc/hwpe_stimuli_c.h"
#include "inc/hwpe_stimuli_d.h"
#include "inc/results.h"

#define N 32
#define T 8
#define LEN T*T-1
#define Size_T T*T
#define safe_off 128
#define tile_it 16//(N^2/T^2)

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
    int base = j * 4* Size_T;
    int base_r = j*Size_T;
    for (int i = 0; i <Size_T; i++) {
     ((uint32_t *)d)[base_r+i]   = ((uint32_t *)d)[base+i]+
          ((uint32_t *)d)[base+i + Size_T] +
          ((uint32_t *)d)[base+ i + 2*Size_T] +
          ((uint32_t *)d)[base + i + 3*Size_T];
        
        }
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
  // tilling_loop(0,16);

  
  while(tile<16){
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
    
  /*
  for(int i=0; i<N*N; i++){
   // if(((uint32_t *) d)[i] != expected[i] )errors++;
   if(((uint32_t *)d)[i] != expected[i] )errors++;
  }*/
  *(int *) 0x80000000 = errors;
  return errors;
}


  //OLD TILES BEFORE THE LOOP
   /* for(i=0;i<64;i++){
   ((uint32_t *)d)[i+64] =  ((uint32_t *) d)[i+128]+((uint32_t *) d)[i+64+128];
  }
  for(i=0;i<64;i++){
   ((uint32_t *)d)[i+128] =  ((uint32_t *) d)[i+256]+((uint32_t *) d)[i+64+256];
  }
  for(i=0;i<64;i++){
   ((uint32_t *)d)[i+192] =  ((uint32_t *) d)[i+384]+((uint32_t *) d)[i+64+384];}*/
   //call tile sequence for the 8x8s
   /*

  call_hwpe(tile,2);
  for(i=0;i<64;i++){
   ((uint32_t *)d)[i] =  ((uint32_t *) d)[i]+((uint32_t *) d)[i+64];
  }
  asm volatile ("wfi" ::: "memory");
  tile ++;
  call_hwpe(tile,2);
    for(i=0;i<64;i++){
   ((uint32_t *)d)[i+64] =  ((uint32_t *) d)[i+128]+((uint32_t *) d)[i+64+128];
  }
  asm volatile ("wfi" ::: "memory");
   tile ++;
  call_hwpe(tile,2);
  for(i=0;i<64;i++){
   ((uint32_t *)d)[i+128] =  ((uint32_t *) d)[i+256]+((uint32_t *) d)[i+64+256];
  }
  asm volatile ("wfi" ::: "memory");
  for(i=0;i<64;i++){
   ((uint32_t *)d)[i+192] =  ((uint32_t *) d)[i+384]+((uint32_t *) d)[i+64+384];}*/
    
  // OLD TESTS
  /*
  if(((uint32_t *) d)[0] !=0x00000047) errors++;
  if(((uint32_t *) d)[1] !=0x0000004E) errors++;
  if(((uint32_t *) d)[2] !=0x00000051) errors++;
  if(((uint32_t *) d)[3] !=0x00000050) errors++;
  if(((uint32_t *) d)[4] !=0x0000005C) errors++;
  if(((uint32_t *) d)[5] !=0x00000064) errors++;
  if(((uint32_t *) d)[6] !=0x00000068) errors++;
  if(((uint32_t *) d)[7] !=0x00000068) errors++;
  if(((uint32_t *) d)[8] !=0x00000071) errors++;
  if(((uint32_t *) d)[9] !=0x0000007A) errors++;
  if(((uint32_t *) d)[10] !=0x0000007F) errors++;
  if(((uint32_t *) d)[11] !=0x00000080) errors++;
  if(((uint32_t *) d)[12] !=0x00000086) errors++;
  if(((uint32_t *) d)[13] !=0x00000090) errors++;
  if(((uint32_t *) d)[14] !=0x00000096) errors++;
  if(((uint32_t *) d)[15] !=0x00000098) errors++;


  if(((uint32_t *) d)[20] !=0x00000047) errors++;
  if(((uint32_t *) d)[21] !=0x0000004E) errors++;
  if(((uint32_t *) d)[22] !=0x00000051) errors++;
  if(((uint32_t *) d)[23] !=0x00000050) errors++;
  if(((uint32_t *) d)[24] !=0x0000005C) errors++;
  if(((uint32_t *) d)[25] !=0x00000064) errors++;
  if(((uint32_t *) d)[26] !=0x00000068) errors++;
  if(((uint32_t *) d)[27] !=0x00000068) errors++;
  if(((uint32_t *) d)[28] !=0x00000071) errors++;
  if(((uint32_t *) d)[29] !=0x0000007A) errors++;
  if(((uint32_t *) d)[30] !=0x0000007F) errors++;
  if(((uint32_t *) d)[31] !=0x00000080) errors++;
  if(((uint32_t *) d)[32] !=0x00000086) errors++;
  if(((uint32_t *) d)[33] !=0x00000090) errors++;
  if(((uint32_t *) d)[34] !=0x00000096) errors++;
  if(((uint32_t *) d)[35] !=0x00000098) errors++;*/

  //CONVOLUTION TEST
   /*
  if(((uint32_t *) d)[0] !=0x00000001) errors++;
  if(((uint32_t *) d)[1] !=0x00000004) errors++;
  if(((uint32_t *) d)[2] !=0x0000000a) errors++;
  if(((uint32_t *) d)[3] !=0x00000014) errors++;
  if(((uint32_t *) d)[4] !=0x00000023) errors++;
  if(((uint32_t *) d)[5] !=0x00000030) errors++;
 
  if(((uint32_t *) d)[6] !=0x0000003C) errors++;
  if(((uint32_t *) d)[7] !=0x00000048) errors++;
  if(((uint32_t *) d)[8] !=0x00000055) errors++;
  if(((uint32_t *) d)[9] !=0x00000064) errors++;
  if(((uint32_t *) d)[10] !=0x0000007E) errors++;
  if(((uint32_t *) d)[11] !=0x00000094) errors++;
  if(((uint32_t *) d)[12] !=0x000000A7) errors++;
  if(((uint32_t *) d)[13] !=0x000000B8) errors++;
  if(((uint32_t *) d)[14] !=0x000000C8) errors++;
  if(((uint32_t *) d)[15] !=0x000000F0) errors++;
  if(((uint32_t *) d)[16] !=0x00000111) errors++;
  if(((uint32_t *) d)[17] !=0x0000012C) errors++;
  if(((uint32_t *) d)[18] !=0x00000142) errors++;
  if(((uint32_t *) d)[19] !=0x00000154) errors++;
   
  if(((uint32_t *) d)[20] !=0x00000181) errors++;
  if(((uint32_t *) d)[21] !=0x00000198) errors++;
  if(((uint32_t *) d)[22] !=0x00000198) errors++;
  if(((uint32_t *) d)[23] !=0x00000180) errors++;
  if(((uint32_t *) d)[24] !=0x0000014F) errors++;
  if(((uint32_t *) d)[25] !=0x0000016C) errors++;
  if(((uint32_t *) d)[26] !=0x00000176) errors++;
  if(((uint32_t *) d)[27] !=0x0000016C) errors++;
  if(((uint32_t *) d)[28] !=0x0000014D) errors++;
  if(((uint32_t *) d)[29] !=0x00000118) errors++;
  if(((uint32_t *) d)[30] !=0x00000124) errors++;
  if(((uint32_t *) d)[31] !=0x00000120) errors++;
  if(((uint32_t *) d)[32] !=0x0000010B) errors++;
  if(((uint32_t *) d)[33] !=0x000000E4) errors++;
  if(((uint32_t *) d)[34] !=0x000000AA) errors++;
  if(((uint32_t *) d)[35] !=0x000000A4) errors++;
  if(((uint32_t *) d)[36] !=0x00000091) errors++;
  if(((uint32_t *) d)[37] !=0x00000070) errors++;
  if(((uint32_t *) d)[38] !=0x00000040) errors++;*/