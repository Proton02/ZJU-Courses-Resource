`timescale 1ns / 1ps
module D_LATCH_D_LATCH_sch_tb();

// Inputs
   reg C;
   reg D;

// Output
   wire Q;
   wire Qbar;

// Bidirs

// Instantiate the UUT
   D_LATCH UUT (
		.Q(Q), 
		.Qbar(Qbar), 
		.C(C), 
		.D(D)
   );
// Initialize Inputs
	initial begin
		C=1;D=1; #50;
		D=0; #50;
		C=0;D=1; #50;
		D=0;
	end
endmodule
