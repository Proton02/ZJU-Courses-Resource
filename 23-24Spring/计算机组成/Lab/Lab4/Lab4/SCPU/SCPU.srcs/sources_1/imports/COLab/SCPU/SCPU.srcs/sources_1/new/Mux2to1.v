`timescale 1ns / 1ps

module Mux2to1(
    input               control,
    input [31:0]        data1,
    input [31:0]        data2,
    output reg [31:0]   out
    );
    always @(*) begin
        case(control)
            0: out = data1;
            1: out = data2;
        endcase
    end
    
endmodule
