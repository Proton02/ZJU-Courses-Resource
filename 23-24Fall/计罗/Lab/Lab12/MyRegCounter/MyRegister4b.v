`timescale 1ns / 1ps
module MyRegister4b(
		input wire clk,
		input [3:0] IN,
		input wire Load,
		output reg [3:0] OUT
    );
		initial OUT = 0;
		always @ (posedge clk) begin
		if (Load) OUT <= IN;
		end

endmodule
