`timescale 1ns / 1ps
module Top(
		input clk1,
		input CTT,
		input CTP,
		input [7:0] hour_in,
		input [7:0] min_in,
		input [7:0] sec_in,
		input hour_ld,
		input min_ld,
		input sec_ld,
		output clk,
		output [23:0] num,
		output SEG_CLK,
		output SEG_DT,
		output [63:0] disp_num
    );
		wire [7:0] hour;
		wire [7:0] min;
		wire [7:0] sec;
		
		assign num[7:0] = sec;
		assign num[15:8] = min;
		assign num[23:16] = hour;
		
		clk_128 d0(.clk(clk1), .clk_128(clk));
		
		My74LS161 m1(.CR(~(sec[3]&sec[1])),.Ld(sec_ld),.CTP(CTP),.CTT(CTT),.CP(clk),.D(sec_in[3:0]),.Q(sec[3:0]));//9
		My74LS161 m2(.CR(~(sec[6]&sec[5])),.Ld(sec_ld),.CTP(sec[3]&sec[0]),.CTT(sec[3]&sec[0]),.CP(clk),.D(sec_in[7:4]),.Q(sec[7:4]));//9
		
		My74LS161 m3(.CR(~(min[3]&min[1])),.Ld(min_ld),.CTP(sec[6]&sec[4]&sec[3]&sec[0]),
		.CTT(sec[6]&sec[4]&sec[3]&sec[0]),.CP(clk), .D(min_in[3:0]), .Q(min[3:0]));
		My74LS161 m4(.CR(~(min[6]&min[5])),.Ld(min_ld),.CTP(min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),
		.CTT(min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),.CP(clk),.D(min_in[7:4]),.Q(min[7:4]));
		
		My74LS161 m5(.CR(~(hour[2]&hour[5] | hour[3]&hour[1])),.Ld(hour_ld),
		.CTP(min[6]&min[4]&min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),.CTT(min[6]&min[4]&min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),
		.CP(clk),.D(hour_in[3:0]),.Q(hour[3:0]));
		
		My74LS161 m6(.CR(~(hour[2]&hour[5])),.Ld(hour_ld),
		.CTP(hour[3]&hour[0]&min[6]&min[4]&min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),
		.CTT(hour[3]&hour[0]&min[6]&min[4]&min[3]&min[0]&sec[6]&sec[4]&sec[3]&sec[0]),
		.CP(clk),.D(hour_in[7:4]),.Q(hour[7:4]));
		
		
		SEGP2S m7(.clk(clk1),.reg_num(num),.LE(8'b11000000),.start_sig(clk), .SEG_CLK(SEG_CLK),.SEG_DT(SEG_DT),.num(disp_num));
		
		


endmodule
