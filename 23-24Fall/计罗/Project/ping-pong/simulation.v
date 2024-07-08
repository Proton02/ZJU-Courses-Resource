`timescale 1ns / 1ps
module simulation;

	// Inputs
	reg clk;
	reg rst;
	reg PS2_data;
	reg PS2_clk;
	reg [3:0] bar_move_speed;
	reg SW;

	// Outputs
	wire HSync;
	wire VSync;
	wire [3:0] OutBlue;
	wire [3:0] OutGreen;
	wire [3:0] OutRed;
	wire [3:0] AN;
	wire [7:0] Segment;
	wire SEG_EN;
	wire SEG_CLR;
	wire SEG_CLK;
	wire SEG_DT;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.rst(rst), 
		.PS2_data(PS2_data), 
		.PS2_clk(PS2_clk), 
		.bar_move_speed(bar_move_speed), 
		.HSync(HSync), 
		.VSync(VSync), 
		.OutBlue(OutBlue), 
		.OutGreen(OutGreen), 
		.OutRed(OutRed), 
		.AN(AN), 
		.Segment(Segment), 
		.SW(SW), 
		.SEG_EN(SEG_EN), 
		.SEG_CLR(SEG_CLR), 
		.SEG_CLK(SEG_CLK), 
		.SEG_DT(SEG_DT)
	);

	initial begin
		clk = 0;
		rst = 0;
		PS2_data = 0;
		PS2_clk = 0;
		bar_move_speed = 0;
		SW = 0;

		#100;
		
		bar_move_speed = 3;
		PS2_data = 1;#20;
		PS2_data = 0;#20;
		
    
	end
		always begin
			clk = 1; #10;
			clk = 0; #10;
		end
		always begin
			PS2_clk = 1; #10;
			PS2_clk = 0; #10;
		end

      
endmodule

