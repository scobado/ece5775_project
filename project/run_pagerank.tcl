#=============================================================================
# run-pagerank.tcl 
#=============================================================================
# @brief: A Tcl script for pagerank experiments.
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
set hls_prj "PageRank.prj"

# Open/reset the project
open_project ${hls_prj} -reset
# Top function of the design is "main_function"
set_top main_function

# Add design and testbench files
add_files pagerank.cpp
add_files -tb pagerank_test.cpp

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

set_directive_inline -off SpMV
set_directive_inline -off worker
set_directive_inline -off vector_cp
set_directive_inline -off count_nnz
set_directive_inline -off is_converged
set_directive_inline -off create_COO
set_directive_inline -off COO_SpMV

set_directive_array_partition -type complete -dim 1 SpMV transposed_9
set_directive_array_partition -type complete -dim 1 SpMV tmp_dest
set_directive_array_partition -type complete -dim 1 SpMV row
set_directive_array_partition -type complete -dim 1 SpMV col
set_directive_array_partition -type complete -dim 1 SpMV val
set_directive_array_partition -type complete -dim 1 SpMV row_nnz 
set_directive_array_partition -type complete -dim 1 main_function v_new
set_directive_array_partition -type complete -dim 1 main_function v_old

set_directive_unroll SpMV/LOOP_PE1
set_directive_unroll SpMV/LOOP_CONVERGED
set_directive_unroll SpMV/LOOP_VCOPY
set_directive_unroll SpMV/LOOP_VNEW
set_directive_unroll SpMV/LOOP_PE2
set_directive_unroll SpMV/LOOP_DEST1

# Simulate the C++ design
# csim_design
# Synthesis the design
csynth_design
# Co-simulate the design
cosim_design

exit
