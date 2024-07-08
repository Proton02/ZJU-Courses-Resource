`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:43 01/05/2024 
// Design Name: 
// Module Name:    Vga 
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
module Vga(
		input clk,
		input to_left, 				// 向左移动
		input to_right, 			// 向右移动
    	input [3:0] bar_move_speed, // bar移动速度
		output reg hs, 				// 行同步信号
		output reg vs, 				// 场同步信号
        output reg [3:0] Red, 		// R分量
        output reg [3:0] Green, 	// G分量
        output reg [3:0] Blue, 		// B分量
		output reg lose, 			// 游戏输赢
    	output wire [3:0] reg_num1, // 游戏得分数
		output wire [3:0] reg_num2,
		output wire stop_clk 		// 停止时钟
    );
		// 定义停止时钟，当lose = 1时，意味着乒乓没有被挡板接住，游戏结束，stop_clk 恒为1
		assign stop_clk = clk | lose;
		
		// 
		parameter RIGHT = 1'b1;
		parameter LEFT  = 1'b0;
		parameter UP    = 1'b0;
		parameter DOWN  = 1'b1;

		
		//parameter definition
		parameter PAL = 640;		//Pixels/Active Line (pixels)
		parameter LAF = 480;		//Lines/Active Frame (lines)
		parameter PLD = 800;	    //Pixel/Line Divider
		parameter LFD = 521;		//Line/Frame Divider
		parameter HPW = 96;			//Horizontal synchro Pulse Width (pixels)
		parameter HFP = 16;			//Horizontal synchro Front Porch (pixels)
		parameter VPW = 2;			//Verical synchro Pulse Width (lines)
		parameter VFP = 10;			//Verical synchro Front Porch (lines)
		
		// 游戏界面边界赋值
		parameter UP_BOUND = 10;
		parameter DOWN_BOUND = 480;  
		parameter LEFT_BOUND = 20;  
		parameter RIGHT_BOUND = 630;
	
		// 乒乓球的半径
		parameter ball_r = 10;
		
		
		
		reg [9:0] Hcnt;      	 	// x方向坐标
		reg [9:0] Vcnt;     	 	// y方向坐标
		reg clk_25M = 0;     		// 25MHz 时钟频率 
		reg clk_25M1 = 0;
		reg clk_cnt = 0;			
		reg clk_cnt1 = 0;
		reg h_speed = RIGHT;		// 水平速度
		reg v_speed = UP; 			// 垂直速度
		
		// 挡板的初始位置
		reg [9:0] up_pos = 400;
		reg [9:0] down_pos = 410;
		reg [9:0] left_pos = 230;
		reg [9:0] right_pos = 430;  
			
		// 球心的初始位置
		reg [9:0] ball_x_pos = 330;
		reg [9:0] ball_y_pos = 389;
		// reg [9:0] ball_y_pos = 390;

		// 生成25MHz频率的时钟信号
		always@(posedge(stop_clk))
		begin
				if(clk_cnt == 1)
					begin
						clk_25M <= ~clk_25M;
						clk_cnt <= 0;
					end
				else
					clk_cnt <= clk_cnt + 1;
		end
		always@(posedge(clk))
		begin
				if(clk_cnt1 == 1)
					begin
						clk_25M1 <= ~clk_25M1;
						clk_cnt1 <= 0;
					end
				else
					clk_cnt1 <= clk_cnt1 + 1;
		end

		//Vgac扫描
		always@(posedge(clk_25M1)) 
		begin
			// Hcnt，Vcnt重置为0的条件
			if( Hcnt == PLD-1 ) 	// 达到水平边界
			begin
				Hcnt <= 0; 			// 水平坐标重置为0
				if( Vcnt == LFD-1 ) // 当水平扫描到达边界后，Vcnt才能加一
					Vcnt <=0;
				else
					Vcnt <= Vcnt + 1;
			end
			else
				Hcnt <= Hcnt + 1;
			
			/*generate hs timing*/
			if( Hcnt == PAL - 1 + HFP)
				hs <= 1'b0;
			else if( Hcnt == PAL - 1 + HFP + HPW )
				hs <= 1'b1;
			
			/*generate vs timing*/		
			if( Vcnt == LAF - 1 + VFP ) 
				vs <= 1'b0;
			else if( Vcnt == LAF - 1 + VFP + VPW )
				vs <= 1'b1;					
		end
		
		
		// 显示挡板和乒乓球
		always @ (posedge clk_25M1)   
		begin  
			if(lose == 0) 			// lose = 0 意味着游戏还没结束
			begin
				// 显示挡板
				if (Vcnt>=up_pos && Vcnt<=down_pos  
						&& Hcnt>=left_pos && Hcnt<=right_pos) 
				begin 
					// 挡板的颜色为黑色 
					Red <= 4'b1111;  
					Green <= 4'b1111;  
					Blue <= 4'b1111; 
				end  
				
				// 显示乒乓球
				else if ( (Hcnt - ball_x_pos)*(Hcnt - ball_x_pos) + (Vcnt - ball_y_pos)*(Vcnt - ball_y_pos) <= (ball_r * ball_r))  
				begin 
					// 乒乓球的颜色为黄色
					Red <= 4'b1111;  
					Green <= 4'b1111;  
					Blue <= 4'b0000;  
				end  
				// 显示背景
				else 
				begin  
					Red <= 4'b0000;  
					Green <= 4'b0000;  
					Blue <= 4'b0000;  
				end		 
			end
			// 当游戏结束时，屏幕显示GG！
			else if(lose == 1)
			begin
				if((Hcnt>= 154 && Hcnt <= 174) && (Vcnt >= 200 && Vcnt <=350))
				
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end
				else if((Hcnt >= 154 && Hcnt <=274) && (Vcnt >= 200 && Vcnt <=220))
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end

				else if((Hcnt >= 154 && Hcnt <= 274) && (Vcnt >= 330 && Vcnt <=350))
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end

				else if((Hcnt >= 214 && Hcnt <= 274) && (Vcnt >= 275 && Vcnt <=295))
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end

				else if((Hcnt >= 254 && Hcnt <= 274) && (Vcnt >= 275 && Vcnt <= 350))
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end

				else if((Hcnt>= 334 && Hcnt <= 354) && (Vcnt >= 200 && Vcnt <=350))
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end

				else if((Hcnt >= 334 && Hcnt <= 454) && (Vcnt >= 200 && Vcnt <=220))
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end

				else if((Hcnt >= 334 && Hcnt <= 454) && (Vcnt >= 330 && Vcnt <=350))
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end

				else if((Hcnt >= 394 && Hcnt <= 454) && (Vcnt >= 275 && Vcnt <=295))
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end


				else if((Hcnt >= 434 && Hcnt <= 454) && (Vcnt >= 275 && Vcnt <= 350))
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end

				else if((Hcnt >= 514 && Hcnt <= 534) && (Vcnt >= 200 && Vcnt<= 310))
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end

				else if((Hcnt >= 514 && Hcnt<= 534) && (Vcnt >= 330 && Vcnt <= 350))
				begin 
					Red <= 4'b1111;
					Blue <= 4'b0;
					Green <= 4'b0;
				end

				else 
				begin 
					Red <= 4'b0000;
					Blue <= 4'b0000;
					Green <= 4'b0000;
				end
			end
		end
		
		
		// 乒乓球轨迹的设置
		always @ (posedge vs)  
		begin  		
			// 挡板的移动
			// 当左移信号和挡板位置大于左边界时，挡板左移
			if (to_left && left_pos >= LEFT_BOUND) 
			begin  
				left_pos <= left_pos - bar_move_speed;  
				right_pos <= right_pos - bar_move_speed;  
			end  
			// 否则右移
			else if(to_right && right_pos <= RIGHT_BOUND)
			begin  		
				left_pos <= left_pos + bar_move_speed; 
				right_pos <= right_pos + bar_move_speed;  
			end  
			
			//乒乓球的移动
			if (v_speed == UP) 			// 上移
				ball_y_pos <= ball_y_pos - bar_move_speed;  
			else 						//go down
				ball_y_pos <= ball_y_pos + bar_move_speed;  
			if (h_speed == RIGHT) 		// go right 
				ball_x_pos <= ball_x_pos + bar_move_speed;  
			else 						//go down
				ball_x_pos <= ball_x_pos - bar_move_speed;  	
		end 
		reg [3:0] cnt1 = 4'b0;
		reg [3:0] cnt2 = 4'b0;
		//当小球与边界或者挡板碰撞时，小球的方向发生改变
		always @ (negedge vs)  
		begin
			// 乒乓的纵坐标小于上边界，继续游戏
			if (ball_y_pos <= UP_BOUND)   
			begin	
				v_speed <= 1;              // Because when the offset is more than 1, the axis may step over the line
				lose <= 0;
			end
			// 小球和挡板的上边碰撞，分数加一
			else if (ball_y_pos >= (up_pos - ball_r) && ball_x_pos <= right_pos && ball_x_pos >= left_pos)
			begin
				v_speed <= 0;  
				cnt1 <= cnt1 + 1;
			end
			// 小球低于挡板的下边界，游戏结束
			else if (ball_y_pos >= down_pos && ball_y_pos < (DOWN_BOUND - ball_r))
			begin
				lose <= 1;					// 游戏结束信号
				cnt1 <= 0;					// 分数清零
				cnt2 <= 0;
			end
			else if (ball_y_pos >= (DOWN_BOUND - ball_r + 1))
				v_speed <= 0; 
			else  
				v_speed <= v_speed;  
			// 乒乓球与界面的左右边界发生碰撞	  
			if (ball_x_pos <= LEFT_BOUND)  
				h_speed <= 1;  
			else if (ball_x_pos >= RIGHT_BOUND)  
				h_speed <= 0;  
			else  
				h_speed <= h_speed; 
			// 计分器的进位 
			if(cnt1 == 4'b1010)
			begin
				cnt1 <= 0;
				cnt2 <= cnt2 + 1;
			end
			if(cnt2 == 4'b1010)
			begin
				cnt2 <= 0;
			end
		end 
		// 将分数传回数码管
		assign reg_num1[3:0] = cnt1;
		assign reg_num2[3:0] = cnt2;
		

		
endmodule
