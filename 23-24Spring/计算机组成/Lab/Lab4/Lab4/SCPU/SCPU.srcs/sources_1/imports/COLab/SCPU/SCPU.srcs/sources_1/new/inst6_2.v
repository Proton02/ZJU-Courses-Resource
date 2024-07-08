`timescale 1ns / 1ps

module inst6_2(
    input [31:0]        Din,
    output reg [4:0]    Dout
    );

    always @(*)
        Dout[4:0] = Din[6:2];

endmodule
