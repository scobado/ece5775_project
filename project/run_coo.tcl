#=============================================================================
# run-float.tcl 
#=============================================================================
# @brief: A Tcl script for floating-point experiments.
#
# @desc: This script runs a batch of simulation & synthesis experiments
# to explore trade-offs between accuracy, performance, and area for 
# floating-point implementation of the CORDIC core.
#
# 1. The user specifies number_itertions
# 2. Results are collected in a single file ./result/float-result.csv
# 3. out.dat from each individual experiment is also copied to ./result 

#------------------------------------------------------
# Set result filename and clean old data
#------------------------------------------------------
set filename "coo_result.csv"
file delete -force "./result/${filename}"

#------------------------------------------------------
# run batch experiments
#------------------------------------------------------

# Project name
set hls_prj "COO_SpMV.prj"

# Open/reset the project
open_project ${hls_prj} -reset
# Top function of the design is "COO SpMV"
set_top worker

# Add design and testbench files
add_files COO_SpMV.cpp
add_files -tb COO_SpMV_test.cpp

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

set_directive_inline -off create_COO
set_directive_inline -off COO_SpMV
set_directive_inline -off count_nnz

set_directive_array_partition -type complete -dim 1 worker matrix_1
set_directive_array_partition -type complete -dim 1 worker dest_1
set_directive_array_partition -type complete -dim 1 worker row_1
set_directive_array_partition -type complete -dim 1 worker col_1
set_directive_array_partition -type complete -dim 1 worker val_1
set_directive_array_partition -type complete -dim 1 worker row_nnz 

set_directive_unroll worker/LOOP_PE1
set_directive_unroll worker/LOOP_PE2
set_directive_unroll worker/LOOP_DEST1







#set_directive_inline -off create_COO
#set_directive_inline -off COO_SpMV
#set_directive_inline -off count_nnz

#set_directive_array_partition -type complete -dim 1 worker matrix_1
#set_directive_array_partition -type complete -dim 2 worker matrix_1
#set_directive_array_partition -type complete -dim 1 worker dest_1
#set_directive_array_partition -type complete -dim 1 worker row_1
#set_directive_array_partition -type complete -dim 1 worker col_1
#set_directive_array_partition -type complete -dim 1 worker val_1
#set_directive_array_partition -type complete -dim 0 worker row_nnz 

#set_directive_unroll worker/LOOP_PE
#set_directive_unroll worker/LOOP_DEST1
#set_directive_unroll worker/LOOP_NNZ_OUT
#set_directive_unroll worker/LOOP_NNZ_IN

#set_directive_pipeline worker/LOOP_DEST1_ST
#set_directive_pipeline create_COO/LOOP_BUFFER

#set_directive_pipeline count_nnz/LOOP_COUNT


# Simulate the C++ design
# csim_design
# Synthesis the design
csynth_design
# Co-simulate the design
cosim_design

exit
