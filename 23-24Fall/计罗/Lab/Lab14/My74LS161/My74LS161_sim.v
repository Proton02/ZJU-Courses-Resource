`timescale 1ns / 1ps

module My74LS161_sim;

	// Inputs
	reg CR;
	reg Ld;
	reg CTP;
	reg CTT;
	reg CP;
	reg [3:0] D;

	// Outputs
	wire [3:0] Q;
	wire CO;

	// Instantiate the Unit Under Test (UUT)
	My74LS161 uut (
		.CP(CP),
		.CR(CR), 
		.Ld(Ld), 
		.CTP(CTP), 
		.CTT(CTT), 
		.D(D), 
		.Q(Q), 
		.CO(CO)
	);
	initial begin
		CR = 0;
		Ld = 0;
		CTT = 0;
		CTP = 0;
		D = 0;
		#100;
		
		CR = 0;
		Ld = 1;
		D = 4'b1010;
		CTT = 0;
		CTP = 0;
		#25;
		CR = 0;
		Ld = 0;
		CTT = 1;
		CTP = 0;
		#25;
		CR = 0;
		Ld = 0;
		CTT = 0;
		CTP = 1;
		#25;
		
		CR = 1;
		Ld = 0;
		CTT = 0;
		CTP = 0;
		#25;
		CR = 1;
		Ld = 0;
		CTT = 1;
		CTP = 1;
		#25;
		
		CR = 1;
		Ld = 1;
		CTT = 0;
		CTP = 0;
		#25;
		CR = 1;
		Ld = 1;
		CTT = 0;
		CTP = 1;
		#25;
		CR = 1;
		Ld = 1;
		CTT = 1;
		CTP = 0;
		#25;
		CR = 1;
		Ld = 1;
		CTT = 1;
		CTP = 1;
		#200;
	end
	always begin
		CP = 1;#20;
		CP = 0;#20;
	end
      
endmodule

