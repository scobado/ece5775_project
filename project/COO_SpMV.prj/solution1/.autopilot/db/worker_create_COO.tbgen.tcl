set moduleName worker_create_COO
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {worker_create_COO}
set C_modelType { int 32 }
set C_modelArgList {
	{ input_r float 32 regular {array 2500 { 1 3 } 1 1 }  }
	{ row int 6 regular {array 2500 { 0 3 } 0 1 }  }
	{ col int 8 regular {array 2500 { 0 3 } 0 1 }  }
	{ val_r float 32 regular {array 2500 { 0 3 } 0 1 }  }
	{ nnz int 32 regular {array 25 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row", "interface" : "memory", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "col", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "val_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nnz", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 12 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 32 signal 0 } 
	{ row_address0 sc_out sc_lv 12 signal 1 } 
	{ row_ce0 sc_out sc_logic 1 signal 1 } 
	{ row_we0 sc_out sc_logic 1 signal 1 } 
	{ row_d0 sc_out sc_lv 6 signal 1 } 
	{ col_address0 sc_out sc_lv 12 signal 2 } 
	{ col_ce0 sc_out sc_logic 1 signal 2 } 
	{ col_we0 sc_out sc_logic 1 signal 2 } 
	{ col_d0 sc_out sc_lv 8 signal 2 } 
	{ val_r_address0 sc_out sc_lv 12 signal 3 } 
	{ val_r_ce0 sc_out sc_logic 1 signal 3 } 
	{ val_r_we0 sc_out sc_logic 1 signal 3 } 
	{ val_r_d0 sc_out sc_lv 32 signal 3 } 
	{ nnz_address0 sc_out sc_lv 5 signal 4 } 
	{ nnz_ce0 sc_out sc_logic 1 signal 4 } 
	{ nnz_q0 sc_in sc_lv 32 signal 4 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "row_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row", "role": "address0" }} , 
 	{ "name": "row_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row", "role": "ce0" }} , 
 	{ "name": "row_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row", "role": "we0" }} , 
 	{ "name": "row_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "row", "role": "d0" }} , 
 	{ "name": "col_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "col", "role": "address0" }} , 
 	{ "name": "col_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col", "role": "ce0" }} , 
 	{ "name": "col_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col", "role": "we0" }} , 
 	{ "name": "col_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "col", "role": "d0" }} , 
 	{ "name": "val_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "val_r", "role": "address0" }} , 
 	{ "name": "val_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_r", "role": "ce0" }} , 
 	{ "name": "val_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_r", "role": "we0" }} , 
 	{ "name": "val_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "val_r", "role": "d0" }} , 
 	{ "name": "nnz_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "nnz", "role": "address0" }} , 
 	{ "name": "nnz_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nnz", "role": "ce0" }} , 
 	{ "name": "nnz_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnz", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"], "CDFG" : "worker_create_COO", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "row", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.worker_fcmp_32ns_32ns_1_1_U1", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2628", "Max" : "10128"}
	, {"Name" : "Interval", "Min" : "2628", "Max" : "10128"}
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 12 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 32 } } }
	row { ap_memory {  { row_address0 mem_address 1 12 }  { row_ce0 mem_ce 1 1 }  { row_we0 mem_we 1 1 }  { row_d0 mem_din 1 6 } } }
	col { ap_memory {  { col_address0 mem_address 1 12 }  { col_ce0 mem_ce 1 1 }  { col_we0 mem_we 1 1 }  { col_d0 mem_din 1 8 } } }
	val_r { ap_memory {  { val_r_address0 mem_address 1 12 }  { val_r_ce0 mem_ce 1 1 }  { val_r_we0 mem_we 1 1 }  { val_r_d0 mem_din 1 32 } } }
	nnz { ap_memory {  { nnz_address0 mem_address 1 5 }  { nnz_ce0 mem_ce 1 1 }  { nnz_q0 mem_dout 0 32 } } }
}
