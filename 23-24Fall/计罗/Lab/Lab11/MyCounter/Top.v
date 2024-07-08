`timescale 1ns / 1ps
module Top(
	input wire clk,
	output wire [7:0]SEGMENT,
	output wire [3:0]AN,
	output wire LED
    );
	 
	wire clk_1s;
	wire [3:0]num;
	
	clk_1s m0(.clk(clk),.clk_1s(clk_1s));
	Counter4b m1(.clk(clk_1s),.Qa(num[0]),.Qb(num[1]),.Qc(num[2]),.Qd(num[3]),.Rc(LED));
	DispNum_sch m2(.clk(clk),.HEXS({num[3:0],4'b0000, 4'b0000, 4'b0000}),.RST(1'b0),.AN(AN),.Segment(SEGMENT));
endmodule
