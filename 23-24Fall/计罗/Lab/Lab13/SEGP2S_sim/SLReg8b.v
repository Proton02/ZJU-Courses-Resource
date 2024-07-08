`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:47 12/14/2023 
// Design Name: 
// Module Name:    SLReg8b 
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
module SLReg8b(
	 input wire clk,S_L, s_in,
	input wire [7:0] p_in,
	output wire [7:0] Q
    );
	
	FD m0(.C(clk), .D((!S_L & s_in) | (S_L & p_in[0])), .Q(Q[0]));
	FD m1(.C(clk), .D((!S_L & Q[0]) | (S_L & p_in[1])), .Q(Q[1]));
	FD m2(.C(clk), .D((!S_L & Q[1]) | (S_L & p_in[2])), .Q(Q[2]));
	FD m3(.C(clk), .D((!S_L & Q[2]) | (S_L & p_in[3])), .Q(Q[3]));
	FD m4(.C(clk), .D((!S_L & Q[3]) | (S_L & p_in[4])), .Q(Q[4]));
	FD m5(.C(clk), .D((!S_L & Q[4]) | (S_L & p_in[5])), .Q(Q[5]));
	FD m6(.C(clk), .D((!S_L & Q[5]) | (S_L & p_in[6])), .Q(Q[6]));
	FD m7(.C(clk), .D((!S_L & Q[6]) | (S_L & p_in[7])), .Q(Q[7]));
	
endmodule
