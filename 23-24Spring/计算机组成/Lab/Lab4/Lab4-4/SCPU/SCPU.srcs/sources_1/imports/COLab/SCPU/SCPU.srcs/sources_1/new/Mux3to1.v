`timescale 1ns / 1ps

module Mux3to1(
    input [1:0]         control,
    input [31:0]        data1,
    input [31:0]        data2,
    input [31:0]        data3,
    output reg [31:0]   out
    );
    always @(*) begin
        case(control)
            2'd0: out = data1;
            2'd1: out = data2;
            2'd2: out = data3;
        endcase
    end

endmodule
