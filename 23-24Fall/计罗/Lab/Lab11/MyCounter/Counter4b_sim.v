`timescale 1ns / 1ps
module Counter4b_Counter4b_sch_tb();

// Inputs
   reg clk;

// Output
   wire Qa;
   wire Qb;
   wire Qc;
   wire Qd;
   wire Rc;

// Bidirs

// Instantiate the UUT
   Counter4b UUT (
		.Qa(Qa), 
		.Qb(Qb), 
		.Qc(Qc), 
		.Qd(Qd), 
		.clk(clk), 
		.Rc(Rc)
   );
// Initialize Inputs
	initial forever begin
		clk = 1'b0; #100;
		clk = 1'b1; #100;
	end
endmodule
