`timescale 1ns / 1ps
module Top(
		input clk,
		input [15:0] SW,
		//output [3:0] AN,
		//output [7:0] Segment
		output wire [15:0] num // new
		);
		
		wire [3:0] Load_A, Co;
		wire [3:0] A,  A_IN, A1;
		wire [31:0] clk_div;
		
		assign num = {A, A1, A_IN, 4'b0000}; // new
		
		MyRegister4b RegA(.clk(clk), .IN(A_IN), .Load(Load_A), .OUT(A));
		Load_Gen m0(.clk(clk), .clk_1ms(clk_div[17]), .btn_in(SW[2]), .Load_out(Load_A));
		clkdiv m3(clk, 1'b0, clk_div);
		AddSub4b m4(.A(A), .B(4'b0001), .Ctrl(SW[0]), .S(A1));
		assign A_IN = (SW[15] == 1'b0)? A1: 4'b0000;
		
		//DispNum_sch m8(.clk(clk), .HEXS({A, A1, A_IN, 4'b0000}), .LES(4'b0), .points(4'b0), .RST(1'b0), .AN(AN), .Segment(SEGMENT));
endmodule
