
xelab xil_defaultlib.apatb_worker_top -prj worker.prj --initfile "/opt/xilinx/xilinx_2016.2/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s worker 
xsim --noieeewarnings worker -tclbatch worker.tcl

