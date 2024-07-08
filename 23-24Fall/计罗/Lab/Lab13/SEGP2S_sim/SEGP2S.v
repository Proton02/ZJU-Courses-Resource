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
	 
		wire [18:0] tmp;
		wire finish, start, SL;
		wire [64:0] Segment;
		wire [63:0] disp_num;
		wire [31:0] clk_div;
		
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
		
		clkdiv d0(.clk(clk), .rst(1'b0), .clkdiv(clk_div));
		
		/* Regtrans4b m0(.clk(clk), .SW1(SW[0]), .SW2(SW[14]),.num(reg_num[3:0]));
		Regtrans4b m1(.clk(clk), .SW1(SW[1]), .SW2(SW[14]),.num(reg_num[7:4]));
		Regtrans4b m2(.clk(clk), .SW1(SW[2]), .SW2(SW[14]),.num(reg_num[11:8]));
		Regtrans4b m3(.clk(clk), .SW1(SW[3]), .SW2(SW[14]),.num(reg_num[15:12]));
		Regtrans4b m4(.clk(clk), .SW1(SW[4]), .SW2(SW[14]),.num(reg_num[19:16]));
		Regtrans4b m5(.clk(clk), .SW1(SW[5]), .SW2(SW[14]),.num(reg_num[23:20]));
		Regtrans4b m6(.clk(clk), .SW1(SW[6]), .SW2(SW[14]),.num(reg_num[27:24]));
		Regtrans4b m7(.clk(clk), .SW1(SW[7]), .SW2(SW[14]),.num(reg_num[31:28]));*/
		
		SLReg9b m8(.clk(clk), .S_L(SL) ,.s_in(1'b1),.p_in({disp_num[7:0] , 1'b0}), .Q(Segment[8:0]));
		SLReg8b m9(.clk(clk), .S_L(SL) ,.s_in(Segment[8]),.p_in({disp_num[15:8]}), .Q(Segment[16:9]));
		SLReg8b m10(.clk(clk), .S_L(SL) ,.s_in(Segment[16]),.p_in({disp_num[23:16]}), .Q(Segment[24:17]));
		SLReg8b m11(.clk(clk), .S_L(SL) ,.s_in(Segment[24]),.p_in({disp_num[31:24]}), .Q(Segment[32:25]));
		SLReg8b m12(.clk(clk), .S_L(SL) ,.s_in(Segment[32]),.p_in({disp_num[39:32]}), .Q(Segment[40:33]));
		SLReg8b m13(.clk(clk), .S_L(SL) ,.s_in(Segment[40]),.p_in({disp_num[47:40]}), .Q(Segment[48:41]));
		SLReg8b m14(.clk(clk), .S_L(SL) ,.s_in(Segment[48]),.p_in({disp_num[55:48]}), .Q(Segment[56:49]));
		SLReg8b m15(.clk(clk), .S_L(SL) ,.s_in(Segment[56]),.p_in({disp_num[63:56]}), .Q(Segment[64:57]));
		
		Decoder m16(.hex(reg_num[3:0]), .Segment(disp_num[7:0]));
		Decoder m17(.hex(reg_num[7:4]), .Segment(disp_num[15:8]));
		Decoder m18(.hex(reg_num[11:8]), .Segment(disp_num[23:16]));
		Decoder m19(.hex(reg_num[15:12]), .Segment(disp_num[31:24]));
		Decoder m20(.hex(reg_num[19:16]), .Segment(disp_num[39:32]));
		Decoder m21(.hex(reg_num[23:20]), .Segment(disp_num[47:40]));
		Decoder m22(.hex(reg_num[27:24]), .Segment(disp_num[55:48]));
		Decoder m23(.hex(reg_num[31:28]), .Segment(disp_num[63:56]));
		
		SR_LATCH m24(.S(start & finish), .R(~finish),.Q(SL));
		Load_Gen m25(.clk(clk), .clk_1ms(clk_div[17]), .btn_in(start_sig), .Load_out(start));
		LED m26(.clk(SEG_CLK), .s_in(SEG_DT), .num(num));
		
endmodule
