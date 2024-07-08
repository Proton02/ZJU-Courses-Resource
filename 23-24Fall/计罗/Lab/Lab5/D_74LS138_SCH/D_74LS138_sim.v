// Verilog test fixture created from schematic /root/Xilinx_ISE_DS_Lin_14.7_1015_1/Lab/D_74LS138_SCH/D_74LS138.sch - Wed Oct 18 19:57:41 2023

`timescale 1ns / 1ps

module D_74LS138_D_74LS138_sch_tb();

// Inputs
   reg C;
   reg B;
	reg A;
   reg G2A;
   reg G2B;
	reg G;

// Output
   wire [7:0] Y;

// Bidirs

// Instantiate the UUT
   D_74LS138 UUT (
		.C(C),
		.B(B), 
		.A(A), 
		.G2A(G2A), 
		.G2B(G2B),
		.G(G),
		.Y(Y)
   );
// Initialize Inputs
// `ifdef auto_init
	integer i;
	initial begin

		
		C = 0;
		B = 0;	
		A = 0;	

		G = 1;
		G2A = 0;
		G2B = 0;
		#50;

		for (i=0; i<=7;i=i+1) begin
			{C,B,A} = i;
		#50;
	end
		assign G = 0;
		assign G2A = 0;
		assign G2B = 0;
		#50;
		
		assign G = 1;
		assign G2A = 1;
		assign G2B = 0;
		#50;
		
		assign G = 1;
		assign G2A = 0;
		assign G2B = 1;
		#50;		
	end
// `endif
endmodule
