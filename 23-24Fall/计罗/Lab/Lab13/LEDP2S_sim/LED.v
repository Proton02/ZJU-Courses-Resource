`timescale 1ns / 1ps
module LED(
		input wire clk,
		input wire s_in,
		output wire [15:0] num
    );
	 
		reg [15:0] Register;
		
		always @(posedge clk) 
		begin
			Register <= {Register[14:0], s_in};
		end
		
		assign num = Register;

endmodule
