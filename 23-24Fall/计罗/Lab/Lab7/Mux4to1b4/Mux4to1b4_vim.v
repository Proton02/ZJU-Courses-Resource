`timescale 1ns / 1ps
module Mux4to1b4_sim();
   reg [1:0] s;
   reg [3:0] I1;
   reg [3:0] I2;
   reg [3:0] I3;
   reg [3:0] I0;
   wire [3:0] o;
   Mux4to1b4 UUT (
		.s(s), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.I0(I0), 
		.o(o)
   );
   initial begin
		s = 0;
		I1 = 0;
		I2 = 0;
		I3 = 0;
		I0 = 0;
	   #50;
		s = 2'b01;
		#50;
		s = 2'b10;
		#50;
		s = 2'b11;
		#50;
		s = 0;
	end
	initial begin
		 I0 = 4'b0001;
		 I1 = 4'b0010;
		 I2 = 4'b0100;
		 I3 = 4'b1000;
	end
endmodule
