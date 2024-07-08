`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:12:12 12/12/2023
// Design Name:   SLReg8b
// Module Name:   /home/zjdxzn/lab13/ShiftReg8b/SLReg8b_sim.v
// Project Name:  ShiftReg8b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SLReg8b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SLReg8b_sim;

	// Inputs
	reg clk;
	reg S_L;
	reg s_in;
	reg [7:0] p_in;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	SLReg8b uut (
		.clk(clk), 
		.S_L(S_L), 
		.s_in(s_in), 
		.p_in(p_in), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		S_L = 0;
		s_in = 0;
		p_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		S_L = 0;
		
		p_in = 0;
		#20;
		s_in = 1;
		#400;
		S_L = 1;
		s_in = 0;
		p_in = 8'b01010101;
		#100;
		s_in = 1;
		#500;
	end
	always begin
		clk = 0; #20;
		clk = 1; #20;
	end
      
endmodule

