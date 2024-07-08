`timescale 1ns / 1ps
module shift_reg_sim;
	reg clk;
	reg S_L;
	reg s_in;
	reg [7:0] p_in;
	wire [7:0] Q;
	
	shift_reg uut (
		.clk(clk), 
		.S_L(S_L), 
		.s_in(s_in), 
		.p_in(p_in), 
		.Q(Q)
	);

	initial begin
		clk = 0;
		S_L = 0;
		s_in = 0;
		p_in = 0;
		#100;
        
		S_L = 0;
		p_in = 0; #20;
		s_in = 1; #400;
		S_L = 1;
		s_in = 0;
		p_in = 8'b01010101; #100;
		s_in = 1; #500;
	end
	always begin
		clk = 0; #20;
		clk = 1; #20;
	end
endmodule

