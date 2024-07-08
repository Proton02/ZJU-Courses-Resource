`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:23 12/24/2023 
// Design Name: 
// Module Name:    Top 
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
module Top(
			input clk,    // shi zhong
			input rst,		// reset
			//input to_left,	// zuo yi
			//input to_right,
			input PS2_data,         //ps2_data
			input PS2_clk,          //ps2_clk
			input [3:0] bar_move_speed,	// mode
         output HSync,         
         output [3:0] OutBlue,
         output [3:0] OutGreen, 
         output [3:0] OutRed,         
         output VSync,
			output wire [3:0] AN,
			output wire [7:0] Segment ,
			input wire SW,
			output SEG_EN,
			output SEG_CLR,
			output SEG_CLK,
			output SEG_DT
    );
			wire lose;
			wire flag;
			wire [3:0] reg_num1;
			wire [3:0] reg_num2;
			wire stop_clk;
			wire up, left, right, enter;            //controller signal
			wire to_left = left;
			wire to_right = right;
			// wire hard_reset = ~rst;                //hardware reset
		Vga m0(
			.clk(clk),
			.to_left(to_left),
			.to_right(to_right),
			.bar_move_speed(bar_move_speed),
			.hs(HSync),
			.Blue(OutBlue),
			.Green(OutGreen),
			.Red(OutRed),
			.vs(VSync),
			.lose(lose),
			.flag(flag),
			.reg_num1(reg_num1),
			.reg_num2(reg_num2),
			.stop_clk(stop_clk)
			);
			
		background ROM1 (
			  .clka(clka), // input clka
			  .addra(addra), // input [18 : 0] addra
			  .douta(douta) // output [11 : 0] douta
			);
		
		
		DispNum m1(.clk(clk),.HEXS({bar_move_speed[3:0],4'b0000,reg_num2,reg_num1}),.LES(4'b0),.points(4'b0),.RST(1'b0),.AN(AN),.Segment(Segment));
		Myclock m2 (.clk1(stop_clk),.SW(SW),.SEG_EN(SEG_EN),.SEG_CLR(SEG_CLR),.SEG_CLK(SEG_CLK),.SEG_DT(SEG_DT));
		ps2_keyboard m3(.clk(clk), .rst(1'b0),.ps2_clk(PS2_clk), .ps2_data(PS2_data),.up(up), .left(left), .right(right), .enter(enter));
endmodule
