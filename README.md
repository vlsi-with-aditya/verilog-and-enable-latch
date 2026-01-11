Enable Controlled AND Latch – Verilog RTL Simulation

This repository contains the Verilog implementation and simulation of an enable-controlled AND latch.
The project demonstrates how a missing else condition in an always @(*) block infers a level-sensitive latch and how latch outputs start in an unknown (X) state when no reset is used.

Files
File	Description
and_en_latch.v	 = RTL code for the enable controlled AND latch
tb_and_en_latch.v = 	Testbench used for simulation
wave.vcd = 	GTKWave dump file generated after simulation
README.md	 = Project documentation
How to Run the Simulation

Make sure Icarus Verilog and GTKWave are installed.

iverilog -o latch_sim and_en_latch.v tb_and_en_latch.v
vvp latch_sim
gtkwave wave.vcd

Functionality
Enable (en)	Output y
1	a & b
0	Holds previous value (Latch behavior)
