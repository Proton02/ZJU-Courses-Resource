// Verilog test fixture created from schematic /home/proton/Xilinx_ISE_DS_Lin_14.7_1015_1/Lab/Lab8/MyAdder/AddSub1b.sch - Tue Nov  7 19:07:10 2023

`timescale 1ns / 1ps

module AddSub1b_AddSub1b_sch_tb();

// Inputs
	reg Ci;
	reg A;
	reg B;
	reg Ctrl;
// Output
	wire S;
	wire Co;
// Bidirs

// Instantiate the UUT
   AddSub1b UUT (
		.Ci(Ci),
		.A(A),
		.S(S),
		.Co(Co),
		.B(B),
		.Ctrl(Ctrl)
   );
// Initialize Inputs
	initial begin
		A=0;
		B=0;
		Ci=0;
		Ctrl=0;
		#50;
		A=0;
		B=1;
		#50
		A=1;
		B=0;
		#50
		A=1;
		B=1;
		#50
		A=0;
		B=0;
		Ctrl=1;
		Ci=1;	
		#50
		A=0;
		B=1;
		#50
		A=1;
		B=0;
		#50
		A=1;
		B=1;
	end
endmodule
