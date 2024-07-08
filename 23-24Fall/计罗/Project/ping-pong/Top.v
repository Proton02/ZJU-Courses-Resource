`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:55 01/05/2024 
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
			input clk,    				// 主控时钟信号
			input rst,					// reset信号
			// input to_left,			// ps2键盘模块使用后，不再需要SW开关
			// input to_right,
			input PS2_data,         	// ps2_data
			input PS2_clk,          	// ps2_clk
			input [3:0] bar_move_speed,	// 挡板的移动速度
			output HSync,         		// 行扫描
			output VSync,				// 列扫描
			output [3:0] OutBlue,		// 蓝色通道
			output [3:0] OutGreen, 		// 绿色通道
			output [3:0] OutRed,        // 红色通道
			output wire [3:0] AN,		
			output wire [7:0] Segment , // 七段数码管 
			input wire SW,				// 时钟开闭的信号
			output SEG_EN,			
			output SEG_CLR,
			output SEG_CLK,
			output SEG_DT
    	);
			wire lose;					// 判断游戏是否结束的信号
			wire [3:0] reg_num1;		// 游戏分数记录
			wire [3:0] reg_num2;		
			wire stop_clk;				// 控制游戏结束的时钟
			wire left, right;			// 控制挡板移动的信号
			wire to_left = left;
			wire to_right = right;
		// VGA模块的调用			
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
			.reg_num1(reg_num1),
			.reg_num2(reg_num2),
			.stop_clk(stop_clk)
			);
		// 4位七段数码管的调用
		DispNum m1(.clk(clk),.Hexs({bar_move_speed[3:0],4'b0000,reg_num2,reg_num1}),.LES(4'b0),.points(4'b0),.rst(1'b0),.AN(AN),.Segment(Segment));
		// 时钟调用
		Myclock m2 (.clk1(stop_clk),.SW(SW),.SEG_EN(SEG_EN),.SEG_CLR(SEG_CLR),.SEG_CLK(SEG_CLK),.SEG_DT(SEG_DT));
		// 外接键盘调用
		ps2_keyboard m3(.clk(clk), .rst(1'b0),.ps2_clk(PS2_clk), .ps2_data(PS2_data),.up(up), .left(left), .right(right), .enter(enter));
		
endmodule
