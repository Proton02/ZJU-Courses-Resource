`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:09 12/29/2023 
// Design Name: 
// Module Name:    clk_1s 
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
module clk_1s(clk, clk_1s);
	input wire clk;
	output reg clk_1s;
	reg [31:0] cnt;
	always@(posedge clk) begin
		if(cnt < 50_000000)begin
			cnt <= cnt + 1;
		end else begin
			cnt <= 0;
			clk_1s = ~clk_1s;
		end
	end

endmodule
