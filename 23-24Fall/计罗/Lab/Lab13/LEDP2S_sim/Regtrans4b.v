`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:54:07 12/12/2023 
// Design Name: 
// Module Name:    Regtrans4b 
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
module Regtrans4b(
		input clk,
		input wire SW1,
		input wire SW2,
		output wire [3:0] num
    );
	 
		wire Load_A;
		wire [3:0] A, A_IN, A1;
		wire [31:0] clk_div;
		
		// zui zhong jie guo shi A ji cun qi de shu zhi 
		assign num = A;
		
		// gen ju load xin hao , jiang A = A_IN
		MyRegister4b m0(.clk(clk), .IN(A_IN), .Load(Load_A), .OUT(A));
		
		// shang sheng yan sheng cheng load xin hao 
		Load_Gen m1(.clk(clk), .btn_in(SW1), .Load_out(Load_A));
		
		clkdiv m2(clk, 1'b0, clk_div);
		
		// A1 = A + 1
		AddSub4b m3(.A(A), .B(4'b0001), .Ctrl(1'b0), .S(A1));
		
		// SW2 = 0, mei ci A = A1 = A + 1
		// SW2 = 1, fu wei , A = A1 = 0
		assign A_IN = (SW2 == 1'b0)? A1 : 4'b0000;


endmodule
