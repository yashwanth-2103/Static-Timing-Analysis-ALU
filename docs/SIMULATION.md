# Simulation Instructions for ALU Designs

Simulate **Non-Pipelined** and **Pipelined ALUs** and generate waveforms.

## Tools
- Icarus Verilog (`iverilog`)
- GTKWave (`gtkwave`)  
- ModelSim / Vivado can also be used.

## Non-Pipelined ALU
```bash
iverilog -o tb_nonpipe.vvp src/ALU_nonpipe.v src/tb_ALU_nonpipe.v
vvp tb_nonpipe.vvp
gtkwave dump.vcd
