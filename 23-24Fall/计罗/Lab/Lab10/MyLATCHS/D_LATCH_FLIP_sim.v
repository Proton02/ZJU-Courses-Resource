`timescale 1ns / 1ps

module D_LATCH_FLIP_D_LATCH_FLIP_sch_tb();

// Inputs
   reg D;
   reg C;

// Output
   wire Q;
   wire Qbar;

// Bidirs

// Instantiate the UUT
   D_LATCH_FLIP UUT (
		.Q(Q), 
		.Qbar(Qbar), 
		.D(D), 
		.C(C)
   );
// Initialize Inputs
	initial begin
		D = 1;
		#50;
		D = 0;
	end
	always begin
		C = 0;
		#30;
		C = 1;
		#30;
	end
endmodule
