`timescale 1ns / 1ps
module SEGP2S(
		input wire clk,
		input [31:0] reg_num,
		input [7:0] LE,
		input start_sig,
		output SEG_CLK,
		output SEG_CLR,
		output SEG_EN,
		output SEG_DT,
		output wire [63:0] num
    );
	 
		
		wire finish, start, SL;
		wire [63:0] disp_num;
		wire [64:0] Segment;
		
		assign SEG_CLK = clk | finish;
		assign SEG_CLR = 1'b1;
		assign SEG_EN = 1'b1;
		assign SEG_DT = Segment[64];
		
		
		assign finish = Segment[0] & Segment[1] & Segment[2] & Segment[3] & Segment[4] & Segment[5] &Segment[6] & Segment[7] 
							& Segment[8] & Segment[9] & Segment[10] & Segment[11] & Segment[12] & Segment[13] & Segment[14] & Segment[15] 
							&Segment[16] & Segment[17] &Segment[18] & Segment[19] & Segment[20] & Segment[21] & Segment[22] & Segment[23] 
							& Segment[24] &Segment[25] & Segment[26] &Segment[27] & Segment[28] & Segment[29] & Segment[30] & Segment[31] 
							& Segment[32] & Segment[33] &Segment[34] & Segment[35] &Segment[36] & Segment[37] & Segment[38] & Segment[39] 
							& Segment[40] & Segment[41] & Segment[42] &Segment[43] & Segment[44] &Segment[45] & Segment[46] & Segment[47] 
							& Segment[48] & Segment[49] & Segment[50] & Segment[51] &Segment[52] & Segment[53] &Segment[54] & Segment[55] 
							& Segment[56] & Segment[57] & Segment[58] & Segment[59] & Segment[60] &Segment[61] & Segment[62] &Segment[63];
		
		MyMC14495 m0(.point(1'b0),.LE(LE[0]),.D0(reg_num[0]
		),.D1(reg_num[1]),.D2(reg_num[2]),.D3(reg_num[3]
		),.a(disp_num[0]),.b(disp_num[1]),.c(disp_num[2]
		),.d(disp_num[3]),.e(disp_num[4]),.f(disp_num[5]
		),.g(disp_num[6]),.p(disp_num[7]));
		
		MyMC14495 m1(.point(1'b0),.LE(LE[1]),.D0(reg_num[4]
		),.D1(reg_num[5]),.D2(reg_num[6]),.D3(reg_num[7]
		),.a(disp_num[8]),.b(disp_num[9]),.c(disp_num[10
		]),.d(disp_num[11]),.e(disp_num[12]),.f(disp_num
		[13]),.g(disp_num[14]),.p(disp_num[15]));
		
		MyMC14495 m2(.point(1'b0),.LE(LE[2]),.D0(reg_num[8]
		),.D1(reg_num[9]),.D2(reg_num[10]),.D3(reg_num[
		11]),.a(disp_num[16]),.b(disp_num[17]),.c(
		disp_num[18]),.d(disp_num[19]),.e(disp_num[20])
		,.f(disp_num[21]),.g(disp_num[22]),.p(disp_num[
		23]));
		
		MyMC14495 m3(.point(1'b0),.LE(LE[3]),.D0(reg_num[12
		]),.D1(reg_num[13]),.D2(reg_num[14]),.D3(reg_num
		[15]),.a(disp_num[24]),.b(disp_num[25]),.c(
		disp_num[26]),.d(disp_num[27]),.e(disp_num[28])
		,.f(disp_num[29]),.g(disp_num[30]),.p(disp_num[
		31]));
		
		MyMC14495 m4(.point(1'b0),.LE(LE[4]),.D0(reg_num[16
		]),.D1(reg_num[17]),.D2(reg_num[18]),.D3(reg_num
		[19]),.a(disp_num[32]),.b(disp_num[33]),.c(
		disp_num[34]),.d(disp_num[35]),.e(disp_num[36])
		,.f(disp_num[37]),.g(disp_num[38]),.p(disp_num[
		39]));
		
		MyMC14495 m5(.point(1'b0),.LE(LE[5]),.D0(reg_num[20
		]),.D1(reg_num[21]),.D2(reg_num[22]),.D3(reg_num
		[23]),.a(disp_num[40]),.b(disp_num[41]),.c(
		disp_num[42]),.d(disp_num[43]),.e(disp_num[44])
		,.f(disp_num[45]),.g(disp_num[46]),.p(disp_num[
		47]));
		
		MyMC14495 m6(.point(1'b0),.LE(LE[6]),.D0(reg_num[24
		]),.D1(reg_num[25]),.D2(reg_num[26]),.D3(reg_num
		[27]),.a(disp_num[48]),.b(disp_num[49]),.c(
		disp_num[50]),.d(disp_num[51]),.e(disp_num[52])
		,.f(disp_num[53]),.g(disp_num[54]),.p(disp_num[
		55]));
		
		MyMC14495 m7(.point(1'b0),.LE(LE[7]),.D0(reg_num[28
		]),.D1(reg_num[29]),.D2(reg_num[30]),.D3(reg_num
		[31]),.a(disp_num[56]),.b(disp_num[57]),.c(
		disp_num[58]),.d(disp_num[59]),.e(disp_num[60])
		,.f(disp_num[61]),.g(disp_num[62]),.p(disp_num[
		63]));
		
		
		
		SLReg9b m8(.clk(clk), .S_L(SL) ,.s_in(1'b1),.p_in({disp_num[7:0] , 1'b0}), .Q(Segment[8:0]));
		SLReg8b m9(.clk(clk), .S_L(SL) ,.s_in(Segment[8]),.p_in({disp_num[15:8]}), .Q(Segment[16:9]));
		SLReg8b m10(.clk(clk), .S_L(SL) ,.s_in(Segment[16]),.p_in({disp_num[23:16]}), .Q(Segment[24:17]));
		SLReg8b m11(.clk(clk), .S_L(SL) ,.s_in(Segment[24]),.p_in({disp_num[31:24]}), .Q(Segment[32:25]));
		SLReg8b m12(.clk(clk), .S_L(SL) ,.s_in(Segment[32]),.p_in({disp_num[39:32]}), .Q(Segment[40:33]));
		SLReg8b m13(.clk(clk), .S_L(SL) ,.s_in(Segment[40]),.p_in({disp_num[47:40]}), .Q(Segment[48:41]));
		SLReg8b m14(.clk(clk), .S_L(SL) ,.s_in(Segment[48]),.p_in({disp_num[55:48]}), .Q(Segment[56:49]));
		SLReg8b m15(.clk(clk), .S_L(SL) ,.s_in(Segment[56]),.p_in({disp_num[63:56]}), .Q(Segment[64:57]));
		
		
		
		SR_LATCH m24(.S(start & finish), .R(~finish),.Q(SL));
		Load_Gen m25(.clk(clk), .btn_in(start_sig), .Load_out(start));
		
		
		
endmodule
