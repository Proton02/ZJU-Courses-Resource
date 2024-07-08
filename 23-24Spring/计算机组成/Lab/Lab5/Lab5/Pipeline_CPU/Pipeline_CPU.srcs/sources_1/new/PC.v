`timescale 1ns / 1ps

module PC(
    input               clk,
    input               rst,
    input [31:0]        D,
    input               bubble,

    output reg [31:0]   Q
    );

    always @(posedge clk or posedge rst) begin
        if(rst)
            Q <= 32'b0;
        else if(bubble)
            Q <= Q;
        else
            Q <= D;
    end
endmodule
