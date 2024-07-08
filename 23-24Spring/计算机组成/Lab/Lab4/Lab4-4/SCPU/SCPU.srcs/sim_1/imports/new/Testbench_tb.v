`timescale 1ns / 1ps
module Testbench_tb();

    reg clk;
    reg rst;
    reg HINT;
    Testbench m0(.clk(clk), .rst(rst), .HINT(HINT));

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        HINT = 0;
        #5;
        rst = 1'b0;
        #125;
        HINT = 1;
        #100;
        HINT = 0;
    end

    always #50 clk = ~clk;

endmodule