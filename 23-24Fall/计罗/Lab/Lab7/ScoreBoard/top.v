`timescale 1ns / 1ps
module top(input wire clk, 
	input wire [7:0] SW,
	input wire [3:0] btn,
	output wire [3:0] AN,
	output wire [7:0] SEGMENT,
	output wire BTNX4
    );
	 
	wire [15:0] num;
	
	CreateNumber c0(btn,num);
	
	DispNum d0(clk, num, SW[7:4], SW[3:0], 1'b0, AN, SEGMENT);
	
	assign BTNX4 = 1'b0;

endmodule
