#============================================================================
# collect-result.tcl 
#============================================================================
# @brief: A Tcl script that collect and dump out results from cordic csim & synthesis.
#         The results will be saved under folder ./result/
# @desc:
# 1. print out header infomation if the result file is newly created
# 2. collect synthesis results from Vivado_HLS synthesis report

#---------------------------
# print header information
#---------------------------
set filename [lindex $argv 0]
set hls_prj [lindex $argv 1]
set info "${hls_prj}"
file mkdir "./result"
#file delete -force "./result/${filename}"
if { ! [ file exists "./result/${filename}"] } {
  set fileId [open "./result/${filename}" w]
  puts $fileId "#PE Latency BRAM DSP FF LUT"
  close $fileId
}

#---------------------------
# colect synthesis results
#---------------------------
set fileId [open "./result/${filename}" a+]
set info [lindex [split $info "_ ."] 2]
puts -nonewline $fileId "${info} "
set fp [open "${hls_prj}/solution1/syn/report/worker_csynth.xml" r]
set file_data [read $fp]
close $fp
set data [split $file_data "\n"]
foreach { pattern } { 
  "*Average-caseLatency*" 
  "*BRAM_18K*"
  "*DSP48E*"
  "*FF*"
  "*LUT*"
} {
foreach line $data {
  if { [string match $pattern $line] } {
    set info [lindex [split [lindex [split $line "<"] 1] ">"] 1]
    puts -nonewline $fileId "${info} "
    break
  }
}
}
puts $fileId "\t"
close $fileId
