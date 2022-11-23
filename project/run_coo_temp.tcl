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

set num_pes { 1 2 4 5 10}

#------------------------------------------------------
# run batch experiments
#------------------------------------------------------

foreach { PE } $num_pes {

# Define the bitwidth macros from CFLAGs
set CFLAGS "-DPE=${PE}"

# Project name
# set hls_prj "COO_SpMV.prj"
set hls_prj "COO_SpMV_${PE}.prj"

# Open/reset the project
open_project ${hls_prj} -reset
# Top function of the design is "COO SpMV"
set_top worker

# Add design and testbench files
add_files COO_SpMV.cpp -cflags $CFLAGS
add_files -tb COO_SpMV_test.cpp -cflags $CFLAGS

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

# Simulate the C++ design
# csim_design
# Synthesis the design
csynth_design
# Co-simulate the design
cosim_design

#---------------------------------------------
# Collect & dump out results from HLS reports
#---------------------------------------------
set argv [list $filename $hls_prj]
set argc 2
source "./collect_results.tcl"
}

exit
