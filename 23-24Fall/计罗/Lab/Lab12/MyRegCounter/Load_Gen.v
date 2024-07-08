`timescale 1ns / 1ps
module Load_Gen(
    input wire clk,
    input wire clk_1ms,
    input wire btn_in,
    output reg Load_out
    );	 
	 initial Load_out = 0;
	 wire btn_out;
	 reg old_btn;
	 // pbdebounce p0(clk_1ms, btn_in, btn_out);
	 always@(posedge clk) begin
		if ((old_btn == 1'b0) && (btn_out == 1'b1))
			Load_out <= 1'b1;
		else
			Load_out <= 1'b0;
	 end
	 always@(posedge clk) begin
		old_btn <= btn_out;
	 end
endmodule
