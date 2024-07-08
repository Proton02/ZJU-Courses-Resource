`timescale 1ns / 1ps
module Regtrans4b(
		input clk,
		input wire SW1,
		input wire SW2,
		output wire [3:0] num
    );
		wire Load_A;
		wire [3:0] A, A_IN, A1;
		wire [31:0] clk_div;
		
		assign num = A;
		
		MyRegister4b RegA(clk, A_IN, Load_A, A);
		
		Load_Gen m0(.clk(clk), .clk_1ms(clk_div[17]),.btn_in(SW1), .Load_out(Load_A));
		clkdiv m1(clk, 1'b0, clk_div);
		AddSub4b m2(.A(A), .B(4'b0001), .Ctrl(1'b0), .S(A1));
		
		assign A_IN = (SW2 == 1'b0)? A1 : 4'b0000;
		
endmodule
