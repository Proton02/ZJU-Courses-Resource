`timescale 1ns / 1ps
module Top(
	input wire clk,
	input wire S,
	output wire [7:0]SEGMENT,
	output wire [3:0]AN,
	output wire LED
    );
	 
	wire clk_100ms;
	wire [15:0]num;
	
	clk_100ms m0(.clk(clk),.clk_100ms(clk_100ms));
	RevCounter m1(.clk(clk_100ms),.s(S),.cnt(num),.Rc(LED));
	DispNum_sch m2(.clk(clk),.HEXS(num),.RST(1'b0),.AN(AN),.Segment(SEGMENT));
	//DispNum_sch m2(clk,{4'b0000, num[3:0], 4'b0000, 4'b1111},1'b0,AN,SEGMENT);
endmodule
