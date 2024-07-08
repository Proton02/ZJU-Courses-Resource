`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:32:50 12/29/2023 
// Design Name: 
// Module Name:    Myclock 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Myclock(
		input clk1,
		input wire SW,
		output SEG_EN,
		output SEG_CLR,
		output SEG_CLK,
		output SEG_DT
		
    );
		wire clk;
		wire [7:0] hour;
		wire [7:0] min;
		wire [7:0] sec;
		wire CTT;
		wire CTP;
		wire [7:0] sec_in;
		
		// wire [23:0] num;
		wire [63:0] disp_num;
		assign CTT = 1;
		assign CTP = 1;
		assign sec_in[7:0] = 8'b01011001;
		
		assign hour[7:0] = 8'b00000000;
		assign min[7:0] = 8'b00000000;
		
		
		Sub1 m1(.CR(sec[3]&sec[2]&sec[1]&sec[0]),.Ld(SW),.CTP(CTP),.CTT(CTT),.CP(clk),.D(sec_in[3:0]),.Q(sec[3:0]));//9
		Sub2 m2(.CR(sec[7]&sec[6]&sec[5]&sec[4]&sec[3]&sec[2]&sec[1]&sec[0]),.Ld(SW),.CTP(~(sec[3]&sec[2]&sec[1]&sec[0])),.CTT(~(sec[3]&sec[2]&sec[1]&sec[0])),.CP(clk),.D(sec_in[7:4]),.Q(sec[7:4]));//9
		clk_100ms m3(.clk(clk1), .clk_100ms(clk));
		
		
		
		
		SEGP2S m7(.clk(clk1),.reg_num({24'b0,sec[7:0]}),.LE(8'b11000000),.start_sig(clk),.SEG_EN(SEG_EN), .SEG_CLR(SEG_CLR), .SEG_CLK(SEG_CLK),.SEG_DT(SEG_DT),.num(disp_num));
		
		


endmodule
