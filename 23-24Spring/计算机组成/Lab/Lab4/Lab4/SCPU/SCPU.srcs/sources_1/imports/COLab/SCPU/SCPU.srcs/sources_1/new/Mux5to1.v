`timescale 1ns / 1ps

module Mux5to1(
    input [2:0]         control,
    input [31:0]        data1,
    input [31:0]        data2,
    input [31:0]        data3,
    input [31:0]        data4,
    input [31:0]        data5,
    output reg [31:0]   out
    );
    always @(*) begin
        case(control)
            3'd0: out = data1;
            3'd1: out = data2;
            3'd2: out = data3;
            3'd3: out = data4;
            3'd4: out = data5;
        endcase
    end
    
endmodule
