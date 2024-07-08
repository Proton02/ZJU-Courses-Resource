`timescale 1ns / 1ps

module Adder_32(
    input [31:0] A,
    input [31:0] B,

    output reg [31:0] res
    );
    always @(*) begin
        res = $signed(A) + $signed(B);
    end

endmodule
