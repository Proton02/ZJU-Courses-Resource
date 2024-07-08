`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:34:10 12/29/2023 
// Design Name: 
// Module Name:    Sub 
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
module Sub(
		input CR,
		input Ld,
		input CTP,
		input CTT,
		input CP,
		input [3:0] D,
		output reg [3:0] Q,
		output CO
    );
		initial Q = 4'b0;
		always @(posedge CP,negedge CR) begin
			if(CR == 0) begin
				Q <= 4'b0;
			end
			else if(Ld == 0) begin
				Q <= D;
			end
			else begin
				if(CTP == 1 & CTT == 1)begin
					Q <= Q - 1;
				end
			end
		end
		
		assign CO = Q[0] & Q[1] & Q[2] & Q[3] & CTT;


endmodule
