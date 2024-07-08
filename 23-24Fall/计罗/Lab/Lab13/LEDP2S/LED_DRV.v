`timescale 1ns / 1ps
module LED_DRV(
		input wire clk,
		input wire [15:0] SW,
		input wire [3:0] btn,
		output LED_CLK,
		output LED_CLR,
		output LED_EN,
		output LED_D0,
		output wire [3:0] AN, 
		output wire [7:0] Segment,
		output wire BTNX4
		
    );
		wire[3:0] btn_out;
		wire [15:0] num;
		wire [15:0] reg_num;
		wire [18:0] tmp;
		wire finish, start, SL;
		wire [31:0] clk_div;
		assign LED_CLK = clk | finish;
		assign LED_CLR = 1'b1;
		assign LED_D0 = ~tmp[16];
		assign LED_EN = 1'b1;
		
		assign finish = tmp[15] & tmp[14] & tmp[13] & tmp[12] & tmp[11] & tmp[10] & tmp[9] & tmp[8] & tmp[7] & tmp[6] & tmp[5] & tmp[4] & tmp[3] & tmp[2] & tmp[1] & tmp[0];
		clkdiv d0(.clk(clk), .rst(1'b0), .clkdiv(clk_div));
		
		pbdebounce p0(clk_div[17], btn[0], btn_out[0]); 
		pbdebounce p1(clk_div[17], btn[1], btn_out[1]); 
		pbdebounce p2(clk_div[17], btn[2], btn_out[2]); 
		pbdebounce p3(clk_div[17], btn[3], btn_out[3]); 
		
		Regtrans4b m0(.clk(clk), .SW1(btn_out[0]), .SW2(SW[14]), .num(reg_num[3:0]));
		
		Regtrans4b m1(.clk(clk), .SW1(btn_out[1]), .SW2(SW[14]), .num(reg_num[7:4]));
		
		Regtrans4b m2(.clk(clk), .SW1(btn_out[2]), .SW2(SW[14]), .num(reg_num[11:8]));
		
		Regtrans4b m3(.clk(clk), .SW1(btn_out[3]), .SW2(SW[14]), .num(reg_num[15:12]));
		
		// Regtrans4b m0(.clk(clk), .SW1(btn[0]), .SW2(SW[14]), .num(reg_num[3:0]));
		
		//Regtrans4b m1(.clk(clk), .SW1(btn[1]), .SW2(SW[14]), .num(reg_num[7:4]));
		
		//Regtrans4b m2(.clk(clk), .SW1(btn[2]), .SW2(SW[14]), .num(reg_num[11:8]));
		
		//Regtrans4b m3(.clk(clk), .SW1(btn[3]), .SW2(SW[14]), .num(reg_num[15:12]));
		
		SLReg9b m4(.clk(clk), .S_L(SL), .s_in(1'b1), .p_in({reg_num[7:0], 1'b0}), .Q(tmp[8:0]));
		
		SLReg8b m5(.clk(clk), .S_L(SL), .s_in(tmp[8]), .p_in({reg_num[15:8]}), .Q(tmp[16:9]));
		
		
		
		Load_Gen m6(.clk(clk), .clk_1ms(clk_div[17]),.btn_in(SW[15]), .Load_out(start));
		
		SR_LATCH m7(.S(start & finish), .R(~finish),.Q(SL));
		
		// LED m8(.clk(LED_CLK), .s_in(LED_D0), .num(num));
		
		DispNum m9(.clk(clk), .HEXS(reg_num), .LES(4'b0), .points(4'b0), .RST(1'b0), .AN(AN), .Segment(Segment));
		
		assign BTNX4 = 1'b0;
		
		
		
endmodule
