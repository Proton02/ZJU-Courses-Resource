`timescale 1ns / 1ps
module SR_LATCH_SR_LATCH_sch_tb();

// Inputs
   reg S;
   reg R;

// Output
   wire Q;
   wire Qbar;

// Bidirs

// Instantiate the UUT
   SR_LATCH UUT (
		.Q(Q), 
		.Qbar(Qbar), 
		.S(S), 
		.R(R)
   );
// Initialize Inputs
	initial begin
		R=1;S=1; #50;
		R=1;S=0; #50;
		R=1;S=1; #50;
		R=0;S=1; #50;
		R=1;S=1; #50;
		R=0;S=0; #50;
		R=1;S=1; #50;
	end
endmodule
