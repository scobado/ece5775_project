#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and synthesizes the digitrec program
#
# @desc: 1. "make" runs csim by default
#        2. "make csim" compiles & executes the fixed-point implementation
#        3. "make clean" cleans up the directory

INC_PATH=/usr/include/vivado_hls
CFLAGS = -I${INC_PATH} -DHLS_NO_XIL_FPO_LIB

all: sw

sw_dense: Dense_SpMV.cpp Dense_SpMV_test.cpp
	@echo "Compiling & simulating Dense_SpMV on amdpool ..."
	g++ ${CFLAGS} $^ -o Dense_SpMV-arm
	./Dense_SpMV-arm

sw_base: COO_SpMV_orig.cpp COO_SpMV_orig_test.cpp
	@echo "Compiling & simulating Baseline SpMV on amdpool ..."
	g++ ${CFLAGS} $^ -o COO_SpMV_orig-arm
	./COO_SpMV_orig-arm

sw_coo: COO_SpMV.cpp COO_SpMV_test.cpp
	@echo "Compiling & simulating SpMV on amdpool ..."
	g++ ${CFLAGS} $^ -o COO_SpMV-arm
	./COO_SpMV-arm

fpga: host.cpp 
	@echo "Compiling host program & running SpMV accelerator ..."
	g++ ${CFLAGS} $^ -o COO_SpMV-fpga
	./COO_SpMV-fpga

clean:
	rm -rf Dense_SpMV COO_SpMV PageRank *.dat *.prj *.log
	rm -rf COO_SpMV-arm vivado_hls.log *.prj result out.dat *~
	rm -rf COO_SpMV-fpga