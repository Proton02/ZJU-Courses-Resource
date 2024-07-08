`timescale 1ns / 1ps

module multiplier_tb;
  reg clk, start;
  reg[31:0] A;
  reg[31:0] B;

  wire finish;
  wire[63:0] res;

  multiplier m0(
    .clk(clk), 
    .start(start), 
    .A(A), 
    .B(B), 
    .finish(finish), 
    .res(res)
    );

  initial begin
    clk = 0;
    start = 0;
    #10;
    
    A = 32'd1;
    B = 32'd0;
    #10 start = 1;
    #10 start = 0;
    #150;

    A = 32'd10;
    B = 32'd30;
    #10 start = 1;
    #10 start = 0;
    #150;

    A = 32'd66;
    B = 32'd23;
    #10 start = 1;
    #10 start = 0;
    #150;

    A = -32'd1;
    B = -32'd1;
    #10 start = 1;
    #10 start = 0;
    #150;

    A = -32'd16;
    B = -32'd89;
    #10 start = 1;
    #10 start = 0;
    #150;

    A = -32'd76;
    B = 32'd12;
    #10 start = 1;
    #10 start = 0;
    #150;

    A = 32'h8000_0000; // 最大值
    B = 32'h8000_0000;
    #10 start = 1;
    #10 start = 0;
    #150;

    A = -32'hFFFF_FFFF; // 最小值
    B = 32'hFFFF_FFFF;
    #10 start = 1;
    #10 start = 0;
    #150;
    
    $finish();
  end

  always begin
    #2 clk = ~clk;
  end



endmodule

