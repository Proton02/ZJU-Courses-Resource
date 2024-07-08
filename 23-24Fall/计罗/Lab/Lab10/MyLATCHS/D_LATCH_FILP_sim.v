// Verilog test fixture created from schematic /home/proton/Xilinx_ISE_DS_Lin_14.7_1015_1/BAMBOO/Lab10/MyLATCHS/D_LATCH_FLIP.sch - Thu Nov 16 15:38:35 2023

`timescale 1ns / 1ps

module D_LATCH_FLIP_D_LATCH_FLIP_sch_tb();

// Inputs
   reg D;

// Output
   wire Q;

// Bidirs

// Instantiate the UUT
   D_LATCH_FLIP UUT (
		.D(D), 
		.Q(Q)
   );
// Initialize Inputs
	initial begin
		D = 1;
		#50;
		D = 0;
	end
	always begin
		
endmodule
