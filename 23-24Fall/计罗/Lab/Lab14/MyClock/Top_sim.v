`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:32:01 12/21/2023
// Design Name:   Top
// Module Name:   /home/zjdxzn/lab14/MyClock/Top_sim.v
// Project Name:  MyClock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Top_sim;

	// Inputs
	reg clk1;
	reg CTT;
	reg CTP;
	reg [7:0] hour_in;
	reg [7:0] min_in;
	reg [7:0] sec_in;
	reg hour_ld;
	reg min_ld;
	reg sec_ld;

	// Outputs
	wire clk;
	wire [23:0] num;
	wire SEG_CLK;
	wire SEG_DT;
	wire [63:0] disp_num;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk1(clk1), 
		.CTT(CTT), 
		.CTP(CTP), 
		.hour_in(hour_in), 
		.min_in(min_in), 
		.sec_in(sec_in), 
		.hour_ld(hour_ld), 
		.min_ld(min_ld), 
		.sec_ld(sec_ld), 
		.clk(clk), 
		.num(num), 
		.SEG_CLK(SEG_CLK), 
		.SEG_DT(SEG_DT), 
		.disp_num(disp_num)
	);

	initial begin
		// Initialize Inputs
		clk1 = 0;
		CTT = 0;
		CTP = 0;
		hour_in = 0;
		min_in = 0;
		sec_in = 0;
		hour_ld = 0;
		min_ld = 0;
		sec_ld = 0;

		// Wait 100 ns for global reset to finish
		#100;
       CTT=0;
		 CTP=0;

		 sec_ld = 1;
		 min_ld = 1;
		 hour_ld = 1;

		 hour_in[7:4]=2;
		 hour_in[3:0]=3;
		 min_in[7:4]=5;
		 min_in[3:0]=9;
		 sec_in[7:4]=5;
		 sec_in[3:0]=8;
		 CTT=0;
		 CTP=0;
		 #3000;
		 sec_ld = 0;
		 min_ld = 0;
		 hour_ld = 0;
		 #3000;
		 sec_ld = 1;
		 min_ld = 1;
		 hour_ld = 1;
		 CTT=1;
		 CTP=1;
		 end

		 always begin
		 clk1=0;#10;
		 clk1=1;#10;
		 end 
		// Add stimulus here
      
endmodule

