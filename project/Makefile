#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and synthesizes the digitrec program
#
# @desc: 1. "make" runs csim by default
#        2. "make csim" compiles & executes the fixed-point implementation
#        3. "make clean" cleans up the directory

all: dense

dense: Dense_SpMV.cpp Dense_SpMV_test.cpp
	@echo "Compiling & simulating cnn on amdpool ..."
	g++ $^ -o Dense_SpMV -lrt
	./Dense_SpMV

coo: COO_SpMV.cpp COO_SpMV_test.cpp
	@echo "Compiling & simulating cnn on amdpool ..."
	g++ $^ -o COO_SpMV -lrt
	./COO_SpMV

pagerank: pagerank.cpp pagerank_test.cpp
	@echo "Compiling & simulating cnn on amdpool ..."
	g++ $^ -o pagerank -lrt
	./pagerank


vivado_dense:
	@echo "Run Vivado csim and HLS for Dense SpMV"
	vivado_hls -f run_dense.tcl

vivado_coo:
	@echo "Run Vivado csim and HLS for COO SpMV"
	vivado_hls -f run_coo.tcl

vivado_pagerank:
	@echo "Run Vivado csim and HLS for PageRank"
	vivado_hls -f run_pagerank.tcl

clean:
	rm -rf Dense_SpMV COO_SpMV PageRank *.dat *.prj *.log
