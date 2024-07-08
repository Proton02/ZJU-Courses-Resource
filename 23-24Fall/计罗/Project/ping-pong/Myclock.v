`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:52 01/05/2024 
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
		wire [7:0] hour_in;
		wire [7:0] min_in;
		wire [7:0] sec_in;
		
		wire [23:0] num;
		wire [63:0] disp_num;
		assign CTT = 1;
		assign CTP = 1;
		assign num[7:0] = sec;
		assign num[15:8] = min;
		assign num[23:16] = hour;
		
		assign hour_in[7:0] = 8'b00000000;
		assign min_in[7:0] = 8'b00000000;
		assign sec_in[7:0] = 8'b00000000;
		clk_1s d0(.clk(clk1), .clk_1s(clk));
		
		My74LS161 m1(.CR(~(sec[3]&sec[1])),.Ld(SW),.CTP(CTP),.CTT(CTT),.CP(clk),.D(sec_in[3:0]),.Q(sec[3:0]));//9
		My74LS161 m2(.CR(~(sec[6]&sec[5])),.Ld(SW),.CTP(sec[3]&sec[0]),.CTT(sec[3]&sec[0]),.CP(clk),.D(sec_in[7:4]),.Q(sec[7:4]));//9
		
		My74LS161 m3(.CR(~(min[3]&min[1])),.Ld(SW),.CTP(sec[6]&sec[4]&sec[3]&sec[0]),
		.CTT(sec[6]&sec[4]&sec[3]&sec[0]),.CP(clk), .D(min_in[3:0]), .Q(min[3:0]));
		My74LS161 m4(.CR(~(min[6]&min[5])),.Ld(SW),.CTP(min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),
		.CTT(min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),.CP(clk),.D(min_in[7:4]),.Q(min[7:4]));
		
		My74LS161 m5(.CR(~(hour[2]&hour[5] | hour[3]&hour[1])),.Ld(SW),
		.CTP(min[6]&min[4]&min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),.CTT(min[6]&min[4]&min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),
		.CP(clk),.D(hour_in[3:0]),.Q(hour[3:0]));
		
		My74LS161 m6(.CR(~(hour[2]&hour[5])),.Ld(SW),
		.CTP(hour[3]&hour[0]&min[6]&min[4]&min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),
		.CTT(hour[3]&hour[0]&min[6]&min[4]&min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),
		.CP(clk),.D(hour_in[7:4]),.Q(hour[7:4]));
		
		SEGP2S m7(.clk(clk1),.reg_num({8'b00000000,num}),.LE(8'b11000000),.start_sig(clk),.SEG_EN(SEG_EN), .SEG_CLR(SEG_CLR), .SEG_CLK(SEG_CLK),.SEG_DT(SEG_DT),.num(disp_num));
endmodule