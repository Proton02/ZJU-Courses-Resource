`timescale 1ns / 1ps
module Testbench_tb();

    reg clk;
    reg rst;

    Testbench m0(.clk(clk), .rst(rst));

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        #5;
        rst = 1'b0;
    end

    always #50 clk = ~clk;

endmodule