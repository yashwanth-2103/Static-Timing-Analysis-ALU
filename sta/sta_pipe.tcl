# OpenSTA timing analysis script for Pipelined ALU
# Reads standard cell library, netlist, constraints, and reports timing

read_liberty ../Nangate45.lib                    # Load standard cell library
read_verilog ../synth/ALU_pipe_netlist.v        # Read synthesized netlist
read_sdc constraints.sdc                         # Read timing constraints

# Generate STA reports
report_checks -path_delay max > ALU_pipe_sta_report.txt
report_tns >> ALU_pipe_sta_report.txt
report_wns >> ALU_pipe_sta_report.txt

exit
