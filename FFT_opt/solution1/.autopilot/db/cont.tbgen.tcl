set moduleName cont
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {cont}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_i_valid int 1 regular {pointer 0}  }
	{ a_i_ready int 1 regular {pointer 1}  }
	{ a_i_data int 32 regular {pointer 0}  }
	{ a_i_strb int 4 unused {pointer 0}  }
	{ b_i_valid int 1 regular {pointer 0}  }
	{ b_i_ready int 1 regular {pointer 1}  }
	{ b_i_data int 32 regular {pointer 0}  }
	{ b_i_strb int 4 unused {pointer 0}  }
	{ c_i_valid int 1 regular {pointer 0}  }
	{ c_i_ready int 1 regular {pointer 1}  }
	{ c_i_data int 32 regular {pointer 0}  }
	{ c_i_strb int 4 unused {pointer 0}  }
	{ d_o_valid int 1 regular {pointer 1}  }
	{ d_o_ready int 1 regular {pointer 0}  }
	{ d_o_data int 32 regular {pointer 1}  }
	{ d_o_strb int 4 regular {pointer 1}  }
	{ clear uint 1 unused  }
	{ enable uint 1 regular  }
	{ function_r uint 1 regular  }
	{ start_r uint 1 regular  }
	{ shift int 5 regular  }
	{ len int 11 regular  }
	{ f_cnt int 11 regular {pointer 1}  }
	{ f_valid int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "a_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_data", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clear", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "enable", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "function_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "start_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "shift", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "len", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "f_cnt", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "f_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ a_i_valid sc_in sc_logic 1 signal 0 } 
	{ a_i_ready sc_out sc_logic 1 signal 1 } 
	{ a_i_data sc_in sc_lv 32 signal 2 } 
	{ a_i_strb sc_in sc_lv 4 signal 3 } 
	{ b_i_valid sc_in sc_logic 1 signal 4 } 
	{ b_i_ready sc_out sc_logic 1 signal 5 } 
	{ b_i_data sc_in sc_lv 32 signal 6 } 
	{ b_i_strb sc_in sc_lv 4 signal 7 } 
	{ c_i_valid sc_in sc_logic 1 signal 8 } 
	{ c_i_ready sc_out sc_logic 1 signal 9 } 
	{ c_i_data sc_in sc_lv 32 signal 10 } 
	{ c_i_strb sc_in sc_lv 4 signal 11 } 
	{ d_o_valid sc_out sc_logic 1 signal 12 } 
	{ d_o_ready sc_in sc_logic 1 signal 13 } 
	{ d_o_data sc_out sc_lv 32 signal 14 } 
	{ d_o_strb sc_out sc_lv 4 signal 15 } 
	{ clear sc_in sc_logic 1 signal 16 } 
	{ enable sc_in sc_logic 1 signal 17 } 
	{ function_r sc_in sc_logic 1 signal 18 } 
	{ start_r sc_in sc_logic 1 signal 19 } 
	{ shift sc_in sc_lv 5 signal 20 } 
	{ len sc_in sc_lv 11 signal 21 } 
	{ f_cnt sc_out sc_lv 11 signal 22 } 
	{ f_cnt_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ f_valid sc_out sc_logic 1 signal 23 } 
	{ f_valid_ap_vld sc_out sc_logic 1 outvld 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "a_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i_valid", "role": "default" }} , 
 	{ "name": "a_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i_ready", "role": "default" }} , 
 	{ "name": "a_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_i_data", "role": "default" }} , 
 	{ "name": "a_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_i_strb", "role": "default" }} , 
 	{ "name": "b_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_i_valid", "role": "default" }} , 
 	{ "name": "b_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_i_ready", "role": "default" }} , 
 	{ "name": "b_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_i_data", "role": "default" }} , 
 	{ "name": "b_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_i_strb", "role": "default" }} , 
 	{ "name": "c_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_i_valid", "role": "default" }} , 
 	{ "name": "c_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_i_ready", "role": "default" }} , 
 	{ "name": "c_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_i_data", "role": "default" }} , 
 	{ "name": "c_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_i_strb", "role": "default" }} , 
 	{ "name": "d_o_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_valid", "role": "default" }} , 
 	{ "name": "d_o_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_ready", "role": "default" }} , 
 	{ "name": "d_o_data", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_o_data", "role": "default" }} , 
 	{ "name": "d_o_strb", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "d_o_strb", "role": "default" }} , 
 	{ "name": "clear", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clear", "role": "default" }} , 
 	{ "name": "enable", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enable", "role": "default" }} , 
 	{ "name": "function_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "function_r", "role": "default" }} , 
 	{ "name": "start_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_r", "role": "default" }} , 
 	{ "name": "shift", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "shift", "role": "default" }} , 
 	{ "name": "len", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "len", "role": "default" }} , 
 	{ "name": "f_cnt", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "f_cnt", "role": "default" }} , 
 	{ "name": "f_cnt_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_cnt", "role": "ap_vld" }} , 
 	{ "name": "f_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_valid", "role": "default" }} , 
 	{ "name": "f_valid_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_valid", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "cont",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "a_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "b_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "c_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_valid", "Type" : "None", "Direction" : "O"},
			{"Name" : "d_o_ready", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_data", "Type" : "None", "Direction" : "O"},
			{"Name" : "d_o_strb", "Type" : "None", "Direction" : "O"},
			{"Name" : "clear", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "function_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_cnt", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "f_valid", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buffer_ok", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_acc_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_c", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_a", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_b", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_cnt_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_prod1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_prod2_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "idx_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "offset_j", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "k", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_mulmulmulmulhs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ti_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prod_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "store_result_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_acc_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "offset_start", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pip_a_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pip_b_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_pip1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_pip2_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "e_re_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "e_im_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w_re_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w_im_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_re_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_im_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "store_result_ready", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_32s_47_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_32s_47_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_32s_47_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_47_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_64_1_1_U30", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cont {
		a_i_valid {Type I LastRead 0 FirstWrite -1}
		a_i_ready {Type O LastRead -1 FirstWrite 0}
		a_i_data {Type I LastRead 0 FirstWrite -1}
		a_i_strb {Type I LastRead -1 FirstWrite -1}
		b_i_valid {Type I LastRead 0 FirstWrite -1}
		b_i_ready {Type O LastRead -1 FirstWrite 0}
		b_i_data {Type I LastRead 0 FirstWrite -1}
		b_i_strb {Type I LastRead -1 FirstWrite -1}
		c_i_valid {Type I LastRead 0 FirstWrite -1}
		c_i_ready {Type O LastRead -1 FirstWrite 0}
		c_i_data {Type I LastRead 0 FirstWrite -1}
		c_i_strb {Type I LastRead -1 FirstWrite -1}
		d_o_valid {Type O LastRead -1 FirstWrite 0}
		d_o_ready {Type I LastRead 0 FirstWrite -1}
		d_o_data {Type O LastRead -1 FirstWrite 0}
		d_o_strb {Type O LastRead -1 FirstWrite 0}
		clear {Type I LastRead -1 FirstWrite -1}
		enable {Type I LastRead 0 FirstWrite -1}
		function_r {Type I LastRead 0 FirstWrite -1}
		start_r {Type I LastRead 0 FirstWrite -1}
		shift {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		f_cnt {Type O LastRead -1 FirstWrite 0}
		f_valid {Type O LastRead -1 FirstWrite 0}
		buffer_ok {Type IO LastRead -1 FirstWrite -1}
		r_acc_valid {Type IO LastRead -1 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		j_c {Type IO LastRead -1 FirstWrite -1}
		j_a {Type IO LastRead -1 FirstWrite -1}
		j_b {Type IO LastRead -1 FirstWrite -1}
		b_count_V {Type IO LastRead -1 FirstWrite -1}
		r_cnt_V {Type IO LastRead -1 FirstWrite -1}
		i {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type IO LastRead -1 FirstWrite -1}
		fft_prod1_V {Type IO LastRead -1 FirstWrite -1}
		fft_prod2_V {Type IO LastRead -1 FirstWrite -1}
		s_idx {Type IO LastRead -1 FirstWrite -1}
		idx_1 {Type IO LastRead -1 FirstWrite -1}
		idx_2 {Type IO LastRead -1 FirstWrite -1}
		offset_j {Type IO LastRead -1 FirstWrite -1}
		k {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_49 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_48 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_47 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_46 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_45 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_44 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_43 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_42 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_41 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_39 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_38 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_37 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_36 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_35 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_34 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_33 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_32 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_31 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_19 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_18 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_17 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_16 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_14 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_13 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_12 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_9 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_8 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_7 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_6 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_5 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_4 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_3 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_2 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_11 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_a_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_1 {Type IO LastRead -1 FirstWrite -1}
		cont_mulmulmulmulhs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE5res_b_15 {Type IO LastRead -1 FirstWrite -1}
		tr_V {Type IO LastRead -1 FirstWrite -1}
		ti_V {Type IO LastRead -1 FirstWrite -1}
		prod_V {Type IO LastRead -1 FirstWrite -1}
		store_result_valid {Type IO LastRead -1 FirstWrite -1}
		r_acc_V {Type IO LastRead -1 FirstWrite -1}
		offset_start {Type IO LastRead -1 FirstWrite -1}
		pip_a_V {Type IO LastRead -1 FirstWrite -1}
		pip_b_V {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_29 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_28 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_27 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_26 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_25 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_24 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_23 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_22 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_21 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_c_15 {Type IO LastRead -1 FirstWrite -1}
		fft_pip1_V {Type IO LastRead -1 FirstWrite -1}
		fft_pip2_V {Type IO LastRead -1 FirstWrite -1}
		e_re_V {Type IO LastRead -1 FirstWrite -1}
		e_im_V {Type IO LastRead -1 FirstWrite -1}
		w_re_V {Type IO LastRead -1 FirstWrite -1}
		w_im_V {Type IO LastRead -1 FirstWrite -1}
		t_re_V {Type IO LastRead -1 FirstWrite -1}
		t_im_V {Type IO LastRead -1 FirstWrite -1}
		store_result_ready {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_i_valid { ap_none {  { a_i_valid in_data 0 1 } } }
	a_i_ready { ap_none {  { a_i_ready out_data 1 1 } } }
	a_i_data { ap_none {  { a_i_data in_data 0 32 } } }
	a_i_strb { ap_none {  { a_i_strb in_data 0 4 } } }
	b_i_valid { ap_none {  { b_i_valid in_data 0 1 } } }
	b_i_ready { ap_none {  { b_i_ready out_data 1 1 } } }
	b_i_data { ap_none {  { b_i_data in_data 0 32 } } }
	b_i_strb { ap_none {  { b_i_strb in_data 0 4 } } }
	c_i_valid { ap_none {  { c_i_valid in_data 0 1 } } }
	c_i_ready { ap_none {  { c_i_ready out_data 1 1 } } }
	c_i_data { ap_none {  { c_i_data in_data 0 32 } } }
	c_i_strb { ap_none {  { c_i_strb in_data 0 4 } } }
	d_o_valid { ap_none {  { d_o_valid out_data 1 1 } } }
	d_o_ready { ap_none {  { d_o_ready in_data 0 1 } } }
	d_o_data { ap_none {  { d_o_data out_data 1 32 } } }
	d_o_strb { ap_none {  { d_o_strb out_data 1 4 } } }
	clear { ap_none {  { clear in_data 0 1 } } }
	enable { ap_none {  { enable in_data 0 1 } } }
	function_r { ap_none {  { function_r in_data 0 1 } } }
	start_r { ap_none {  { start_r in_data 0 1 } } }
	shift { ap_none {  { shift in_data 0 5 } } }
	len { ap_none {  { len in_data 0 11 } } }
	f_cnt { ap_vld {  { f_cnt out_data 1 11 }  { f_cnt_ap_vld out_vld 1 1 } } }
	f_valid { ap_vld {  { f_valid out_data 1 1 }  { f_valid_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName cont
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {cont}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_i_valid int 1 regular {pointer 0}  }
	{ a_i_ready int 1 regular {pointer 1}  }
	{ a_i_data int 32 regular {pointer 0}  }
	{ a_i_strb int 4 unused {pointer 0}  }
	{ b_i_valid int 1 regular {pointer 0}  }
	{ b_i_ready int 1 regular {pointer 1}  }
	{ b_i_data int 32 regular {pointer 0}  }
	{ b_i_strb int 4 unused {pointer 0}  }
	{ c_i_valid int 1 regular {pointer 0}  }
	{ c_i_ready int 1 regular {pointer 1}  }
	{ c_i_data int 32 regular {pointer 0}  }
	{ c_i_strb int 4 unused {pointer 0}  }
	{ d_o_valid int 1 regular {pointer 1}  }
	{ d_o_ready int 1 regular {pointer 0}  }
	{ d_o_data int 32 regular {pointer 1}  }
	{ d_o_strb int 4 regular {pointer 1}  }
	{ clear uint 1 unused  }
	{ enable uint 1 regular  }
	{ function_r uint 1 regular  }
	{ start_r uint 1 regular  }
	{ shift int 5 regular  }
	{ len int 11 regular  }
	{ f_cnt int 11 regular {pointer 1}  }
	{ f_valid int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "a_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_data", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clear", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "enable", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "function_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "start_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "shift", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "len", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "f_cnt", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "f_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ a_i_valid sc_in sc_logic 1 signal 0 } 
	{ a_i_ready sc_out sc_logic 1 signal 1 } 
	{ a_i_data sc_in sc_lv 32 signal 2 } 
	{ a_i_strb sc_in sc_lv 4 signal 3 } 
	{ b_i_valid sc_in sc_logic 1 signal 4 } 
	{ b_i_ready sc_out sc_logic 1 signal 5 } 
	{ b_i_data sc_in sc_lv 32 signal 6 } 
	{ b_i_strb sc_in sc_lv 4 signal 7 } 
	{ c_i_valid sc_in sc_logic 1 signal 8 } 
	{ c_i_ready sc_out sc_logic 1 signal 9 } 
	{ c_i_data sc_in sc_lv 32 signal 10 } 
	{ c_i_strb sc_in sc_lv 4 signal 11 } 
	{ d_o_valid sc_out sc_logic 1 signal 12 } 
	{ d_o_ready sc_in sc_logic 1 signal 13 } 
	{ d_o_data sc_out sc_lv 32 signal 14 } 
	{ d_o_strb sc_out sc_lv 4 signal 15 } 
	{ clear sc_in sc_logic 1 signal 16 } 
	{ enable sc_in sc_logic 1 signal 17 } 
	{ function_r sc_in sc_logic 1 signal 18 } 
	{ start_r sc_in sc_logic 1 signal 19 } 
	{ shift sc_in sc_lv 5 signal 20 } 
	{ len sc_in sc_lv 11 signal 21 } 
	{ f_cnt sc_out sc_lv 11 signal 22 } 
	{ f_cnt_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ f_valid sc_out sc_logic 1 signal 23 } 
	{ f_valid_ap_vld sc_out sc_logic 1 outvld 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "a_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i_valid", "role": "default" }} , 
 	{ "name": "a_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i_ready", "role": "default" }} , 
 	{ "name": "a_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_i_data", "role": "default" }} , 
 	{ "name": "a_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_i_strb", "role": "default" }} , 
 	{ "name": "b_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_i_valid", "role": "default" }} , 
 	{ "name": "b_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_i_ready", "role": "default" }} , 
 	{ "name": "b_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_i_data", "role": "default" }} , 
 	{ "name": "b_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_i_strb", "role": "default" }} , 
 	{ "name": "c_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_i_valid", "role": "default" }} , 
 	{ "name": "c_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_i_ready", "role": "default" }} , 
 	{ "name": "c_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_i_data", "role": "default" }} , 
 	{ "name": "c_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_i_strb", "role": "default" }} , 
 	{ "name": "d_o_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_valid", "role": "default" }} , 
 	{ "name": "d_o_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_ready", "role": "default" }} , 
 	{ "name": "d_o_data", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_o_data", "role": "default" }} , 
 	{ "name": "d_o_strb", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "d_o_strb", "role": "default" }} , 
 	{ "name": "clear", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clear", "role": "default" }} , 
 	{ "name": "enable", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enable", "role": "default" }} , 
 	{ "name": "function_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "function_r", "role": "default" }} , 
 	{ "name": "start_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_r", "role": "default" }} , 
 	{ "name": "shift", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "shift", "role": "default" }} , 
 	{ "name": "len", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "len", "role": "default" }} , 
 	{ "name": "f_cnt", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "f_cnt", "role": "default" }} , 
 	{ "name": "f_cnt_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_cnt", "role": "ap_vld" }} , 
 	{ "name": "f_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_valid", "role": "default" }} , 
 	{ "name": "f_valid_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_valid", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "cont",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "a_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "b_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "c_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_valid", "Type" : "None", "Direction" : "O"},
			{"Name" : "d_o_ready", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_data", "Type" : "None", "Direction" : "O"},
			{"Name" : "d_o_strb", "Type" : "None", "Direction" : "O"},
			{"Name" : "clear", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "function_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_cnt", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "f_valid", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buffer_ok", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_acc_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_c", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_a", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_b", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_cnt_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_prod1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_prod2_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "idx_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "offset_j", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "k", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_mulmulmulmulhs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ti_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prod_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "store_result_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_acc_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "offset_start", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pip_a_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pip_b_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_pip1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_pip2_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "e_re_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "e_im_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w_re_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w_im_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_re_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_im_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "store_result_ready", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_32s_47_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_32s_47_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_32s_47_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_47_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_64_1_1_U30", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cont {
		a_i_valid {Type I LastRead 0 FirstWrite -1}
		a_i_ready {Type O LastRead -1 FirstWrite 0}
		a_i_data {Type I LastRead 0 FirstWrite -1}
		a_i_strb {Type I LastRead -1 FirstWrite -1}
		b_i_valid {Type I LastRead 0 FirstWrite -1}
		b_i_ready {Type O LastRead -1 FirstWrite 0}
		b_i_data {Type I LastRead 0 FirstWrite -1}
		b_i_strb {Type I LastRead -1 FirstWrite -1}
		c_i_valid {Type I LastRead 0 FirstWrite -1}
		c_i_ready {Type O LastRead -1 FirstWrite 0}
		c_i_data {Type I LastRead 0 FirstWrite -1}
		c_i_strb {Type I LastRead -1 FirstWrite -1}
		d_o_valid {Type O LastRead -1 FirstWrite 0}
		d_o_ready {Type I LastRead 0 FirstWrite -1}
		d_o_data {Type O LastRead -1 FirstWrite 0}
		d_o_strb {Type O LastRead -1 FirstWrite 0}
		clear {Type I LastRead -1 FirstWrite -1}
		enable {Type I LastRead 0 FirstWrite -1}
		function_r {Type I LastRead 0 FirstWrite -1}
		start_r {Type I LastRead 0 FirstWrite -1}
		shift {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		f_cnt {Type O LastRead -1 FirstWrite 0}
		f_valid {Type O LastRead -1 FirstWrite 0}
		buffer_ok {Type IO LastRead -1 FirstWrite -1}
		r_acc_valid {Type IO LastRead -1 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		j_c {Type IO LastRead -1 FirstWrite -1}
		j_a {Type IO LastRead -1 FirstWrite -1}
		j_b {Type IO LastRead -1 FirstWrite -1}
		b_count_V {Type IO LastRead -1 FirstWrite -1}
		r_cnt_V {Type IO LastRead -1 FirstWrite -1}
		i {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type IO LastRead -1 FirstWrite -1}
		fft_prod1_V {Type IO LastRead -1 FirstWrite -1}
		fft_prod2_V {Type IO LastRead -1 FirstWrite -1}
		s_idx {Type IO LastRead -1 FirstWrite -1}
		idx_1 {Type IO LastRead -1 FirstWrite -1}
		idx_2 {Type IO LastRead -1 FirstWrite -1}
		offset_j {Type IO LastRead -1 FirstWrite -1}
		k {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_43 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_42 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_41 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_40 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_39 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_38 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_37 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_36 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_35 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_33 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_32 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_31 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_30 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_29 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_28 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_27 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_26 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_25 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_14 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_13 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_12 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_11 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_10 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_9 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_8 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_7 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_1 {Type IO LastRead -1 FirstWrite -1}
		cont_mulmulmulmulhs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_6 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_5 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_4 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_3 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_2 {Type IO LastRead -1 FirstWrite -1}
		tr_V {Type IO LastRead -1 FirstWrite -1}
		ti_V {Type IO LastRead -1 FirstWrite -1}
		prod_V {Type IO LastRead -1 FirstWrite -1}
		store_result_valid {Type IO LastRead -1 FirstWrite -1}
		r_acc_V {Type IO LastRead -1 FirstWrite -1}
		offset_start {Type IO LastRead -1 FirstWrite -1}
		pip_a_V {Type IO LastRead -1 FirstWrite -1}
		pip_b_V {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_23 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_22 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_21 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_20 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_19 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_18 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_17 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_16 {Type IO LastRead -1 FirstWrite -1}
		fft_pip1_V {Type IO LastRead -1 FirstWrite -1}
		fft_pip2_V {Type IO LastRead -1 FirstWrite -1}
		e_re_V {Type IO LastRead -1 FirstWrite -1}
		e_im_V {Type IO LastRead -1 FirstWrite -1}
		w_re_V {Type IO LastRead -1 FirstWrite -1}
		w_im_V {Type IO LastRead -1 FirstWrite -1}
		t_re_V {Type IO LastRead -1 FirstWrite -1}
		t_im_V {Type IO LastRead -1 FirstWrite -1}
		store_result_ready {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_i_valid { ap_none {  { a_i_valid in_data 0 1 } } }
	a_i_ready { ap_none {  { a_i_ready out_data 1 1 } } }
	a_i_data { ap_none {  { a_i_data in_data 0 32 } } }
	a_i_strb { ap_none {  { a_i_strb in_data 0 4 } } }
	b_i_valid { ap_none {  { b_i_valid in_data 0 1 } } }
	b_i_ready { ap_none {  { b_i_ready out_data 1 1 } } }
	b_i_data { ap_none {  { b_i_data in_data 0 32 } } }
	b_i_strb { ap_none {  { b_i_strb in_data 0 4 } } }
	c_i_valid { ap_none {  { c_i_valid in_data 0 1 } } }
	c_i_ready { ap_none {  { c_i_ready out_data 1 1 } } }
	c_i_data { ap_none {  { c_i_data in_data 0 32 } } }
	c_i_strb { ap_none {  { c_i_strb in_data 0 4 } } }
	d_o_valid { ap_none {  { d_o_valid out_data 1 1 } } }
	d_o_ready { ap_none {  { d_o_ready in_data 0 1 } } }
	d_o_data { ap_none {  { d_o_data out_data 1 32 } } }
	d_o_strb { ap_none {  { d_o_strb out_data 1 4 } } }
	clear { ap_none {  { clear in_data 0 1 } } }
	enable { ap_none {  { enable in_data 0 1 } } }
	function_r { ap_none {  { function_r in_data 0 1 } } }
	start_r { ap_none {  { start_r in_data 0 1 } } }
	shift { ap_none {  { shift in_data 0 5 } } }
	len { ap_none {  { len in_data 0 11 } } }
	f_cnt { ap_vld {  { f_cnt out_data 1 11 }  { f_cnt_ap_vld out_vld 1 1 } } }
	f_valid { ap_vld {  { f_valid out_data 1 1 }  { f_valid_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName cont
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {cont}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_i_valid int 1 regular {pointer 0}  }
	{ a_i_ready int 1 regular {pointer 1}  }
	{ a_i_data int 32 regular {pointer 0}  }
	{ a_i_strb int 4 unused {pointer 0}  }
	{ b_i_valid int 1 regular {pointer 0}  }
	{ b_i_ready int 1 regular {pointer 1}  }
	{ b_i_data int 32 regular {pointer 0}  }
	{ b_i_strb int 4 unused {pointer 0}  }
	{ c_i_valid int 1 regular {pointer 0}  }
	{ c_i_ready int 1 regular {pointer 1}  }
	{ c_i_data int 32 unused {pointer 0}  }
	{ c_i_strb int 4 unused {pointer 0}  }
	{ d_o_valid int 1 regular {pointer 1}  }
	{ d_o_ready int 1 regular {pointer 0}  }
	{ d_o_data int 32 regular {pointer 1}  }
	{ d_o_strb int 4 regular {pointer 1}  }
	{ clear uint 1 unused  }
	{ enable uint 1 regular  }
	{ function_r uint 1 regular  }
	{ start_r uint 1 regular  }
	{ shift int 5 regular  }
	{ len int 11 regular  }
	{ f_cnt int 11 regular {pointer 1}  }
	{ f_valid int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "a_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_data", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clear", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "enable", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "function_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "start_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "shift", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "len", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "f_cnt", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "f_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ a_i_valid sc_in sc_logic 1 signal 0 } 
	{ a_i_ready sc_out sc_logic 1 signal 1 } 
	{ a_i_data sc_in sc_lv 32 signal 2 } 
	{ a_i_strb sc_in sc_lv 4 signal 3 } 
	{ b_i_valid sc_in sc_logic 1 signal 4 } 
	{ b_i_ready sc_out sc_logic 1 signal 5 } 
	{ b_i_data sc_in sc_lv 32 signal 6 } 
	{ b_i_strb sc_in sc_lv 4 signal 7 } 
	{ c_i_valid sc_in sc_logic 1 signal 8 } 
	{ c_i_ready sc_out sc_logic 1 signal 9 } 
	{ c_i_data sc_in sc_lv 32 signal 10 } 
	{ c_i_strb sc_in sc_lv 4 signal 11 } 
	{ d_o_valid sc_out sc_logic 1 signal 12 } 
	{ d_o_ready sc_in sc_logic 1 signal 13 } 
	{ d_o_data sc_out sc_lv 32 signal 14 } 
	{ d_o_strb sc_out sc_lv 4 signal 15 } 
	{ clear sc_in sc_logic 1 signal 16 } 
	{ enable sc_in sc_logic 1 signal 17 } 
	{ function_r sc_in sc_logic 1 signal 18 } 
	{ start_r sc_in sc_logic 1 signal 19 } 
	{ shift sc_in sc_lv 5 signal 20 } 
	{ len sc_in sc_lv 11 signal 21 } 
	{ f_cnt sc_out sc_lv 11 signal 22 } 
	{ f_cnt_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ f_valid sc_out sc_logic 1 signal 23 } 
	{ f_valid_ap_vld sc_out sc_logic 1 outvld 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "a_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i_valid", "role": "default" }} , 
 	{ "name": "a_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i_ready", "role": "default" }} , 
 	{ "name": "a_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_i_data", "role": "default" }} , 
 	{ "name": "a_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_i_strb", "role": "default" }} , 
 	{ "name": "b_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_i_valid", "role": "default" }} , 
 	{ "name": "b_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_i_ready", "role": "default" }} , 
 	{ "name": "b_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_i_data", "role": "default" }} , 
 	{ "name": "b_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_i_strb", "role": "default" }} , 
 	{ "name": "c_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_i_valid", "role": "default" }} , 
 	{ "name": "c_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_i_ready", "role": "default" }} , 
 	{ "name": "c_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_i_data", "role": "default" }} , 
 	{ "name": "c_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_i_strb", "role": "default" }} , 
 	{ "name": "d_o_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_valid", "role": "default" }} , 
 	{ "name": "d_o_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_ready", "role": "default" }} , 
 	{ "name": "d_o_data", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_o_data", "role": "default" }} , 
 	{ "name": "d_o_strb", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "d_o_strb", "role": "default" }} , 
 	{ "name": "clear", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clear", "role": "default" }} , 
 	{ "name": "enable", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enable", "role": "default" }} , 
 	{ "name": "function_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "function_r", "role": "default" }} , 
 	{ "name": "start_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_r", "role": "default" }} , 
 	{ "name": "shift", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "shift", "role": "default" }} , 
 	{ "name": "len", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "len", "role": "default" }} , 
 	{ "name": "f_cnt", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "f_cnt", "role": "default" }} , 
 	{ "name": "f_cnt_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_cnt", "role": "ap_vld" }} , 
 	{ "name": "f_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_valid", "role": "default" }} , 
 	{ "name": "f_valid_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_valid", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "cont",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "a_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "b_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "c_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_valid", "Type" : "None", "Direction" : "O"},
			{"Name" : "d_o_ready", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_data", "Type" : "None", "Direction" : "O"},
			{"Name" : "d_o_strb", "Type" : "None", "Direction" : "O"},
			{"Name" : "clear", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "function_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_cnt", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "f_valid", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buffer_ok", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_acc_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_c", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_a", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_b", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_cnt_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_prod1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_prod2_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "idx_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "offset_j", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_mulmulmulmulhs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ti_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prod_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "store_result_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_acc_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "offset_start", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pip_a_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pip_b_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_pip1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_pip2_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "store_result_ready", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_64_1_1_U21", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cont {
		a_i_valid {Type I LastRead 0 FirstWrite -1}
		a_i_ready {Type O LastRead -1 FirstWrite 0}
		a_i_data {Type I LastRead 0 FirstWrite -1}
		a_i_strb {Type I LastRead -1 FirstWrite -1}
		b_i_valid {Type I LastRead 0 FirstWrite -1}
		b_i_ready {Type O LastRead -1 FirstWrite 0}
		b_i_data {Type I LastRead 0 FirstWrite -1}
		b_i_strb {Type I LastRead -1 FirstWrite -1}
		c_i_valid {Type I LastRead 0 FirstWrite -1}
		c_i_ready {Type O LastRead -1 FirstWrite 0}
		c_i_data {Type I LastRead -1 FirstWrite -1}
		c_i_strb {Type I LastRead -1 FirstWrite -1}
		d_o_valid {Type O LastRead -1 FirstWrite 0}
		d_o_ready {Type I LastRead 0 FirstWrite -1}
		d_o_data {Type O LastRead -1 FirstWrite 0}
		d_o_strb {Type O LastRead -1 FirstWrite 0}
		clear {Type I LastRead -1 FirstWrite -1}
		enable {Type I LastRead 0 FirstWrite -1}
		function_r {Type I LastRead 0 FirstWrite -1}
		start_r {Type I LastRead 0 FirstWrite -1}
		shift {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		f_cnt {Type O LastRead -1 FirstWrite 0}
		f_valid {Type O LastRead -1 FirstWrite 0}
		buffer_ok {Type IO LastRead -1 FirstWrite -1}
		r_acc_valid {Type IO LastRead -1 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		j_c {Type IO LastRead -1 FirstWrite -1}
		j_a {Type IO LastRead -1 FirstWrite -1}
		j_b {Type IO LastRead -1 FirstWrite -1}
		b_count_V {Type IO LastRead -1 FirstWrite -1}
		r_cnt_V {Type IO LastRead -1 FirstWrite -1}
		i {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type IO LastRead -1 FirstWrite -1}
		fft_prod1_V {Type IO LastRead -1 FirstWrite -1}
		fft_prod2_V {Type IO LastRead -1 FirstWrite -1}
		s_idx {Type IO LastRead -1 FirstWrite -1}
		idx_1 {Type IO LastRead -1 FirstWrite -1}
		idx_2 {Type IO LastRead -1 FirstWrite -1}
		offset_j {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_35 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_34 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_33 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_32 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_31 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_30 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_29 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_28 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_27 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_25 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_24 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_23 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_22 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_21 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_20 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_19 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_18 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_17 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_14 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_13 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_12 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_11 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_10 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_9 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_8 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_7 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_1 {Type IO LastRead -1 FirstWrite -1}
		cont_mulmulmulmulhs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_6 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_5 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_4 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_3 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_2 {Type IO LastRead -1 FirstWrite -1}
		tr_V {Type IO LastRead -1 FirstWrite -1}
		ti_V {Type IO LastRead -1 FirstWrite -1}
		prod_V {Type IO LastRead -1 FirstWrite -1}
		store_result_valid {Type IO LastRead -1 FirstWrite -1}
		r_acc_V {Type IO LastRead -1 FirstWrite -1}
		offset_start {Type IO LastRead -1 FirstWrite -1}
		pip_a_V {Type IO LastRead -1 FirstWrite -1}
		pip_b_V {Type IO LastRead -1 FirstWrite -1}
		fft_pip1_V {Type IO LastRead -1 FirstWrite -1}
		fft_pip2_V {Type IO LastRead -1 FirstWrite -1}
		store_result_ready {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_i_valid { ap_none {  { a_i_valid in_data 0 1 } } }
	a_i_ready { ap_none {  { a_i_ready out_data 1 1 } } }
	a_i_data { ap_none {  { a_i_data in_data 0 32 } } }
	a_i_strb { ap_none {  { a_i_strb in_data 0 4 } } }
	b_i_valid { ap_none {  { b_i_valid in_data 0 1 } } }
	b_i_ready { ap_none {  { b_i_ready out_data 1 1 } } }
	b_i_data { ap_none {  { b_i_data in_data 0 32 } } }
	b_i_strb { ap_none {  { b_i_strb in_data 0 4 } } }
	c_i_valid { ap_none {  { c_i_valid in_data 0 1 } } }
	c_i_ready { ap_none {  { c_i_ready out_data 1 1 } } }
	c_i_data { ap_none {  { c_i_data in_data 0 32 } } }
	c_i_strb { ap_none {  { c_i_strb in_data 0 4 } } }
	d_o_valid { ap_none {  { d_o_valid out_data 1 1 } } }
	d_o_ready { ap_none {  { d_o_ready in_data 0 1 } } }
	d_o_data { ap_none {  { d_o_data out_data 1 32 } } }
	d_o_strb { ap_none {  { d_o_strb out_data 1 4 } } }
	clear { ap_none {  { clear in_data 0 1 } } }
	enable { ap_none {  { enable in_data 0 1 } } }
	function_r { ap_none {  { function_r in_data 0 1 } } }
	start_r { ap_none {  { start_r in_data 0 1 } } }
	shift { ap_none {  { shift in_data 0 5 } } }
	len { ap_none {  { len in_data 0 11 } } }
	f_cnt { ap_vld {  { f_cnt out_data 1 11 }  { f_cnt_ap_vld out_vld 1 1 } } }
	f_valid { ap_vld {  { f_valid out_data 1 1 }  { f_valid_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName cont
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {cont}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_i_valid int 1 regular {pointer 0}  }
	{ a_i_ready int 1 regular {pointer 1}  }
	{ a_i_data int 32 regular {pointer 0}  }
	{ a_i_strb int 4 unused {pointer 0}  }
	{ b_i_valid int 1 regular {pointer 0}  }
	{ b_i_ready int 1 regular {pointer 1}  }
	{ b_i_data int 32 regular {pointer 0}  }
	{ b_i_strb int 4 unused {pointer 0}  }
	{ c_i_valid int 1 regular {pointer 0}  }
	{ c_i_ready int 1 regular {pointer 1}  }
	{ c_i_data int 32 regular {pointer 0}  }
	{ c_i_strb int 4 unused {pointer 0}  }
	{ d_o_valid int 1 regular {pointer 1}  }
	{ d_o_ready int 1 regular {pointer 0}  }
	{ d_o_data int 32 regular {pointer 1}  }
	{ d_o_strb int 4 regular {pointer 1}  }
	{ clear uint 1 unused  }
	{ enable uint 1 regular  }
	{ function_r uint 1 regular  }
	{ start_r uint 1 regular  }
	{ shift int 5 regular  }
	{ len int 11 regular  }
	{ f_cnt int 11 regular {pointer 1}  }
	{ f_valid int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "a_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_data", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clear", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "enable", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "function_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "start_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "shift", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "len", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "f_cnt", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "f_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ a_i_valid sc_in sc_logic 1 signal 0 } 
	{ a_i_ready sc_out sc_logic 1 signal 1 } 
	{ a_i_data sc_in sc_lv 32 signal 2 } 
	{ a_i_strb sc_in sc_lv 4 signal 3 } 
	{ b_i_valid sc_in sc_logic 1 signal 4 } 
	{ b_i_ready sc_out sc_logic 1 signal 5 } 
	{ b_i_data sc_in sc_lv 32 signal 6 } 
	{ b_i_strb sc_in sc_lv 4 signal 7 } 
	{ c_i_valid sc_in sc_logic 1 signal 8 } 
	{ c_i_ready sc_out sc_logic 1 signal 9 } 
	{ c_i_data sc_in sc_lv 32 signal 10 } 
	{ c_i_strb sc_in sc_lv 4 signal 11 } 
	{ d_o_valid sc_out sc_logic 1 signal 12 } 
	{ d_o_ready sc_in sc_logic 1 signal 13 } 
	{ d_o_data sc_out sc_lv 32 signal 14 } 
	{ d_o_strb sc_out sc_lv 4 signal 15 } 
	{ clear sc_in sc_logic 1 signal 16 } 
	{ enable sc_in sc_logic 1 signal 17 } 
	{ function_r sc_in sc_logic 1 signal 18 } 
	{ start_r sc_in sc_logic 1 signal 19 } 
	{ shift sc_in sc_lv 5 signal 20 } 
	{ len sc_in sc_lv 11 signal 21 } 
	{ f_cnt sc_out sc_lv 11 signal 22 } 
	{ f_cnt_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ f_valid sc_out sc_logic 1 signal 23 } 
	{ f_valid_ap_vld sc_out sc_logic 1 outvld 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "a_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i_valid", "role": "default" }} , 
 	{ "name": "a_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i_ready", "role": "default" }} , 
 	{ "name": "a_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_i_data", "role": "default" }} , 
 	{ "name": "a_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_i_strb", "role": "default" }} , 
 	{ "name": "b_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_i_valid", "role": "default" }} , 
 	{ "name": "b_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_i_ready", "role": "default" }} , 
 	{ "name": "b_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_i_data", "role": "default" }} , 
 	{ "name": "b_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_i_strb", "role": "default" }} , 
 	{ "name": "c_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_i_valid", "role": "default" }} , 
 	{ "name": "c_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_i_ready", "role": "default" }} , 
 	{ "name": "c_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_i_data", "role": "default" }} , 
 	{ "name": "c_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_i_strb", "role": "default" }} , 
 	{ "name": "d_o_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_valid", "role": "default" }} , 
 	{ "name": "d_o_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_ready", "role": "default" }} , 
 	{ "name": "d_o_data", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_o_data", "role": "default" }} , 
 	{ "name": "d_o_strb", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "d_o_strb", "role": "default" }} , 
 	{ "name": "clear", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clear", "role": "default" }} , 
 	{ "name": "enable", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enable", "role": "default" }} , 
 	{ "name": "function_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "function_r", "role": "default" }} , 
 	{ "name": "start_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_r", "role": "default" }} , 
 	{ "name": "shift", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "shift", "role": "default" }} , 
 	{ "name": "len", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "len", "role": "default" }} , 
 	{ "name": "f_cnt", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "f_cnt", "role": "default" }} , 
 	{ "name": "f_cnt_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_cnt", "role": "ap_vld" }} , 
 	{ "name": "f_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_valid", "role": "default" }} , 
 	{ "name": "f_valid_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_valid", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "cont",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "a_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "b_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "c_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_valid", "Type" : "None", "Direction" : "O"},
			{"Name" : "d_o_ready", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_data", "Type" : "None", "Direction" : "O"},
			{"Name" : "d_o_strb", "Type" : "None", "Direction" : "O"},
			{"Name" : "clear", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "function_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_cnt", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "f_valid", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buffer_ok", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_acc_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_c", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_a", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_b", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_cnt_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_prod1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_prod2_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "s_idx", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "idx_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "idx_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "offset_j", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "k", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_mulmulmulmulhs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ti_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prod_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "store_result_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_acc_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "offset_start", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pip_a_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pip_b_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_pip1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "fft_pip2_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "e_re_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "e_im_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w_re_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w_im_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_re_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_im_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "store_result_ready", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_32s_47_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_32s_47_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_32s_47_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16s_47_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_16ns_48_1_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_64_1_1_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_64_1_1_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_64_1_1_U30", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cont {
		a_i_valid {Type I LastRead 0 FirstWrite -1}
		a_i_ready {Type O LastRead -1 FirstWrite 0}
		a_i_data {Type I LastRead 0 FirstWrite -1}
		a_i_strb {Type I LastRead -1 FirstWrite -1}
		b_i_valid {Type I LastRead 0 FirstWrite -1}
		b_i_ready {Type O LastRead -1 FirstWrite 0}
		b_i_data {Type I LastRead 0 FirstWrite -1}
		b_i_strb {Type I LastRead -1 FirstWrite -1}
		c_i_valid {Type I LastRead 0 FirstWrite -1}
		c_i_ready {Type O LastRead -1 FirstWrite 0}
		c_i_data {Type I LastRead 0 FirstWrite -1}
		c_i_strb {Type I LastRead -1 FirstWrite -1}
		d_o_valid {Type O LastRead -1 FirstWrite 0}
		d_o_ready {Type I LastRead 0 FirstWrite -1}
		d_o_data {Type O LastRead -1 FirstWrite 0}
		d_o_strb {Type O LastRead -1 FirstWrite 0}
		clear {Type I LastRead -1 FirstWrite -1}
		enable {Type I LastRead 0 FirstWrite -1}
		function_r {Type I LastRead 0 FirstWrite -1}
		start_r {Type I LastRead 0 FirstWrite -1}
		shift {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		f_cnt {Type O LastRead -1 FirstWrite 0}
		f_valid {Type O LastRead -1 FirstWrite 0}
		buffer_ok {Type IO LastRead -1 FirstWrite -1}
		r_acc_valid {Type IO LastRead -1 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		j_c {Type IO LastRead -1 FirstWrite -1}
		j_a {Type IO LastRead -1 FirstWrite -1}
		j_b {Type IO LastRead -1 FirstWrite -1}
		b_count_V {Type IO LastRead -1 FirstWrite -1}
		r_cnt_V {Type IO LastRead -1 FirstWrite -1}
		i {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type IO LastRead -1 FirstWrite -1}
		fft_prod1_V {Type IO LastRead -1 FirstWrite -1}
		fft_prod2_V {Type IO LastRead -1 FirstWrite -1}
		s_idx {Type IO LastRead -1 FirstWrite -1}
		idx_1 {Type IO LastRead -1 FirstWrite -1}
		idx_2 {Type IO LastRead -1 FirstWrite -1}
		offset_j {Type IO LastRead -1 FirstWrite -1}
		k {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_43 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_42 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_41 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_40 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_39 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_38 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_37 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_36 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_35 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_a_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_33 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_32 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_31 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_30 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_29 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_28 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_27 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_26 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_25 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ4contP7hs_is_tS0_S0_S0_bbbb7ap_uintILi5EES1_ILi11EEPS3_PbE8buffer_b_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_15 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_14 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_13 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_12 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_11 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_10 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_9 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_8 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_7 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_1 {Type IO LastRead -1 FirstWrite -1}
		cont_mulmulmulmulhs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_6 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_5 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_4 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_3 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_2 {Type IO LastRead -1 FirstWrite -1}
		tr_V {Type IO LastRead -1 FirstWrite -1}
		ti_V {Type IO LastRead -1 FirstWrite -1}
		prod_V {Type IO LastRead -1 FirstWrite -1}
		store_result_valid {Type IO LastRead -1 FirstWrite -1}
		r_acc_V {Type IO LastRead -1 FirstWrite -1}
		offset_start {Type IO LastRead -1 FirstWrite -1}
		pip_a_V {Type IO LastRead -1 FirstWrite -1}
		pip_b_V {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_23 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_22 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_21 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_20 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_19 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_18 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_17 {Type IO LastRead -1 FirstWrite -1}
		cont_hs_is_t_hs_is_t_hs_is_t_hs_is_t_bool_bool_bool_bool_ap_uint_ap_uint_ap_16 {Type IO LastRead -1 FirstWrite -1}
		fft_pip1_V {Type IO LastRead -1 FirstWrite -1}
		fft_pip2_V {Type IO LastRead -1 FirstWrite -1}
		e_re_V {Type IO LastRead -1 FirstWrite -1}
		e_im_V {Type IO LastRead -1 FirstWrite -1}
		w_re_V {Type IO LastRead -1 FirstWrite -1}
		w_im_V {Type IO LastRead -1 FirstWrite -1}
		t_re_V {Type IO LastRead -1 FirstWrite -1}
		t_im_V {Type IO LastRead -1 FirstWrite -1}
		store_result_ready {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_i_valid { ap_none {  { a_i_valid in_data 0 1 } } }
	a_i_ready { ap_none {  { a_i_ready out_data 1 1 } } }
	a_i_data { ap_none {  { a_i_data in_data 0 32 } } }
	a_i_strb { ap_none {  { a_i_strb in_data 0 4 } } }
	b_i_valid { ap_none {  { b_i_valid in_data 0 1 } } }
	b_i_ready { ap_none {  { b_i_ready out_data 1 1 } } }
	b_i_data { ap_none {  { b_i_data in_data 0 32 } } }
	b_i_strb { ap_none {  { b_i_strb in_data 0 4 } } }
	c_i_valid { ap_none {  { c_i_valid in_data 0 1 } } }
	c_i_ready { ap_none {  { c_i_ready out_data 1 1 } } }
	c_i_data { ap_none {  { c_i_data in_data 0 32 } } }
	c_i_strb { ap_none {  { c_i_strb in_data 0 4 } } }
	d_o_valid { ap_none {  { d_o_valid out_data 1 1 } } }
	d_o_ready { ap_none {  { d_o_ready in_data 0 1 } } }
	d_o_data { ap_none {  { d_o_data out_data 1 32 } } }
	d_o_strb { ap_none {  { d_o_strb out_data 1 4 } } }
	clear { ap_none {  { clear in_data 0 1 } } }
	enable { ap_none {  { enable in_data 0 1 } } }
	function_r { ap_none {  { function_r in_data 0 1 } } }
	start_r { ap_none {  { start_r in_data 0 1 } } }
	shift { ap_none {  { shift in_data 0 5 } } }
	len { ap_none {  { len in_data 0 11 } } }
	f_cnt { ap_vld {  { f_cnt out_data 1 11 }  { f_cnt_ap_vld out_vld 1 1 } } }
	f_valid { ap_vld {  { f_valid out_data 1 1 }  { f_valid_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
