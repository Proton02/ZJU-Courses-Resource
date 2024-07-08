`timescale 1ns / 1ps
module MyRegister4b_sim;

	// Inputs
	reg clk;
	reg [3:0] IN;
	reg Load;

	// Outputs
	wire [3:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	MyRegister4b uut (
		.clk(clk), 
		.IN(IN), 
		.Load(Load), 
		.OUT(OUT)
	);

	initial begin
		SW = 0;
		
		SW[15] = 1;
		SW[2] = 1; #50;
		SW[2] = 0; #50;
		
		SW[15] = 0;
		SW[0] = 0;
		SW[2] = 1; #50;
		SW[2] = 0; #50;
		
		SW[2] = 1; #50;
		SW[2] = 0; #50;
		
		SW[0] = 1; 
		SW[2] = 1; #50;
		SW[2] = 0; #50;
		SW[2] = 1; #50;
		SW[2] = 0; #50;
		SW[2] = 1; #50;
		SW[2] = 0; #50;

	end
      
endmodule

