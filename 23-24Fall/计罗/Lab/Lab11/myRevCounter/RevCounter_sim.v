`timescale 1ns / 1ps
module RevCounter_sim;
	// Inputs
	reg clk;
	reg s;
	// Outputs
	wire [15:0] cnt;
	wire Rc;
	// Instantiate the Unit Under Test (UUT)
	RevCounter uut (
		.clk(clk), 
		.s(s), 
		.cnt(cnt), 
		.Rc(Rc)
	);
	initial forever begin
		clk = 1'b0; #5;
		clk = 1'b1; #5;
	end
	initial begin
		s = 1'b0; #200;
		s = 1'b1; #200;
		end
endmodule

