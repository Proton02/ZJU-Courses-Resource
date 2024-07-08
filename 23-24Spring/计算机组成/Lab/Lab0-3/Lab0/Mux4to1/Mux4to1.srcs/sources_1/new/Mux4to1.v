`timescale 1ns / 1ps

module Mux4to1(
    input [15:0]I0,
    output reg[3:0]o
    );
    always @(*) begin
        case(I0[15:14])
            2'b00: o = I0[3:0];
            2'b01: o = I0[7:4];
            2'b10: o = I0[11:8];
            2'b11: o = 0;
        endcase
    end
endmodule
