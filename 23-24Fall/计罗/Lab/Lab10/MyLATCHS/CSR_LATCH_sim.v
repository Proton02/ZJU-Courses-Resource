`timescale 1ns / 1ps
module CSR_LATCH_CSR_LATCH_sch_tb();

// Inputs
   reg C;
   reg S;
   reg R;

// Output
   wire Q;
   wire nQ;

// Bidirs

// Instantiate the UUT
   CSR_LATCH UUT (
		.Q(Q), 
		.nQ(nQ), 
		.C(C), 
		.S(S), 
		.R(R)
   );
// Initialize Inputs
	initial begin
		C = 1;
		R = 1; S = 1; #50;
		R = 1; S = 0; #50;
		R = 1; S = 1; #50;
		R = 0; S = 1; #50;
		R = 1; S = 0; #50;
		R = 0; S = 0; #50;
		R = 1; S = 1; #50;
		C = 0;
		R = 1; S = 1; #50;
		R = 1; S = 0; #50;
		R = 1; S = 1; #50;
		R = 0; S = 1; #50;
		R = 1; S = 1; #50;
		R = 0; S = 0; #50;
		R = 1; S = 1; #50;	end
endmodule
