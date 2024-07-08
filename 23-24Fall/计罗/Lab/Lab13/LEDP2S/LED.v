`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:22 12/12/2023 
// Design Name: 
// Module Name:    LED 
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
module LED(
		input wire clk,
		input wire s_in,
		output wire [15:0] num
    );
		reg [15:0] Register;
		always @(posedge clk) begin
			Register <= {Register[14:0], s_in};
		end
		assign num = Register;


endmodule
