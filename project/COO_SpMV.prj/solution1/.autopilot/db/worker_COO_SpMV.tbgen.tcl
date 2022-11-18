set moduleName worker_COO_SpMV
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {worker_COO_SpMV}
set C_modelType { void 0 }
set C_modelArgList {
	{ row int 7 regular {array 2500 { 1 3 } 1 1 }  }
	{ col int 7 regular {array 2500 { 1 3 } 1 1 }  }
	{ val_r float 32 regular {array 2500 { 1 3 } 1 1 }  }
	{ output_0 float 32 regular {array 25 { 1 0 } 1 1 }  }
	{ output_1 float 32 regular {array 25 { 1 0 } 1 1 }  }
	{ output_2 float 32 regular {array 25 { 1 0 } 1 1 }  }
	{ output_3 float 32 regular {array 25 { 1 0 } 1 1 }  }
	{ nnz int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "row", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "val_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "output_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "nnz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ row_address0 sc_out sc_lv 12 signal 0 } 
	{ row_ce0 sc_out sc_logic 1 signal 0 } 
	{ row_q0 sc_in sc_lv 7 signal 0 } 
	{ col_address0 sc_out sc_lv 12 signal 1 } 
	{ col_ce0 sc_out sc_logic 1 signal 1 } 
	{ col_q0 sc_in sc_lv 7 signal 1 } 
	{ val_r_address0 sc_out sc_lv 12 signal 2 } 
	{ val_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ val_r_q0 sc_in sc_lv 32 signal 2 } 
	{ output_0_address0 sc_out sc_lv 5 signal 3 } 
	{ output_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ output_0_q0 sc_in sc_lv 32 signal 3 } 
	{ output_0_address1 sc_out sc_lv 5 signal 3 } 
	{ output_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ output_0_we1 sc_out sc_logic 1 signal 3 } 
	{ output_0_d1 sc_out sc_lv 32 signal 3 } 
	{ output_1_address0 sc_out sc_lv 5 signal 4 } 
	{ output_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ output_1_q0 sc_in sc_lv 32 signal 4 } 
	{ output_1_address1 sc_out sc_lv 5 signal 4 } 
	{ output_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ output_1_we1 sc_out sc_logic 1 signal 4 } 
	{ output_1_d1 sc_out sc_lv 32 signal 4 } 
	{ output_2_address0 sc_out sc_lv 5 signal 5 } 
	{ output_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_2_q0 sc_in sc_lv 32 signal 5 } 
	{ output_2_address1 sc_out sc_lv 5 signal 5 } 
	{ output_2_ce1 sc_out sc_logic 1 signal 5 } 
	{ output_2_we1 sc_out sc_logic 1 signal 5 } 
	{ output_2_d1 sc_out sc_lv 32 signal 5 } 
	{ output_3_address0 sc_out sc_lv 5 signal 6 } 
	{ output_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ output_3_q0 sc_in sc_lv 32 signal 6 } 
	{ output_3_address1 sc_out sc_lv 5 signal 6 } 
	{ output_3_ce1 sc_out sc_logic 1 signal 6 } 
	{ output_3_we1 sc_out sc_logic 1 signal 6 } 
	{ output_3_d1 sc_out sc_lv 32 signal 6 } 
	{ nnz sc_in sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "row_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row", "role": "address0" }} , 
 	{ "name": "row_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row", "role": "ce0" }} , 
 	{ "name": "row_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row", "role": "q0" }} , 
 	{ "name": "col_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "col", "role": "address0" }} , 
 	{ "name": "col_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col", "role": "ce0" }} , 
 	{ "name": "col_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col", "role": "q0" }} , 
 	{ "name": "val_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_r", "role": "address0" }} , 
 	{ "name": "val_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_r", "role": "ce0" }} , 
 	{ "name": "val_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "val_r", "role": "q0" }} , 
 	{ "name": "output_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_0", "role": "address0" }} , 
 	{ "name": "output_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce0" }} , 
 	{ "name": "output_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "q0" }} , 
 	{ "name": "output_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_0", "role": "address1" }} , 
 	{ "name": "output_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "ce1" }} , 
 	{ "name": "output_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_0", "role": "we1" }} , 
 	{ "name": "output_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_0", "role": "d1" }} , 
 	{ "name": "output_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_1", "role": "address0" }} , 
 	{ "name": "output_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce0" }} , 
 	{ "name": "output_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1", "role": "q0" }} , 
 	{ "name": "output_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_1", "role": "address1" }} , 
 	{ "name": "output_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "ce1" }} , 
 	{ "name": "output_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_1", "role": "we1" }} , 
 	{ "name": "output_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_1", "role": "d1" }} , 
 	{ "name": "output_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_2", "role": "address0" }} , 
 	{ "name": "output_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce0" }} , 
 	{ "name": "output_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_2", "role": "q0" }} , 
 	{ "name": "output_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_2", "role": "address1" }} , 
 	{ "name": "output_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "ce1" }} , 
 	{ "name": "output_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_2", "role": "we1" }} , 
 	{ "name": "output_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_2", "role": "d1" }} , 
 	{ "name": "output_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_3", "role": "address0" }} , 
 	{ "name": "output_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce0" }} , 
 	{ "name": "output_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_3", "role": "q0" }} , 
 	{ "name": "output_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_3", "role": "address1" }} , 
 	{ "name": "output_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "ce1" }} , 
 	{ "name": "output_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_3", "role": "we1" }} , 
 	{ "name": "output_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_3", "role": "d1" }} , 
 	{ "name": "nnz", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnz", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"], "CDFG" : "worker_COO_SpMV", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.vector_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.worker_fadd_32ns_32ns_32_5_full_dsp_U26", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.worker_fmul_32ns_32ns_32_4_max_dsp_U27", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.worker_urem_7ns_6ns_7_11_U28", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.worker_mul_7ns_34ns_65_3_U29", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.worker_mux_4to1_sel32_32_1_U30", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2519", "Max" : "2519"}
	, {"Name" : "Interval", "Min" : "2519", "Max" : "2519"}
]}

set Spec2ImplPortList { 
	row { ap_memory {  { row_address0 mem_address 1 12 }  { row_ce0 mem_ce 1 1 }  { row_q0 mem_dout 0 7 } } }
	col { ap_memory {  { col_address0 mem_address 1 12 }  { col_ce0 mem_ce 1 1 }  { col_q0 mem_dout 0 7 } } }
	val_r { ap_memory {  { val_r_address0 mem_address 1 12 }  { val_r_ce0 mem_ce 1 1 }  { val_r_q0 mem_dout 0 32 } } }
	output_0 { ap_memory {  { output_0_address0 mem_address 1 5 }  { output_0_ce0 mem_ce 1 1 }  { output_0_q0 mem_dout 0 32 }  { output_0_address1 mem_address 1 5 }  { output_0_ce1 mem_ce 1 1 }  { output_0_we1 mem_we 1 1 }  { output_0_d1 mem_din 1 32 } } }
	output_1 { ap_memory {  { output_1_address0 mem_address 1 5 }  { output_1_ce0 mem_ce 1 1 }  { output_1_q0 mem_dout 0 32 }  { output_1_address1 mem_address 1 5 }  { output_1_ce1 mem_ce 1 1 }  { output_1_we1 mem_we 1 1 }  { output_1_d1 mem_din 1 32 } } }
	output_2 { ap_memory {  { output_2_address0 mem_address 1 5 }  { output_2_ce0 mem_ce 1 1 }  { output_2_q0 mem_dout 0 32 }  { output_2_address1 mem_address 1 5 }  { output_2_ce1 mem_ce 1 1 }  { output_2_we1 mem_we 1 1 }  { output_2_d1 mem_din 1 32 } } }
	output_3 { ap_memory {  { output_3_address0 mem_address 1 5 }  { output_3_ce0 mem_ce 1 1 }  { output_3_q0 mem_dout 0 32 }  { output_3_address1 mem_address 1 5 }  { output_3_ce1 mem_ce 1 1 }  { output_3_we1 mem_we 1 1 }  { output_3_d1 mem_din 1 32 } } }
	nnz { ap_none {  { nnz in_data 0 32 } } }
}
