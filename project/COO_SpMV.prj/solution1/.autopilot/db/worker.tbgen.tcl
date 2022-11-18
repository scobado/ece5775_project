set C_TypeInfoList {{ 
"worker" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"dest": [[], {"array": [ {"scalar": "float"}, [100]]}] }],[],""]
}}
set moduleName worker
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {worker}
set C_modelType { void 0 }
set C_modelArgList {
	{ dest_0 float 32 regular {array 25 { 2 0 } 1 1 }  }
	{ dest_1 float 32 regular {array 25 { 2 0 } 1 1 }  }
	{ dest_2 float 32 regular {array 25 { 2 0 } 1 1 }  }
	{ dest_3 float 32 regular {array 25 { 2 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dest_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dest","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 24,"step" : 1}]}]}]} , 
 	{ "Name" : "dest_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dest","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 25,"up" : 49,"step" : 1}]}]}]} , 
 	{ "Name" : "dest_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dest","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 50,"up" : 74,"step" : 1}]}]}]} , 
 	{ "Name" : "dest_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dest","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 75,"up" : 99,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dest_0_address0 sc_out sc_lv 5 signal 0 } 
	{ dest_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ dest_0_we0 sc_out sc_logic 1 signal 0 } 
	{ dest_0_d0 sc_out sc_lv 32 signal 0 } 
	{ dest_0_q0 sc_in sc_lv 32 signal 0 } 
	{ dest_0_address1 sc_out sc_lv 5 signal 0 } 
	{ dest_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ dest_0_we1 sc_out sc_logic 1 signal 0 } 
	{ dest_0_d1 sc_out sc_lv 32 signal 0 } 
	{ dest_1_address0 sc_out sc_lv 5 signal 1 } 
	{ dest_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ dest_1_we0 sc_out sc_logic 1 signal 1 } 
	{ dest_1_d0 sc_out sc_lv 32 signal 1 } 
	{ dest_1_q0 sc_in sc_lv 32 signal 1 } 
	{ dest_1_address1 sc_out sc_lv 5 signal 1 } 
	{ dest_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ dest_1_we1 sc_out sc_logic 1 signal 1 } 
	{ dest_1_d1 sc_out sc_lv 32 signal 1 } 
	{ dest_2_address0 sc_out sc_lv 5 signal 2 } 
	{ dest_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ dest_2_we0 sc_out sc_logic 1 signal 2 } 
	{ dest_2_d0 sc_out sc_lv 32 signal 2 } 
	{ dest_2_q0 sc_in sc_lv 32 signal 2 } 
	{ dest_2_address1 sc_out sc_lv 5 signal 2 } 
	{ dest_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ dest_2_we1 sc_out sc_logic 1 signal 2 } 
	{ dest_2_d1 sc_out sc_lv 32 signal 2 } 
	{ dest_3_address0 sc_out sc_lv 5 signal 3 } 
	{ dest_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ dest_3_we0 sc_out sc_logic 1 signal 3 } 
	{ dest_3_d0 sc_out sc_lv 32 signal 3 } 
	{ dest_3_q0 sc_in sc_lv 32 signal 3 } 
	{ dest_3_address1 sc_out sc_lv 5 signal 3 } 
	{ dest_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ dest_3_we1 sc_out sc_logic 1 signal 3 } 
	{ dest_3_d1 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dest_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dest_0", "role": "address0" }} , 
 	{ "name": "dest_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_0", "role": "ce0" }} , 
 	{ "name": "dest_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_0", "role": "we0" }} , 
 	{ "name": "dest_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_0", "role": "d0" }} , 
 	{ "name": "dest_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_0", "role": "q0" }} , 
 	{ "name": "dest_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dest_0", "role": "address1" }} , 
 	{ "name": "dest_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_0", "role": "ce1" }} , 
 	{ "name": "dest_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_0", "role": "we1" }} , 
 	{ "name": "dest_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_0", "role": "d1" }} , 
 	{ "name": "dest_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dest_1", "role": "address0" }} , 
 	{ "name": "dest_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_1", "role": "ce0" }} , 
 	{ "name": "dest_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_1", "role": "we0" }} , 
 	{ "name": "dest_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_1", "role": "d0" }} , 
 	{ "name": "dest_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_1", "role": "q0" }} , 
 	{ "name": "dest_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dest_1", "role": "address1" }} , 
 	{ "name": "dest_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_1", "role": "ce1" }} , 
 	{ "name": "dest_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_1", "role": "we1" }} , 
 	{ "name": "dest_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_1", "role": "d1" }} , 
 	{ "name": "dest_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dest_2", "role": "address0" }} , 
 	{ "name": "dest_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_2", "role": "ce0" }} , 
 	{ "name": "dest_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_2", "role": "we0" }} , 
 	{ "name": "dest_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_2", "role": "d0" }} , 
 	{ "name": "dest_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_2", "role": "q0" }} , 
 	{ "name": "dest_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dest_2", "role": "address1" }} , 
 	{ "name": "dest_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_2", "role": "ce1" }} , 
 	{ "name": "dest_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_2", "role": "we1" }} , 
 	{ "name": "dest_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_2", "role": "d1" }} , 
 	{ "name": "dest_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dest_3", "role": "address0" }} , 
 	{ "name": "dest_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_3", "role": "ce0" }} , 
 	{ "name": "dest_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_3", "role": "we0" }} , 
 	{ "name": "dest_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_3", "role": "d0" }} , 
 	{ "name": "dest_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_3", "role": "q0" }} , 
 	{ "name": "dest_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "dest_3", "role": "address1" }} , 
 	{ "name": "dest_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_3", "role": "ce1" }} , 
 	{ "name": "dest_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_3", "role": "we1" }} , 
 	{ "name": "dest_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest_3", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "11"], "CDFG" : "worker", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "dest_0", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_COO_SpMV_fu_191", "Port" : "output_0"}]}, 
		{"Name" : "dest_1", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_COO_SpMV_fu_191", "Port" : "output_1"}]}, 
		{"Name" : "dest_2", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_COO_SpMV_fu_191", "Port" : "output_2"}]}, 
		{"Name" : "dest_3", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_COO_SpMV_fu_191", "Port" : "output_3"}]}, 
		{"Name" : "matrix_1_0_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_0_0"}]}, 
		{"Name" : "matrix_1_0_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_0_1"}]}, 
		{"Name" : "matrix_1_0_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_0_2"}]}, 
		{"Name" : "matrix_1_0_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_0_3"}]}, 
		{"Name" : "matrix_1_1_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_1_0"}]}, 
		{"Name" : "matrix_1_1_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_1_1"}]}, 
		{"Name" : "matrix_1_1_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_1_2"}]}, 
		{"Name" : "matrix_1_1_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_1_3"}]}, 
		{"Name" : "matrix_1_2_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_2_0"}]}, 
		{"Name" : "matrix_1_2_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_2_1"}]}, 
		{"Name" : "matrix_1_2_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_2_2"}]}, 
		{"Name" : "matrix_1_2_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_2_3"}]}, 
		{"Name" : "matrix_1_3_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_3_0"}]}, 
		{"Name" : "matrix_1_3_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_3_1"}]}, 
		{"Name" : "matrix_1_3_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_3_2"}]}, 
		{"Name" : "matrix_1_3_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_209", "Port" : "matrix_1_3_3"}]}, 
		{"Name" : "vector", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_COO_SpMV_fu_191", "Port" : "vector"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_191"},
		{"State" : "ap_ST_st9_fsm_8", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_191"},
		{"State" : "ap_ST_st13_fsm_12", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_191"},
		{"State" : "ap_ST_st17_fsm_16", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_191"},
		{"State" : "ap_ST_st3_fsm_2", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_209"},
		{"State" : "ap_ST_st7_fsm_6", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_209"},
		{"State" : "ap_ST_st11_fsm_10", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_209"},
		{"State" : "ap_ST_st15_fsm_14", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_209"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_191", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10"], "CDFG" : "worker_COO_SpMV", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "row", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_0", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_1", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_2", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_3", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "vector", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_191.vector_U", "Parent" : "4", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_191.worker_fadd_32ns_32ns_32_5_full_dsp_U26", "Parent" : "4", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_191.worker_fmul_32ns_32ns_32_4_max_dsp_U27", "Parent" : "4", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_191.worker_urem_7ns_6ns_7_11_U28", "Parent" : "4", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_191.worker_mul_7ns_34ns_65_3_U29", "Parent" : "4", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_191.worker_mux_4to1_sel32_32_1_U30", "Parent" : "4", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"], "CDFG" : "worker_create_COO", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "row", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "block_r", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_0_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_0_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_0_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_0_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_1_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_1_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_1_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_1_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_2_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_2_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_2_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_2_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_3_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_3_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_3_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_3_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_0_0_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_0_1_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_0_2_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_0_3_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_1_0_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_1_1_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_1_2_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_1_3_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_2_0_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_2_1_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_2_2_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_2_3_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_3_0_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_3_1_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_3_2_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.matrix_1_3_3_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.temp_row_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.temp_col_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.temp_val_U", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.worker_fcmp_32ns_32ns_1_1_U1", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.worker_urem_7ns_6ns_7_11_seq_U2", "Parent" : "11", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_209.worker_mux_16to1_sel5_32_1_U3", "Parent" : "11", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "61500", "Max" : "61500"}
	, {"Name" : "Interval", "Min" : "61501", "Max" : "61501"}
]}

set Spec2ImplPortList { 
	dest_0 { ap_memory {  { dest_0_address0 mem_address 1 5 }  { dest_0_ce0 mem_ce 1 1 }  { dest_0_we0 mem_we 1 1 }  { dest_0_d0 mem_din 1 32 }  { dest_0_q0 mem_dout 0 32 }  { dest_0_address1 mem_address 1 5 }  { dest_0_ce1 mem_ce 1 1 }  { dest_0_we1 mem_we 1 1 }  { dest_0_d1 mem_din 1 32 } } }
	dest_1 { ap_memory {  { dest_1_address0 mem_address 1 5 }  { dest_1_ce0 mem_ce 1 1 }  { dest_1_we0 mem_we 1 1 }  { dest_1_d0 mem_din 1 32 }  { dest_1_q0 mem_dout 0 32 }  { dest_1_address1 mem_address 1 5 }  { dest_1_ce1 mem_ce 1 1 }  { dest_1_we1 mem_we 1 1 }  { dest_1_d1 mem_din 1 32 } } }
	dest_2 { ap_memory {  { dest_2_address0 mem_address 1 5 }  { dest_2_ce0 mem_ce 1 1 }  { dest_2_we0 mem_we 1 1 }  { dest_2_d0 mem_din 1 32 }  { dest_2_q0 mem_dout 0 32 }  { dest_2_address1 mem_address 1 5 }  { dest_2_ce1 mem_ce 1 1 }  { dest_2_we1 mem_we 1 1 }  { dest_2_d1 mem_din 1 32 } } }
	dest_3 { ap_memory {  { dest_3_address0 mem_address 1 5 }  { dest_3_ce0 mem_ce 1 1 }  { dest_3_we0 mem_we 1 1 }  { dest_3_d0 mem_din 1 32 }  { dest_3_q0 mem_dout 0 32 }  { dest_3_address1 mem_address 1 5 }  { dest_3_ce1 mem_ce 1 1 }  { dest_3_we1 mem_we 1 1 }  { dest_3_d1 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

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
