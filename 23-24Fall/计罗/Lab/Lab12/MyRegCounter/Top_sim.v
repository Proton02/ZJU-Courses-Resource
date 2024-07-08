`timescale 1ns / 1ps
module Top_sim;

	// Inputs
	reg clk;
	reg [15:0] SW;

	// Outputs
	wire [15:0] num;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.SW(SW), 
		.num(num)
	);

	initial begin
		SW = 0;
		
		SW[15] = 1;
		SW[2] = 0; #50;
		SW[2] = 1; #50;
		
		SW[15] = 0;
		SW[0] = 0;
		SW[2] = 0; #50;
		SW[2] = 1; #50;
		
		SW[2] = 0; #50;
		SW[2] = 1; #50;
		
		SW[0] = 1; 
		SW[2] = 0; #50;
		SW[2] = 1; #50;
		SW[2] = 0; #50;
		SW[2] = 1; #50;
		SW[2] = 0; #50;
		SW[2] = 1; #50;
		
		#50;
	end
	
	always begin
		clk = 1; #5;
		clk = 0; #5;
	end
	
endmodule

