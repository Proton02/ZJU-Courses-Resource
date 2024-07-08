`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:02:14 12/14/2023 
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
	output wire [63:0] num
    );
	reg [63:0] Register;
	always @(posedge clk) begin
		Register <= {Register[62:0], s_in};
	end
	assign num = Register;

endmodule
