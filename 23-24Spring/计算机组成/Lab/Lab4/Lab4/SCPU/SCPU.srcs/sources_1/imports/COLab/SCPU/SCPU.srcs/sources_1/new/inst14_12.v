`timescale 1ns / 1ps

module inst14_12(
    input [31:0]        Din,
    output reg [2:0]    Dout
    );

    always @(*)
        Dout[2:0] = Din[14:12];

endmodule
