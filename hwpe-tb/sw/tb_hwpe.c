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

#define N 8
#define T 4
#define Size_T T*T
#define safe_off 128

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
  int i_tile,j_tile,tile_starting_pos;
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
  hwpe_nb_iter_set(2);
  hwpe_len_iter_set(15);
  hwpe_vectstride_set(4*16); //4bytes/word * word_cnt
  hwpe_shift_simplemul_set(hwpe_shift_simplemul_value(1, 1));
  hwpe_trigger_job();
  asm volatile ("wfi" ::: "memory");
  //NO OVERLAP:
  /*
   for(i=0;i<16;i++){
   ((uint32_t *)d)[i] =  ((uint32_t *) d)[i]+((uint32_t *) d)[i+16];
  }

   for(i=0;i<16;i++){
   ((uint32_t *)d)[i+16] =  ((uint32_t *) d)[i+32]+((uint32_t *) d)[i+16+32];
  }
  for(i=0;i<16;i++){
   ((uint32_t *)d)[i+32] =  ((uint32_t *) d)[i+64]+((uint32_t *) d)[i+16+64];
  }
  for(i=0;i<16;i++){
   ((uint32_t *)d)[i+48] =  ((uint32_t *) d)[i+96]+((uint32_t *) d)[i+16+96];}
  */
  //OVERLAPED
  
 hwpe_soft_clear();
    hwpe_bytecode_set(HWPE_LOOPS1_OFFS,           0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE5_LOOPS0_OFFS, 0x00040000);
  hwpe_bytecode_set(HWPE_BYTECODE4_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE3_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE2_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE1_OFFS,        0x000008cd);
  hwpe_bytecode_set(HWPE_BYTECODE0_OFFS,        0x11a12c05);
  while((offload_id_tmp = hwpe_acquire_job()) < 0);
   hwpe_a_addr_set((unsigned int) a+4*32);
  hwpe_b_addr_set((unsigned int) b+4*32);
  hwpe_c_addr_set((unsigned int) c);
  hwpe_d_addr_set((unsigned int) d+4*32); //+4*16
  hwpe_nb_iter_set(2);
  hwpe_len_iter_set(15);
  hwpe_vectstride_set(4*16); //4bytes/word * word_cnt
  hwpe_shift_simplemul_set(hwpe_shift_simplemul_value(1, 1));
  hwpe_trigger_job();
   for(i=0;i<16;i++){
   ((uint32_t *)d)[i] =  ((uint32_t *) d)[i]+((uint32_t *) d)[i+16];
  }
  asm volatile ("wfi" ::: "memory");
 
  hwpe_soft_clear();
    hwpe_bytecode_set(HWPE_LOOPS1_OFFS,           0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE5_LOOPS0_OFFS, 0x00040000);
  hwpe_bytecode_set(HWPE_BYTECODE4_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE3_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE2_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE1_OFFS,        0x000008cd);
  hwpe_bytecode_set(HWPE_BYTECODE0_OFFS,        0x11a12c05);
  while((offload_id_tmp = hwpe_acquire_job()) < 0);
   hwpe_a_addr_set((unsigned int) a+4*64);
  hwpe_b_addr_set((unsigned int) b+4*64);
  hwpe_c_addr_set((unsigned int) c);
  hwpe_d_addr_set((unsigned int) d+4*64); //+4*16
  hwpe_nb_iter_set(2);
  hwpe_len_iter_set(15);
  hwpe_vectstride_set(4*16); //4bytes/word * word_cnt
  hwpe_shift_simplemul_set(hwpe_shift_simplemul_value(1, 1));
  hwpe_trigger_job();
  for(i=0;i<16;i++){
   ((uint32_t *)d)[i+16] =  ((uint32_t *) d)[i+32]+((uint32_t *) d)[i+16+32];
  }
  asm volatile ("wfi" ::: "memory");

   hwpe_soft_clear();
    hwpe_bytecode_set(HWPE_LOOPS1_OFFS,           0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE5_LOOPS0_OFFS, 0x00040000);
  hwpe_bytecode_set(HWPE_BYTECODE4_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE3_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE2_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE1_OFFS,        0x000008cd);
  hwpe_bytecode_set(HWPE_BYTECODE0_OFFS,        0x11a12c05);
  while((offload_id_tmp = hwpe_acquire_job()) < 0);
   hwpe_a_addr_set((unsigned int) a+4*96);
  hwpe_b_addr_set((unsigned int) b+4*96);
  hwpe_c_addr_set((unsigned int) c);
  hwpe_d_addr_set((unsigned int) d+4*96); //+4*16
  hwpe_nb_iter_set(2);
  hwpe_len_iter_set(15);
  hwpe_vectstride_set(4*16); //4bytes/word * word_cnt
  hwpe_shift_simplemul_set(hwpe_shift_simplemul_value(1, 1));
  hwpe_trigger_job();
    for(i=0;i<16;i++){
   ((uint32_t *)d)[i+32] =  ((uint32_t *) d)[i+64]+((uint32_t *) d)[i+16+64];
  }
  asm volatile ("wfi" ::: "memory");
  
  
  for(i=0;i<16;i++){
   ((uint32_t *)d)[i+48] =  ((uint32_t *) d)[i+96]+((uint32_t *) d)[i+16+96];
  } 

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