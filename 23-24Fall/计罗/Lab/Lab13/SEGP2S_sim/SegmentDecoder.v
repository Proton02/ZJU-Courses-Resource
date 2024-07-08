`timescale 1ns / 1ps
module Decoder(
	input [3:0] hex,
	output reg [7:0] Segment
    );
	always @*
	begin
		case(hex)
			4'h0:Segment[7:0] <= 8'b01000000;
			4'h1:Segment[7:0] <= 8'b01111001;
			4'h2:Segment[7:0] <= 8'b00100100;
			4'h3:Segment[7:0] <= 8'b00110000;
			4'h4:Segment[7:0] <= 8'b00011001;
			4'h5:Segment[7:0] <= 8'b00010010;
			4'h6:Segment[7:0] <= 8'b00000010;
			4'h7:Segment[7:0] <= 8'b01111000;
			4'h8:Segment[7:0] <= 8'b00000000;
			4'h9:Segment[7:0] <= 8'b00010000;
			4'hA:Segment[7:0] <= 8'b00001000;
			4'hB:Segment[7:0] <= 8'b00000011;
			4'hC:Segment[7:0] <= 8'b01000110;
			4'hD:Segment[7:0] <= 8'b00100001;
			4'hE:Segment[7:0] <= 8'b00000110;
			4'hF:Segment[7:0] <= 8'b00001110;
		endcase
	end

endmodule
