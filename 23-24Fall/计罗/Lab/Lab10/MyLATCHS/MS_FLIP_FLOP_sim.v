// Verilog test fixture created from schematic /home/proton/Xilinx_ISE_DS_Lin_14.7_1015_1/BAMBOO/Lab10/MyLATCHS/MS_FLIPFLOP.sch - Thu Nov 16 15:58:21 2023

`timescale 1ns / 1ps

module MS_FLIPFLOP_MS_FLIPFLOP_sch_tb();

// Inputs
   reg C;
   reg S;
   reg R;

// Output
   wire Q;
   wire nQ;

// Bidirs

// Instantiate the UUT
   MS_FLIPFLOP UUT (
		.C(C), 
		.Q(Q), 
		.nQ(nQ), 
		.S(S), 
		.R(R)
   );
// Initialize Inputs
	initial begin
		R=0;S=0; #50;
		R=1;S=0; #50;
		R=0;S=0; #40;
		R=0;S=0; #5;
		R=0;S=1; #5;
		R=0;S=0; #50;
		R=1;S=1; #40;
		R=1;S=0; #50;
		R=1;S=1; #50;
		R=0;S=1; #50;
		R=1;S=1; #50;
		R=0;S=0; #50;
		R=1;S=1; #50;
	end
	always begin
		C=0;#20;
		C=1;#20;
	end
endmodule
