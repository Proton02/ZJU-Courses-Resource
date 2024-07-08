`timescale 1ns / 1ps
module Top(
		input clk,
		input [15:0] SW,
		output [3:0] AN,
		output [7:0] Segment
    );
		
		wire [3:0] Load_A, Load_B, Load_C;
		wire [3:0] A_IN, A_I0, A_OUT; 
		wire [3:0] B_IN, B_I0, B_OUT;
		wire [3:0] C_IN, C_I0, C_OUT;
		wire [31:0] clk_div;
		wire [3:0] I1;
		
		clkdiv m0(clk, 1'b0, clk_div);
		
		// Register A
		MyRegister4b m1(.clk(clk), .IN(A_IN), .Load(Load_A), .OUT(A_OUT));
		Load_Gen m2(.clk(clk), .clk_1ms(clk_div[17]), .btn_in(SW[2]), .Load_out(Load_A));
		AddSub4b m3(.A(A_OUT), .B(4'b0001), .Ctrl(SW[0]), .S(A_I0));
		assign A_IN = (SW[15] == 1'b0)? A_I0: I1;
		
		// Register B
		MyRegister4b m4(.clk(clk), .IN(B_IN), .Load(Load_B), .OUT(B_OUT));
		Load_Gen m5(.clk(clk), .clk_1ms(clk_div[17]), .btn_in(SW[3]), .Load_out(Load_B));
		AddSub4b m6(.A(B_OUT), .B(4'b0001), .Ctrl(SW[1]), .S(B_I0));
		assign B_IN = (SW[15] == 1'b0)? B_I0: I1;
		
		// Register C
		MyRegister4b m7(.clk(clk), .IN(C_IN), .Load(Load_C), .OUT(C_OUT));
		Load_Gen m8(.clk(clk), .clk_1ms(clk_div[17]), .btn_in(SW[4]), .Load_out(Load_C));
		assign C_IN = (SW[15] == 1'b0)? I1: 4'b0000;
		
		Mux4to1b4 m9( .I0(A_OUT), .I1(B_OUT), .I2(C_OUT), .I3(4'b0000), .S(SW[8:7]), .o(I1));
		DispNum_sch m10(.clk(clk), .HEXS({A_OUT, B_OUT, C_OUT, 4'b0000}), .LES(4'b0), .points(4'b0), .RST(1'b0), .AN(AN), .Segment(Segment));
endmodule
