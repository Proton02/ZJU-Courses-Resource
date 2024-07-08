`timescale 1ns / 1ps

module PC(
    input               clk,
    input               rst,
    input [31:0]        D,

    output reg [31:0]   Q
    );

    always @(posedge clk or posedge rst) begin
      if(rst) begin
        Q <= 32'b0;
        end
    else begin
        Q <= D;
        end
    end

endmodule
