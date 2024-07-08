`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:48:45 12/14/2023
// Design Name:   SEGP2S
// Module Name:   /home/mdlws/LCDF/SEGP2S/SEGP2S_sim.v
// Project Name:  SEGP2S
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SEGP2S
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SEGP2S_sim;

	// Inputs
	reg clk;
	reg [15:0] SW;

	// Outputs
	wire SEG_CLK;
	wire SEG_CLR;
	wire SEG_EN;
	wire SEG_DT;
	

	// Instantiate the Unit Under Test (UUT)
	SEGP2S uut (
		.clk(clk), 
		.SW(SW), 
		.SEG_CLK(SEG_CLK), 
		.SEG_CLR(SEG_CLR), 
		.SEG_EN(SEG_EN), 
		.SEG_DT(SEG_DT), 
	);
	integer i;
	initial begin
		// Initialize Inputs
		clk = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		SW[14] = 1;
		for(i = 0; i < 8; i = i + 1)begin
			SW[i] = 1;
		end
		#25;
		for (i = 0; i < 8; i = i + 1)begin
			SW[i] = 0;
		end
		#25;
		
		SW[14] = 0;
		SW[7] = 1; #25;SW[7] = 0; #25;
		SW[7] = 1; #25;SW[7] = 0; #25;
		
		SW[5] = 1; #25;SW[5] = 0; #25;
		
		for(i=0; i<2; i=i+1)begin
			SW[3] = 1;#25;SW[3]=0;#25;
		end
		for(i=0; i<5; i=i+1)begin
			SW[2] = 1;#25; SW[2]=0;#25;
		end
		for(i=0; i<3; i=i+1)begin
			SW[1] = 1;#25;SW[1]=0;#25;
		end
		
		for(i=0; i<5; i=i+1)begin
			SW[0] = 1;#25;SW[1]=0;#25;
		end
		
		SW[14] = 0;
		#500;
		SW[15] = 1;#20;
		SW[15] = 0;
	end
	always begin
		clk = 1; #10;
		clk = 0; #10;
	end
      
endmodule

