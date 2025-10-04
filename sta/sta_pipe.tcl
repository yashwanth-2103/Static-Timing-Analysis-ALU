# OpenSTA script for Pipelined ALU
read_liberty ../Nangate45.lib
read_verilog ../synth/ALU_pipe_netlist.v
read_sdc constraints.sdc
report_checks -path_delay max > ALU_pipe_sta_report.txt
report_tns >> ALU_pipe_sta_report.txt
report_wns >> ALU_pipe_sta_report.txt
exit
