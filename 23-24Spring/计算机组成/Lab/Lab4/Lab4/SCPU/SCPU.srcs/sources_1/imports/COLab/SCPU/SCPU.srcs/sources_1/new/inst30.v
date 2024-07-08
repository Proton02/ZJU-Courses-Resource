`timescale 1ns / 1ps

module inst30(
    input [31:0]        Din,
    output reg          Dout
    );
    
    always @(*)
        Dout = Din[30];

endmodule
