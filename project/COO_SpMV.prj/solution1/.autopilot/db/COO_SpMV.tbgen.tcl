set C_TypeInfoList {{ 
"COO_SpMV" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"row": [[], {"array": [ {"scalar": "int"}, [10000]]}] }, {"col": [[], {"array": [ {"scalar": "int"}, [10000]]}] }, {"val": [[], {"array": [ {"scalar": "float"}, [10000]]}] }, {"vector": [[], {"array": [ {"scalar": "float"}, [100]]}] }, {"output": [[], {"array": [ {"scalar": "float"}, [100]]}] }, {"nnz": [[], {"scalar": "int"}] }],[],""]
}}
set moduleName COO_SpMV
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {COO_SpMV}
set C_modelType { void 0 }
set C_modelArgList {
	{ row int 32 regular {array 10000 { 1 3 } 1 1 }  }
	{ col int 32 regular {array 10000 { 1 3 } 1 1 }  }
	{ val_r float 32 regular {array 10000 { 1 3 } 1 1 }  }
	{ vector float 32 regular {array 100 { 1 3 } 1 1 }  }
	{ output_r float 32 regular {array 100 { 2 3 } 1 1 }  }
	{ nnz int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "row", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "row","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9999,"step" : 1}]}]}]} , 
 	{ "Name" : "col", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "col","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9999,"step" : 1}]}]}]} , 
 	{ "Name" : "val_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "val","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9999,"step" : 1}]}]}]} , 
 	{ "Name" : "vector", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "vector","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "nnz", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "nnz","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ row_address0 sc_out sc_lv 14 signal 0 } 
	{ row_ce0 sc_out sc_logic 1 signal 0 } 
	{ row_q0 sc_in sc_lv 32 signal 0 } 
	{ col_address0 sc_out sc_lv 14 signal 1 } 
	{ col_ce0 sc_out sc_logic 1 signal 1 } 
	{ col_q0 sc_in sc_lv 32 signal 1 } 
	{ val_r_address0 sc_out sc_lv 14 signal 2 } 
	{ val_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ val_r_q0 sc_in sc_lv 32 signal 2 } 
	{ vector_address0 sc_out sc_lv 7 signal 3 } 
	{ vector_ce0 sc_out sc_logic 1 signal 3 } 
	{ vector_q0 sc_in sc_lv 32 signal 3 } 
	{ output_r_address0 sc_out sc_lv 7 signal 4 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 4 } 
	{ output_r_we0 sc_out sc_logic 1 signal 4 } 
	{ output_r_d0 sc_out sc_lv 32 signal 4 } 
	{ output_r_q0 sc_in sc_lv 32 signal 4 } 
	{ nnz sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "row_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "row", "role": "address0" }} , 
 	{ "name": "row_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row", "role": "ce0" }} , 
 	{ "name": "row_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row", "role": "q0" }} , 
 	{ "name": "col_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "col", "role": "address0" }} , 
 	{ "name": "col_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col", "role": "ce0" }} , 
 	{ "name": "col_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col", "role": "q0" }} , 
 	{ "name": "val_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "val_r", "role": "address0" }} , 
 	{ "name": "val_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "val_r", "role": "ce0" }} , 
 	{ "name": "val_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "val_r", "role": "q0" }} , 
 	{ "name": "vector_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "vector", "role": "address0" }} , 
 	{ "name": "vector_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vector", "role": "ce0" }} , 
 	{ "name": "vector_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vector", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "q0" }} , 
 	{ "name": "nnz", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnz", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"], "CDFG" : "COO_SpMV", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "row", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "col", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "val_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "vector", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "nnz", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.COO_SpMV_fadd_32ns_32ns_32_5_full_dsp_U1", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.COO_SpMV_fmul_32ns_32ns_32_4_max_dsp_U2", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20102", "Max" : "120102"}
	, {"Name" : "Interval", "Min" : "20103", "Max" : "120103"}
]}

set Spec2ImplPortList { 
	row { ap_memory {  { row_address0 mem_address 1 14 }  { row_ce0 mem_ce 1 1 }  { row_q0 mem_dout 0 32 } } }
	col { ap_memory {  { col_address0 mem_address 1 14 }  { col_ce0 mem_ce 1 1 }  { col_q0 mem_dout 0 32 } } }
	val_r { ap_memory {  { val_r_address0 mem_address 1 14 }  { val_r_ce0 mem_ce 1 1 }  { val_r_q0 mem_dout 0 32 } } }
	vector { ap_memory {  { vector_address0 mem_address 1 7 }  { vector_ce0 mem_ce 1 1 }  { vector_q0 mem_dout 0 32 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 7 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 32 }  { output_r_q0 mem_dout 0 32 } } }
	nnz { ap_none {  { nnz in_data 0 32 } } }
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
