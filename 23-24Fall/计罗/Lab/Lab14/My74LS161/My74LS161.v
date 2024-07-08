`timescale 1ns / 1ps
module My74LS161(
		input CR,
		input Ld,
		input CTP,
		input CTT,
		input CP,
		input [3:0] D,
		output reg [3:0] Q,
		output CO
    );
		initial Q = 4'b0;
		always @(posedge CP,negedge CR) 
			begin
			if(CR == 0)
				Q <= 4'b0;
			else if(Ld == 0)
				Q <= D;
			else begin
				if(CTP == 1 & CTT == 1)
					Q <= Q + 1;
			end
		end
		
		assign CO = (&Q) & CTT;

endmodule
