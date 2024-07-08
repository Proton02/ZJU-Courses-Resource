// Verilog test fixture created from schematic /root/Xilinx_ISE_DS_Lin_14.7_1015_1/Lab/LampCtrl138/LampCtrl138.sch - Wed Oct 18 23:04:18 2023

`timescale 1ns / 1ps

module LampCtrl138_LampCtrl138_sch_tb();

// Inputs
   reg S2;
   reg S3;

   reg S1;

// Output
   wire F;

// Bidirs

// Instantiate the UUT
   LampCtrl138 UUT (
		.S3(S3), 
		.S2(S2), 
		.S1(S1), 
		.F(F)
   );
// Initialize Inputs
// `ifdef auto_init
integer i;
initial begin 
    for (i = 0; i <= 8; i = i + 1) 
        begin{S3, S2, S1} <= i;
    # 50;
end
    end
// `endif
endmodule
