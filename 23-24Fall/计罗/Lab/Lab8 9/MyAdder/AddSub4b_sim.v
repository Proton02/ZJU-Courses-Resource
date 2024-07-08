// Verilog test fixture created from schematic /home/proton/Xilinx_ISE_DS_Lin_14.7_1015_1/Lab/Lab8/MyAdder/AddSub4b.sch - Tue Nov  7 20:01:30 2023

`timescale 1ns / 1ps

module AddSub4b_AddSub4b_sch_tb();

// Inputs
   reg [3:0] A;
   reg Ctrl;
   reg [3:0] B;

// Output
   wire [3:0] S;
   wire Co;

// Bidirs

// Instantiate the UUT
   AddSub4b UUT (
		.A(A), 
		.S(S), 
		.Co(Co), 
		.Ctrl(Ctrl), 
		.B(B)
   );
// Initialize Inputs
	initial begin
		Ctrl = 0;
		A=4'b1000;
		B=4'b0001;
		#50
		A=4'b1000;
		B=4'b0010;
		#50
		A=4'b1000;
		B=4'b0011;
		#50
		A=4'b1000;
		B=4'b0100;
		#50
		A=4'b1000;
		B=4'b0101;
		#50
		A=4'b1000;
		B=4'b0111;
		#50
		A=4'b1000;
		B=4'b1000;
		#50
		A=4'b1000;
		B=4'b1101;
		#50
		Ctrl = 1;
		A=4'b1000;
		B=4'b0001;
		#50
		A=4'b1000;
		B=4'b0010;
		#50
		A=4'b1000;
		B=4'b0011;
		#50
		A=4'b1000;
		B=4'b0100;
		#50
		A=4'b1000;
		B=4'b0101;
		#50
		A=4'b1000;
		B=4'b0111;
		#50
		A=4'b1000;
		B=4'b1000;
		#50
		A=4'b1000;
		B=4'b1101;
		end
endmodule
