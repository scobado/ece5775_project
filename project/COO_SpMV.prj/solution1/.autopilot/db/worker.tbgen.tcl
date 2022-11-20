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
	{ dest float 32 regular {array 100 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dest", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dest","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dest_address0 sc_out sc_lv 7 signal 0 } 
	{ dest_ce0 sc_out sc_logic 1 signal 0 } 
	{ dest_we0 sc_out sc_logic 1 signal 0 } 
	{ dest_d0 sc_out sc_lv 32 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dest_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dest", "role": "address0" }} , 
 	{ "name": "dest_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest", "role": "ce0" }} , 
 	{ "name": "dest_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest", "role": "we0" }} , 
 	{ "name": "dest_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dest", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "25", "29", "33", "38", "43", "48"], "CDFG" : "worker", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "dest", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1129", "Port" : "input_r"}]}, 
		{"Name" : "vector", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_COO_SpMV_fu_1096", "Port" : "vector"}, 
			{"SubInst" : "grp_worker_COO_SpMV_fu_1118", "Port" : "vector"}, 
			{"SubInst" : "grp_worker_COO_SpMV_fu_1107", "Port" : "vector"}]}, 
		{"Name" : "matrix_1_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1129", "Port" : "input_r"}]}, 
		{"Name" : "matrix_1_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1139", "Port" : "input_r"}]}, 
		{"Name" : "matrix_1_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1148", "Port" : "input_r"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st16_fsm_15", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_1096"},
		{"State" : "ap_ST_st18_fsm_17", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_1096"},
		{"State" : "ap_ST_st18_fsm_17", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_1107"},
		{"State" : "ap_ST_st18_fsm_17", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_1118"},
		{"State" : "ap_ST_st14_fsm_13", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_1129"},
		{"State" : "ap_ST_st16_fsm_15", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_1129"},
		{"State" : "ap_ST_st16_fsm_15", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_1139"},
		{"State" : "ap_ST_st16_fsm_15", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_1148"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_1_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_1_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dest_1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dest_1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dest_1_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dest_1_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_1_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_1_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_1_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_1_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_1_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.val_1_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1096", "Parent" : "0", "Child" : ["22", "23", "24"], "CDFG" : "worker_COO_SpMV", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "row", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "vector", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1096.vector_U", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1096.worker_fadd_32ns_32ns_32_5_full_dsp_U9", "Parent" : "21", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1096.worker_fmul_32ns_32ns_32_4_max_dsp_U10", "Parent" : "21", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1107", "Parent" : "0", "Child" : ["26", "27", "28"], "CDFG" : "worker_COO_SpMV", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "row", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "vector", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1107.vector_U", "Parent" : "25", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1107.worker_fadd_32ns_32ns_32_5_full_dsp_U9", "Parent" : "25", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1107.worker_fmul_32ns_32ns_32_4_max_dsp_U10", "Parent" : "25", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1118", "Parent" : "0", "Child" : ["30", "31", "32"], "CDFG" : "worker_COO_SpMV", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "row", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "vector", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1118.vector_U", "Parent" : "29", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1118.worker_fadd_32ns_32ns_32_5_full_dsp_U9", "Parent" : "29", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1118.worker_fmul_32ns_32ns_32_4_max_dsp_U10", "Parent" : "29", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1129", "Parent" : "0", "Child" : ["34", "35", "36", "37"], "CDFG" : "worker_create_COO", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "row", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1129.temp_row_U", "Parent" : "33", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1129.temp_col_U", "Parent" : "33", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1129.temp_val_U", "Parent" : "33", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1129.worker_fcmp_32ns_32ns_1_1_U1", "Parent" : "33", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1139", "Parent" : "0", "Child" : ["39", "40", "41", "42"], "CDFG" : "worker_create_COO", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "row", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1139.temp_row_U", "Parent" : "38", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1139.temp_col_U", "Parent" : "38", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1139.temp_val_U", "Parent" : "38", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1139.worker_fcmp_32ns_32ns_1_1_U1", "Parent" : "38", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1148", "Parent" : "0", "Child" : ["44", "45", "46", "47"], "CDFG" : "worker_create_COO", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "row", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1148.temp_row_U", "Parent" : "43", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1148.temp_col_U", "Parent" : "43", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1148.temp_val_U", "Parent" : "43", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1148.worker_fcmp_32ns_32ns_1_1_U1", "Parent" : "43", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.worker_mux_4to1_sel2_32_1_U17", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "27942", "Max" : "27942"}
	, {"Name" : "Interval", "Min" : "27943", "Max" : "27943"}
]}

set Spec2ImplPortList { 
	dest { ap_memory {  { dest_address0 mem_address 1 7 }  { dest_ce0 mem_ce 1 1 }  { dest_we0 mem_we 1 1 }  { dest_d0 mem_din 1 32 } } }
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
