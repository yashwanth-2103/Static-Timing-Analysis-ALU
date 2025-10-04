# OpenSTA script for Non-Pipelined ALU
read_liberty ../Nangate45.lib
read_verilog ../synth/ALU_nonpipe_netlist.v
read_sdc constraints.sdc
report_checks -path_delay max > ALU_nonpipe_sta_report.txt
report_tns >> ALU_nonpipe_sta_report.txt
report_wns >> ALU_nonpipe_sta_report.txt
exit
