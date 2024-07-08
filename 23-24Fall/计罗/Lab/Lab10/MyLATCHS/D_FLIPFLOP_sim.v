// Verilog test fixture created from schematic /home/proton/Xilinx_ISE_DS_Lin_14.7_1015_1/BAMBOO/Lab10/MyLATCHS/D_FLIPFLOP.sch - Thu Nov 16 16:09:28 2023

`timescale 1ns / 1ps

module D_FLIPFLOP_D_FLIPFLOP_sch_tb();

// Inputs
   reg S;
   reg C;
   reg D;
   reg R;

// Output
   wire Qbar;
   wire Q;

// Bidirs

// Instantiate the UUT
   D_FLIPFLOP UUT (
		.S(S), 
		.C(C), 
		.D(D), 
		.R(R), 
		.Qbar(Qbar), 
		.Q(Q)
   );
// Initialize Inputs
	initial begin
		R = 1;
		S = 1;
		D = 0; #150;
		D = 1; #150; 
		R = 0;
		S = 1;
		D = 0; #150;
		D = 1; #150;
		R = 1;
		S = 0;
		D = 0; #150;
		D = 1; #150;
		R = 0;
		S = 1;
		D = 0; #150;
		D = 1; #150;
	end
	always begin
		C=0; #50;
		C=1; #50;
	end
endmodule
