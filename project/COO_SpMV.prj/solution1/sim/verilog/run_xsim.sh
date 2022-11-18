
xelab xil_defaultlib.apatb_COO_SpMV_top -prj COO_SpMV.prj --initfile "/opt/xilinx/xilinx_2016.2/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s COO_SpMV 
xsim --noieeewarnings COO_SpMV -tclbatch COO_SpMV.tcl

