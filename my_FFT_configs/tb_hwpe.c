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

static const int BR8[8] = {0, 4, 2, 6, 1, 5, 3, 7};
#include <stdint.h>
#include "archi_hwpe.h"
#include "hal_hwpe.h"
#include "tinyprintf.h"

#include "inc/hwpe_stimuli_a.h"
#include "inc/hwpe_stimuli_b.h"
#include "inc/hwpe_stimuli_c.h"
#include "inc/hwpe_stimuli_d.h"
#include "inc/results.h"
#include "inc/i_buf.h"
#define word 4

int main() {

  uint8_t *a = stim_a;
  uint8_t *b = stim_b;
  uint8_t *c = stim_c;
  uint8_t *d = stim_d;
  uint8_t *buff = stim_buff;

  volatile int errors = 0;
  int gold_sum = 0, check_sum = 0;
  int i,j;
  
  int offload_id_tmp, offload_id;

  /* REORDER BEFORE (you avoid this with strides) */
  //use buff to not initialize new memory
  /*
  for (uint32_t r = 0; r < 8; r++)
    for (uint32_t m = 0; m < 8; m++)
        ((uint32_t *)a)[8*r + m] = ((uint32_t *)buff)[8*BR8[m]  + r];//[8*m + r]
  */
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
  hwpe_nb_iter_set(8); //ITR NUMBER FOR ONE TILE
  hwpe_len_iter_set(15);
  hwpe_vectstride_set(word); //4bytes/word * word_cnt
  hwpe_vectstride2_set(word*16);
  hwpe_stride(32);
  hwpe_shift_simplemul_set(hwpe_shift_simplemul_value(2,0));
  hwpe_trigger_job();
  asm volatile ("wfi" ::: "memory");
  /*
  for (int k = 0; k < 8; k++) {
    for (int j = 0; j < 8; j++) {
        ((uint32_t *)a)[8*k + j] = ((uint32_t *)d)[16*BR8[j] + 8 + k];   // real
        ((uint32_t *)b)[8*k + j] = ((uint32_t *)d)[16*BR8[j] + k];       // imag
    }
}*/
  
   hwpe_soft_clear();
    while((offload_id_tmp = hwpe_acquire_job()) < 0);
  // set up bytecode
  hwpe_bytecode_set(HWPE_LOOPS1_OFFS,           0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE5_LOOPS0_OFFS, 0x00040000);
  hwpe_bytecode_set(HWPE_BYTECODE4_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE3_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE2_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE1_OFFS,        0x000008cd);
  hwpe_bytecode_set(HWPE_BYTECODE0_OFFS,        0x11a12c05);
  

  //d+8*word
  // d
  //buff
  hwpe_a_addr_set((unsigned int) d+8*word);
  hwpe_b_addr_set((unsigned int) d);
  hwpe_c_addr_set((unsigned int) c);
  hwpe_d_addr_set((unsigned int) buff); //+4*16
  hwpe_nb_iter_set(8); //ITR NUMBER FOR ONE TILE
  hwpe_len_iter_set(15);
  hwpe_vectstride_set(word); //4bytes/word * word_cnt
  hwpe_vectstride2_set(word*16);
  hwpe_stride(64);
  hwpe_shift_simplemul_set(hwpe_shift_simplemul_value(0,1));
  hwpe_trigger_job();
  asm volatile ("wfi" ::: "memory");
   hwpe_cg_disable();
  
  
  
  for(int i=0; i<128; i++){
   if(((uint32_t *)buff)[i] != expected[i] ) errors++;
  }



  *(int *) 0x80000000 = errors;
  return errors;
}