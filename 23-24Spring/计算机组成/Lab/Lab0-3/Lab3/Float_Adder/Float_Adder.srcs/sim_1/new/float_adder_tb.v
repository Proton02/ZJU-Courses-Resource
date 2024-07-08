`timescale 1ns / 1ps


module float_adder_tb;

    reg rst;
    reg clk;
    reg start;
    reg [31:0] A;
    reg [31:0] B;

    wire [31:0] result;
    wire finish;

    float_adder float_adder_u(
        .rst(rst),
        .clk(clk),
        .start(start),
        .A(A),
        .B(B),
        .res(result),
        .finish(finish)
    );

    initial begin
        start = 0;
        clk = 0;
        rst = 1;
        rst = 0; #10;

        A=32'h3fb33333; // 1.4 + 1.7 = 3.1 (40466666)
        B=32'h3fd9999a; 
        start = 1;#10;
        start = 0;#200;

        A = 32'hbfb33333; // (-1.4) + (-1.7) = (-3.1) (c0466666)
        B = 32'hbfd9999a; 
        start = 1;#10;
        start = 0;#200;

        A=32'hbec66666; // (-0.3875) + 0.0216 = (-0.3659) (bebb573f)
        B=32'h3cb0f27c;
        start = 1;#10;
        start = 0;#200;

        A=32'h3f000000; // 0.5 + (-0.4375) = 0.0625 (3d800000)
        B=32'hbee00000;
        start = 1;#10;
        start = 0;#200;

        A=32'h3fb50710; // 1.414278 + (-1.732012) = (-0.317734) (bea2ae08)
        B=32'hbfddb292; // 高精度计算测试
        start = 1;#10;
        start = 0;#200;

        A = 32'hc1840000; // (-16.5) + 0 = 0 
        B = 32'h0;        // exp = 0
        start = 1;#10;
        start = 0;#200;

        A = 32'h7fbb573f; // 7fbb573f + (-16.5) = 7fbb573f
        B = 32'hc1840000; // exp = ff
        start = 1;#10;
        start = 0;#200;

        $stop();
    end

    always begin
        clk = 1'b0; #5;
        clk = 1'b1; #5;
    end

endmodule