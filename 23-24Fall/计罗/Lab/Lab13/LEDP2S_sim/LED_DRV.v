`timescale 1ns / 1ps
module LED_DRV(
		input wire clk,
		input wire [15:0] SW,
		output LED_CLK,
		output LED_CLR,
		output LED_EN,
		output LED_D0,
		output wire [15:0] num,
		output wire [15:0] reg_num
    );
		
		wire [18:0] tmp;
		wire finish, start, SL;
		assign LED_CLK = clk | finish;
		assign LED_CLR = 1'b1; // reset signal
		assign LED_D0 = tmp[16];
		assign LED_EN = 1'b1;
		// finish is 0 to move left otherwise stop, same as PPT
		assign finish = tmp[15] & tmp[14] & tmp[13] & tmp[12] & tmp[11] & tmp[10] & tmp[9] & tmp[8] & tmp[7] & tmp[6] & tmp[5] & tmp[4] & tmp[3] & tmp[2] & tmp[1] & tmp[0];
		
		
		// Switch 1 is used to control the rising edge, and switch 2 is used to control addition and subtraction
		Regtrans4b m0(.clk(clk), .SW1(SW[0]), .SW2(SW[14]), .num(reg_num[3:0]));
		Regtrans4b m1(.clk(clk), .SW1(SW[1]), .SW2(SW[14]), .num(reg_num[7:4]));
		Regtrans4b m2(.clk(clk), .SW1(SW[2]), .SW2(SW[14]), .num(reg_num[11:8]));
		Regtrans4b m3(.clk(clk), .SW1(SW[3]), .SW2(SW[14]), .num(reg_num[15:12]));
		
		SLReg9b m4(.clk(clk), .S_L(SL), .s_in(1'b1), .p_in({reg_num[7:0], 1'b0}), .Q(tmp[8:0]));
		SLReg9b m5(.clk(clk), .S_L(SL), .s_in(tmp[8]), .p_in({1'b0, reg_num[15:8]}), .Q(tmp[17:9]));
		SR_LATCH m6(.S(start & finish), .R(~finish),.Q(SL));
		Load_Gen m7(.clk(clk), .btn_in(SW[15]), .Load_out(start));
		
		// LEDs are only used for simulation, and are not needed for the upper board
		LED m8(.clk(LED_CLK), .s_in(LED_D0), .num(num));
		
endmodule
