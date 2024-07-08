`timescale 1ns / 1ps
module LED_DRV_sim;
	reg clk;
	reg [15:0] SW;

	wire LED_CLK;
	wire LED_CLR;
	wire LED_EN;
	wire LED_D0;
	wire [15:0] num;
	wire [15:0] reg_num;

	LED_DRV uut (
		.clk(clk), 
		.SW(SW), 
		.LED_CLK(LED_CLK), 
		.LED_CLR(LED_CLR), 
		.LED_EN(LED_EN), 
		.LED_D0(LED_D0), 
		.num(num), 
		.reg_num(reg_num)
	);
	integer i;
	initial begin
		clk = 0;
		SW = 0;
		#100;

		SW[14] = 1;
		for (i = 0; i < 4; i = i + 1)
		begin
			SW[i] = 1;
		end
		#20;
		for (i = 0; i < 4; i = i + 1)
		begin
			SW[i] = 0;
		end
		#20;
		
      SW[14] = 0;
		for (i = 0; i < 4; i = i + 1)
		begin
			SW[3] = 0; #20 
			SW[3] = 1; #20;
		end
		for (i = 0; i < 3; i = i + 1)
		begin
			SW[2] = 0; #20 
			SW[2] = 1; #20;
		end
		for (i = 0; i < 2; i = i + 1)
		begin
			SW[1] = 0; #20 
			SW[1] = 1; #20;
		end
		SW[0] = 0; #20; // Dial it up and down
		SW[0] = 1; #20;
		
		SW[14] = 0;
		SW[15] = 1; #20
		SW[15] = 0;
	end
	
		always begin
			clk = 1; #10
			clk = 0; #10;
		end
      
endmodule

