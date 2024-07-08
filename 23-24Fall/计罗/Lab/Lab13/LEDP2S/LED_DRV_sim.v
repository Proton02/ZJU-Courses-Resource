`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:20:47 12/12/2023
// Design Name:   LED_DRV
// Module Name:   /home/zjdxzn/lab13/LEDP2S/LED_DRV_sim.v
// Project Name:  LEDP2S
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LED_DRV
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LED_DRV_sim;

	// Inputs
	reg clk;
	reg [15:0] SW;

	// Outputs
	wire LED_CLK;
	wire LED_CLR;
	wire LED_EN;
	wire LED_D0;
	wire [15:0] num;
	wire [15:0] reg_num;

	// Instantiate the Unit Under Test (UUT)
	LED_DRV uut (
		.clk(clk), 
		.SW(SW), 
		.LED_CLK(LED_CLK), 
		.LED_CLR(LED_CLR), 
		.LED_EN(LED_EN), 
		.LED_D0(LED_D0), 
		.num(num), 
		.reg_num(reg_num)
	);
	integer i;
	initial begin
		// Initialize Inputs
		clk = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		SW[14] = 1;
		SW[3] = 1; SW[2]=1; SW[1]=1; SW[0]=1; #20
		SW[3] = 0; SW[2]=0; SW[1]=0; SW[0]=0; #20
		
      SW[14] = 0;
		for (i=0;i<4;i=i+1)begin
			SW[3] = 0;#20 SW[3] = 1;#20;
		end
		for (i=0;i<3;i=i+1)begin
			SW[2] = 0;#20 SW[2] = 1;#20;
		end
		for (i=0;i<2;i=i+1)begin
			SW[1] = 0;#20 SW[1] = 1;#20;
		end
		SW[0] = 0;#20 SW[0] = 1;#20;
		
		SW[14] = 0;
		SW[15] = 1;#20
		SW[15] = 0;
	end
	
		always begin
			clk = 1; #10
			clk = 0; #10;
		end
      
endmodule

