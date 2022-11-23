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
add_files COO_SpMV_orig.cpp
add_files -tb COO_SpMV_test.cpp

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

set_directive_inline -off create_COO
set_directive_inline -off COO_SpMV
set_directive_inline -off count_nnz

# Simulate the C++ design
# csim_design
# Synthesis the design
csynth_design
# Co-simulate the design
cosim_design

exit
