`timescale 1ns / 1ps
module clk_128(clk, clk_128);
	input wire clk;
	output reg clk_128;
	reg [31:0] cnt;
	initial clk_128 = 0;
	always@(posedge clk) begin
		if(cnt < 64)begin
			cnt <= cnt + 1;
		end else begin
			cnt <= 0;
			clk_128 = ~clk_128;
		end
	end

endmodule
