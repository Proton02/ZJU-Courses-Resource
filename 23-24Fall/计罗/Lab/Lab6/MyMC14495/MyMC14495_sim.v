// Verilog test fixture created from schematic /home/mdlws/LCDF/MyMC14495/MyMC14495.sch - Mon Oct 23 21:20:03 2023

`timescale 1ns / 1ps

module MyMC14495_MyMC14495_sch_tb();

// Inputs
   reg point;
   reg D0;
   reg D1;
   reg D2;
   reg D3;
   reg LE;

// Output
   wire g;
   wire p;
   wire f;
   wire e;
   wire d;
   wire c;
   wire b;
   wire a;

// Bidirs

// Instantiate the UUT
   MyMC14495 UUT (
		.g(g), 
		.p(p), 
		.point(point), 
		.f(f), 
		.e(e), 
		.d(d), 
		.c(c), 
		.b(b), 
		.a(a), 
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.LE(LE)
   );
// Initialize Inputs
   //`ifdef auto_init
	integer i;
   initial begin
		point = 0;
		D0 = 0;
		D1 = 0;
		D2 = 0;
		D3 = 0;
		LE = 0;
		for(i=0;i<=15;i=i+1)begin
			#50;
			{D3,D2,D1,D0} = i;
			point = i;
		end
		
		#50;
		LE = 1;
	end
   //`endif
endmodule
