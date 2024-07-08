`timescale 1ns / 1ps
module Mux4to1_sim();
   reg [1:0] s;
   reg I0;
   reg I1;
   reg I2;
   reg I3;
   wire o;
   Mux4to1 UUT (
		.s(s), 
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.o(o)
   );
initial begin
		s = 0;
		I0 = 1;
		I1 = 0;
		I2 = 0;
		I3 = 0;
		#50;
		I0 = 1;
		I1 = 0;
		I2 = 1;
		I3 = 0;
		#50;
		s = 1;
		I0 = 1;
		I1 = 0;
		I2 = 1;
		I3 = 1;
		#50;
		I0 = 1;
		I1 = 1;
		I2 = 1;
		I3 = 1;
		#50;
		s = 2;
		I0 = 0;
		I1 = 1;
		I2 = 1;
		I3 = 0;
		#50;
		I0 = 1;
		I1 = 0;
		I2 = 0;
		I3 = 0;
		#50;
		s = 3;
		I0 = 1;
		I1 = 1;
		I2 = 0;
		I3 = 1;
		#50;
		I0 = 1;
		I1 = 0;
		I2 = 0;
		I3 = 1;
		#50;
		s = 0;
		I0 = 0;
		I1 = 0;
		I2 = 0;
		I3 = 0;
		end
endmodule
