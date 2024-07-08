// Verilog test fixture created from schematic /home/proton/Xilinx_ISE_DS_Lin_14.7_1015_1/Lab/Lab11/MyCounter/Counter4b.sch - Wed Nov 22 18:50:44 2023

`timescale 1ns / 1ps

module Counter4b_Counter4b_sch_tb();

// Inputs
   reg ck;

// Output
   wire Qa;
   wire Qb;
   wire Qc;
   wire Qd;
   wire Rc;

// Bidirs

// Instantiate the UUT
   Counter4b UUT (
		.Qa(Qa), 
		.Qb(Qb), 
		.Qc(Qc), 
		.Qd(Qd), 
		.ck(ck), 
		.Rc(Rc)
   );
// Initialize Inputs
   `ifdef auto_init
       initial begin
		ck = 0;
   `endif
endmodule
