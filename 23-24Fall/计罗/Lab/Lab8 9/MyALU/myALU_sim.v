`timescale 1ns / 1ps
module myALU_myALU_sch_tb();
   reg [1:0] S;
   reg [3:0] A;
   reg [3:0] B;
   wire [3:0] C;
   wire Co;
   myALU UUT (
		.S(S), 
		.A(A), 
		.B(B), 
		.C(C), 
		.Co(Co)
   );
	initial begin
		S=0;
		A=4'b1010;
		B=0111;
		#50
		B=4'b0011;
		#50
		S=1;
		A=4'b0101;
		B=4'b1010;
		#50
		A=4'b1101;
		B=4'b0010;
		#50
		S=2;
		#50
		A=4'b1001;
		B=4'b0110;
		#50
		S=3;
		A=4'b1111;
		B=4'b1110;
		#50
		A=4'b0011;
		B=4'b0010;
		#50
		S=0;
		A=0;
		B=0;
	end
endmodule
