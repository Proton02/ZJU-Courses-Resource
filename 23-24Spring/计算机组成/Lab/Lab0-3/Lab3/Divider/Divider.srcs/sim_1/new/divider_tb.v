`timescale 1ns / 1ps

module divider_tb();
      reg clk;
      reg rst;
      reg [31:0] dividend;
      reg [31:0] divisor;
      reg start;
      
      wire divide_zero;
      wire [31:0] res;
      wire [31:0] rem;
      wire finish;
      divider   u_div(
         .clk(clk),
         .rst(rst),
         .dividend(dividend),
         .divisor(divisor),
         .start(start),
         .divide_zero(divide_zero),
         .res(res),
         .rem(rem),
         .finish(finish)
      );
      always #5 clk = ~clk;
      
      initial begin
       clk =0;
       start = 0;
       rst = 1;
       rst = 0; #10;

           dividend = 32'd0;
           divisor  = 32'd0;
           #10 start = 1;
           #10 start = 0;
           #500
           dividend = 32'd8;  
           divisor  = 32'd2;  
           #10 start = 1;
           #10 start = 0;
           #500     
           dividend = 32'd7;
           divisor  = 32'd11; 
           #10 start = 1;
           #10 start = 0;
           #500          
           dividend = 32'd100; 
           divisor  = 32'd99;  
           #10 start = 1;
           #10 start = 0;
           #500 
           dividend = 32'hFFFF_FFFF;
           divisor  = 32'd1;
           #10 start = 1;
           #10 start = 0;
           #500
           dividend = 32'h8000_0000;
           divisor  = 32'd1;
           #10 start = 1;
           #10 start = 0;
           #500
           dividend = 32'd0;
           divisor  = 32'hFFFF_FFFF;
           #10 start = 1;
           #10 start = 0;
           #500 $stop();   
      end
endmodule
