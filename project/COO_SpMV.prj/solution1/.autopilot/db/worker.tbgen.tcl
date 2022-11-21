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
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "29", "33", "37", "39", "41", "43"], "CDFG" : "worker", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "dest", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "matrix_1_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1161", "Port" : "input_r"}]}, 
		{"Name" : "row_nnz_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1161", "Port" : "nnz"}]}, 
		{"Name" : "vector", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_COO_SpMV_fu_1150", "Port" : "vector"}, 
			{"SubInst" : "grp_worker_COO_SpMV_fu_1128", "Port" : "vector"}, 
			{"SubInst" : "grp_worker_COO_SpMV_fu_1139", "Port" : "vector"}]}, 
		{"Name" : "matrix_1_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1161", "Port" : "input_r"}]}, 
		{"Name" : "row_nnz_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1161", "Port" : "nnz"}]}, 
		{"Name" : "matrix_1_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1174", "Port" : "input_r"}]}, 
		{"Name" : "row_nnz_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1174", "Port" : "nnz"}]}, 
		{"Name" : "matrix_1_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1185", "Port" : "input_r"}]}, 
		{"Name" : "row_nnz_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_worker_create_COO_fu_1185", "Port" : "nnz"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st19_fsm_18", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_1128"},
		{"State" : "ap_ST_st21_fsm_20", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_1128"},
		{"State" : "ap_ST_st21_fsm_20", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_1139"},
		{"State" : "ap_ST_st21_fsm_20", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_COO_SpMV_fu_1150"},
		{"State" : "ap_ST_st17_fsm_16", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_1161"},
		{"State" : "ap_ST_st19_fsm_18", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_1161"},
		{"State" : "ap_ST_st19_fsm_18", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_1174"},
		{"State" : "ap_ST_st19_fsm_18", "FSM" : "ap_CS_fsm", "SubInst" : "grp_worker_create_COO_fu_1185"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_nnz_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_nnz_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_1_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_nnz_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrix_1_3_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_nnz_3_U", "Parent" : "0", "Child" : []},
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
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1128", "Parent" : "0", "Child" : ["26", "27", "28"], "CDFG" : "worker_COO_SpMV", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "row", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "vector", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1128.vector_U", "Parent" : "25", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1128.worker_fadd_32ns_32ns_32_5_full_dsp_U7", "Parent" : "25", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1128.worker_fmul_32ns_32ns_32_4_max_dsp_U8", "Parent" : "25", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1139", "Parent" : "0", "Child" : ["30", "31", "32"], "CDFG" : "worker_COO_SpMV", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "row", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "vector", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1139.vector_U", "Parent" : "29", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1139.worker_fadd_32ns_32ns_32_5_full_dsp_U7", "Parent" : "29", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1139.worker_fmul_32ns_32ns_32_4_max_dsp_U8", "Parent" : "29", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1150", "Parent" : "0", "Child" : ["34", "35", "36"], "CDFG" : "worker_COO_SpMV", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "row", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "vector", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1150.vector_U", "Parent" : "33", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1150.worker_fadd_32ns_32ns_32_5_full_dsp_U7", "Parent" : "33", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_COO_SpMV_fu_1150.worker_fmul_32ns_32ns_32_4_max_dsp_U8", "Parent" : "33", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1161", "Parent" : "0", "Child" : ["38"], "CDFG" : "worker_create_COO", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "row", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1161.worker_fcmp_32ns_32ns_1_1_U1", "Parent" : "37", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1174", "Parent" : "0", "Child" : ["40"], "CDFG" : "worker_create_COO", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "row", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1174.worker_fcmp_32ns_32ns_1_1_U1", "Parent" : "39", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1185", "Parent" : "0", "Child" : ["42"], "CDFG" : "worker_create_COO", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "row", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_worker_create_COO_fu_1185.worker_fcmp_32ns_32ns_1_1_U1", "Parent" : "41", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.worker_mux_4to1_sel2_32_1_U15", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12955", "Max" : "75455"}
	, {"Name" : "Interval", "Min" : "12956", "Max" : "75456"}
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
