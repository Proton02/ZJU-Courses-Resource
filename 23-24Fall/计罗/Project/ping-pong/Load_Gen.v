`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:05:38 12/05/2023 
// Design Name: 
// Module Name:    Load_Gen 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Load_Gen(
		input wire clk,
		input wire clk_1ms,
		input wire btn_in,
		output reg Load_out
    );
		initial Load_out = 0;
		wire btn_out;
		reg old_btn;
		// btn_out you btn_in qu dou hou chan sheng
		// pbdebounce p0(clk_1ms, btn_in, btn_out); //fang zhi dou dong 
		always@(posedge clk) begin 
			if((old_btn == 1'b0) && (btn_in == 1'b1))  //  btn chu xian shang sheng yan
				Load_out <= 1'b1;
			else 
				Load_out <= 1'b0;
		end
		always@(posedge clk)begin
			old_btn <= btn_in;
		end

endmodule
