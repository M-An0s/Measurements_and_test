/* 
 * mac_top.sv
 * Francesco Conti <fconti@iis.ee.ethz.ch>
 *
 * Copyright (C) 2018 ETH Zurich, University of Bologna
 * Copyright and related rights are licensed under the Solderpad Hardware
 * License, Version 0.51 (the "License"); you may not use this file except in
 * compliance with the License.  You may obtain a copy of the License at
 * http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
 * or agreed to in writing, software, hardware and materials distributed under
 * this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */

import mac_package::*;
import hwpe_ctrl_package::*;

module mac_top
#(
  parameter int unsigned N_CORES = 2,
  parameter int unsigned MP  = 4,
  parameter int unsigned ID  = 10
)
(
  // global signals
  input  logic                                  clk_i,
  input  logic                                  rst_ni,
  input  logic                                  test_mode_i,
  // events
  output logic [N_CORES-1:0][REGFILE_N_EVT-1:0] evt_o,
  // tcdm master ports
  hwpe_stream_intf_tcdm.master                  tcdm[MP-1:0],
  // periph slave port
  hwpe_ctrl_intf_periph.slave                   periph
);

  logic enable, clear;
  ctrl_streamer_t  streamer_ctrl;
  flags_streamer_t streamer_flags;
  ctrl_engine_t    engine_ctrl;
  flags_engine_t   engine_flags;


  logic[3:0] a_add; 
  logic        a_ce;    
  logic        a_we;    
  logic[63:0]  a_d;    
  logic[3:0]   b_add;  
  logic        b_ce;    
  logic        b_we;    
  logic[63:0]  b_d;    

  
  logic[2:0]  a_pe_add;
  logic       a_pe_ce; 
  logic[63:0] a_pe_q; 
  logic[2:0]  b_pe_add;
  logic       b_pe_ce;
  logic[63:0] b_pe_q;    
  logic[2:0]  c_pe_add;
  logic       c_pe_ce;
  logic       c_pe_we;
  logic[63:0] c_pe_d ;
  logic       start1;
  logic       done;

  logic[2:0] res_add;
  logic       res_c;
  logic[63:0] res_q;

  hwpe_stream_intf_stream #(
    .DATA_WIDTH(32)
  ) a (
    .clk ( clk_i )
  );
  hwpe_stream_intf_stream #(
    .DATA_WIDTH(32)
  ) b (
    .clk ( clk_i )
  );
  hwpe_stream_intf_stream #(
    .DATA_WIDTH(32)
  ) c (
    .clk ( clk_i )
  );
  hwpe_stream_intf_stream #(
    .DATA_WIDTH(32)
  ) d (
    .clk ( clk_i )
  );

  cont i_engine (
    .ap_clk           (clk_i),    
    .ap_rst           (rst_ni),          
    .a_i_valid        (a.valid),     
    .a_i_ready        (a.ready),  
    .a_i_data         (a.data ),  
    .a_i_strb         (a.strb),  
    .b_i_valid        (b.valid),  
    .b_i_ready        (b.ready),  
    .b_i_data         (b.data),  
    .b_i_strb         (b.strb),  
    .c_i_valid        (c.valid),  
    .c_i_ready        (c.ready),  
    .c_i_data         (c.data),  
    .c_i_strb         (c.strb),  
    .d_o_valid        (d.valid),  
    .d_o_ready        (d.ready),  
    .d_o_data         (d.data),  
    .d_o_strb         (d.strb),  
    .clear            (engine_ctrl.clear),  
    .enable           (engine_ctrl.enable),  
    .function_r       (engine_ctrl.simple_mul),  
    .start_r          (engine_ctrl.start),  
    .shift            (engine_ctrl.shift),  
    .len              (engine_ctrl.len),  
    .f_cnt            (engine_flags.cnt),  
    .f_valid	        (engine_flags.acc_valid)
  );    


  mac_streamer #(
    .MP ( MP )
  ) i_streamer (
    .clk_i            ( clk_i          ),
    .rst_ni           ( rst_ni         ),
    .test_mode_i      ( test_mode_i    ),
    .enable_i         ( enable         ),
    .clear_i          ( clear          ),
    .a_o              ( a.source       ),
    .b_o              ( b.source       ),
    .c_o              ( c.source       ),
    .d_i              ( d.sink         ),
    .tcdm             ( tcdm           ),
    .ctrl_i           ( streamer_ctrl  ),
    .flags_o          ( streamer_flags )
  );

  mac_ctrl #(
    .N_CORES   ( 2  ),
    .N_CONTEXT ( 2  ),
    .N_IO_REGS ( 16 ),
    .ID ( ID )
  ) i_ctrl (
    .clk_i            ( clk_i          ),
    .rst_ni           ( rst_ni         ),
    .test_mode_i      ( test_mode_i    ),
    .evt_o            ( evt_o          ),
    .clear_o          ( clear          ),
    .ctrl_streamer_o  ( streamer_ctrl  ),
    .flags_streamer_i ( streamer_flags ),
    .ctrl_engine_o    ( engine_ctrl    ),
    .flags_engine_i   ( engine_flags   ),
    .periph           ( periph         )
  );

  assign enable = 1'b1;

endmodule // mac_top
