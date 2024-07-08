`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:53 12/24/2023 
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
// ball speed direction
`define RIGHT 1'b1
`define LEFT  1'b0
`define UP    1'b0
`define DOWN  1'b1

// 7 seg LED definition
`define ZERO 7'b1000000
`define ONE 7'b1111001 
`define TWO 7'b0100100 
`define THREE 7'b0110000
`define FOUR 7'b0011001 
`define FIVE 7'b0010010 
`define SIX 7'b0000010 
`define SEVEN 7'b1111000  
`define EIGHT 7'b0000000  
`define NINE 7'b0010000  
module Vga(
		input clk,
		input to_left,
		input to_right,
		input [3:0] bar_move_speed,
		output reg hs,
		output reg vs,
		output reg [3:0] Red,
		output reg [3:0] Green,
		output reg [3:0] Blue,
		output reg lose,
		output reg flag,
		output wire [3:0] reg_num1,
		output wire [3:0] reg_num2,
		output wire stop_clk
    );
	 
		// pause clock
		assign stop_clk = clk | lose;
		
		parameter RIGHT = 1'b1;
		parameter LEFT  = 1'b0;
		parameter UP    = 1'b0;
		parameter DOWN  = 1'b1;

		// 7 seg LED definition
		parameter ZERO = 7'b1000000;
		parameter ONE  = 7'b1111001 ;
		parameter TWO  = 7'b0100100 ;
		parameter THREE = 7'b0110000;
		parameter FOUR = 7'b0011001 ;
		parameter FIVE = 7'b0010010 ;
		parameter SIX  = 7'b0000010 ;
		parameter SEVEN = 7'b1111000 ; 
		parameter EIGHT = 7'b0000000  ;
		parameter NINE = 7'b0010000  ;
		
		// Parameter definition
		parameter PAL = 640;		//Pixels/Active Line (pixels)
		parameter LAF = 480;		//Lines/Active Frame (lines)
		parameter PLD = 800;	   //Pixel/Line Divider
		parameter LFD = 521;		//Line/Frame Divider
		parameter HPW = 96;		//Horizontal synchro Pulse Width (pixels)
		parameter HFP = 16;		//Horizontal synchro Front Porch (pixels)
		parameter VPW = 2;		//Verical synchro Pulse Width (lines)
		parameter VFP = 10;		//Verical synchro Front Porch (lines)
		
		// Bound of VGA
		parameter UP_BOUND = 10;
		parameter DOWN_BOUND = 480;  
		parameter LEFT_BOUND = 20;  
		parameter RIGHT_BOUND = 630;
	
		// Radius of the ball
		parameter ball_r = 10;
		
		
		/*register definition*/
		reg [9:0] Hcnt;      // horizontal counter  if = PLD-1 -> Hcnt <= 0
		reg [9:0] Vcnt;      // verical counter  if = LFD-1 -> Vcnt <= 0
		reg clk_25M = 0;     //25MHz frequency
		reg clk_cnt = 0;
		reg h_speed = RIGHT;
		reg v_speed = UP; 
		
		// The position of the downside bar
		reg [9:0] up_pos = 400;
		reg [9:0] down_pos = 410;
		reg [9:0] left_pos = 230;
		reg [9:0] right_pos = 430;  
			
		// The circle heart position of the ball
		reg [9:0] ball_x_pos = 330;
		reg [9:0] ball_y_pos = 389;
		//generate a half frequency clock of 25MHz
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
		
		/*generate the hs && vs timing*/
		always@(posedge(clk_25M)) 
		begin
			/*conditions of reseting Hcnter && Vcnter*/
			if( Hcnt == PLD-1 ) //have reached the edge of one line
			begin
				Hcnt <= 0; //reset the horizontal counter
				if( Vcnt == LFD-1 ) //only when horizontal pointer reach the edge can the vertical counter ++
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
		
		
		//Display the downside bar and the ball
		always @ (posedge clk_25M)   
		begin  
			if(lose == 0)
			begin
			// Display the downside bar
			if (Vcnt>=up_pos && Vcnt<=down_pos  
					&& Hcnt>=left_pos && Hcnt<=right_pos) 
			begin  
				Red <= 4'd051;  
				Green <= 4'd051;  
				Blue <= 4'd255; 
			end  
			
			// Display the ball
			else if ( (Hcnt - ball_x_pos)*(Hcnt - ball_x_pos) + (Vcnt - ball_y_pos)*(Vcnt - ball_y_pos) <= (ball_r * ball_r))  
			begin  
				Red <= 4'd255;  
				Green <= 4'd000;  
				Blue <= 4'd127;  
			end  
			else 
			begin  
				Red <= 4'b000;  
				Green <= 4'b000;  
				Blue <= 4'b000;  
			end		 
			end
			else if(lose == 1)
			begin
			if((Hcnt>= 274 && Hcnt <= 294) && (Vcnt >= 200 && Vcnt <=350))
			
			begin 
				Red <= 4'b1111;
				Blue <= 4'b0;
				Green <= 4'b0;
			end
			else if((Hcnt >= 274 && Hcnt <=394) && (Vcnt >= 200 && Vcnt <=220))
			begin 
				Red <= 4'b1111;
				Blue <= 4'b0;
				Green <= 4'b0;
			end

			else if((Hcnt >= 274 && Hcnt <= 394) && (Vcnt >= 330 && Vcnt <=350))
			begin 
				Red <= 4'b1111;
				Blue <= 4'b0;
				Green <= 4'b0;
			end

			else if((Hcnt >= 334 && Hcnt <= 394) && (Vcnt >= 275 && Vcnt <=295))
			begin 
				Red <= 4'b1111;
				Blue <= 4'b0;
				Green <= 4'b0;
			end

			else if((Hcnt >= 374 && Hcnt <= 394) && (Vcnt >= 275 && Vcnt <= 350))
			begin 
				Red <= 4'b1111;
				Blue <= 4'b0;
				Green <= 4'b0;
			end

			else if((Hcnt>= 454 && Hcnt <= 474) && (Vcnt >= 200 && Vcnt <=350))
			begin 
				Red <= 4'b1111;
				Blue <= 4'b0;
				Green <= 4'b0;
			end

			else if((Hcnt >= 454 && Hcnt <= 574) && (Vcnt >= 200 && Vcnt <=220))
			begin 
				Red <= 4'b1111;
				Blue <= 4'b0;
				Green <= 4'b0;
			end

			else if((Hcnt >= 454 && Hcnt <= 574) && (Vcnt >= 330 && Vcnt <=350))
			begin 
				Red <= 4'b1111;
				Blue <= 4'b0;
				Green <= 4'b0;
			end

			else if((Hcnt >= 514 && Hcnt <= 574) && (Vcnt >= 275 && Vcnt <=295))
			begin 
				Red <= 4'b1111;
				Blue <= 4'b0;
				Green <= 4'b0;
			end


			else if((Hcnt >= 554 && Hcnt <= 574) && (Vcnt >= 275 && Vcnt <= 350))
			begin 
				Red <= 4'b1111;
				Blue <= 4'b0;
				Green <= 4'b0;
			end

			else if((Hcnt >= 634 && Hcnt <= 654) && (Vcnt >= 200 && Vcnt<= 310))
			begin 
				Red <= 4'b1111;
				Blue <= 4'b0;
				Green <= 4'b0;
			end

			else if((Hcnt >= 634 && Hcnt<= 654) && (Vcnt >= 330 && Vcnt <= 350))
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
		
		
		//flush the image every zhen = =||
		always @ (posedge vs)  
		begin  		
			// movement of the bar
			if (to_left && left_pos >= LEFT_BOUND) 
			begin  
				left_pos <= left_pos - bar_move_speed;  
				right_pos <= right_pos - bar_move_speed;  
			end  
			else if(to_right && right_pos <= RIGHT_BOUND)
			begin  		
				left_pos <= left_pos + bar_move_speed; 
				right_pos <= right_pos + bar_move_speed;  
			end  
			
			//movement of the ball
			if (v_speed == UP) // go up 
				ball_y_pos <= ball_y_pos - bar_move_speed;  
			else //go down
				ball_y_pos <= ball_y_pos + bar_move_speed;  
			if (h_speed == RIGHT) // go right 
				ball_x_pos <= ball_x_pos + bar_move_speed;  
			else //go down
				ball_x_pos <= ball_x_pos - bar_move_speed;  	
		end 
		reg [3:0] cnt1 = 4'b0;
		reg [3:0] cnt2 = 4'b0;
		//change directions when reach the edge or crush the bar
		always @ (negedge vs)  
		begin
			if (ball_y_pos <= UP_BOUND)   // Here, all the jugement should use >= or <= instead of ==
			begin	
				v_speed <= 1;              // Because when the offset is more than 1, the axis may step over the line
				lose <= 0;
			end
			else if (ball_y_pos >= (up_pos - ball_r) && ball_x_pos <= right_pos && ball_x_pos >= left_pos)
			begin
				v_speed <= 0;  
				cnt1 <= cnt1 + 1;
			end
			else if (ball_y_pos >= down_pos && ball_y_pos < (DOWN_BOUND - ball_r))
			begin
				// Ahhh!!! What the fuck!!! I miss the ball!!!
				//Do what you want when lose
				lose <= 1;
				cnt1 <= 0;
				cnt2 <= 0;
				flag <= 1;
			end
			else if (ball_y_pos >= (DOWN_BOUND - ball_r + 1))
				v_speed <= 0; 
			else  
				v_speed <= v_speed;  
					  
			if (ball_x_pos <= LEFT_BOUND)  
				h_speed <= 1;  
			else if (ball_x_pos >= RIGHT_BOUND)  
				h_speed <= 0;  
			else  
				h_speed <= h_speed;  
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
		assign reg_num1[3:0] = cnt1;
		assign reg_num2[3:0] = cnt2;
		

		
endmodule
