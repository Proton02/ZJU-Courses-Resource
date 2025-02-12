`timescale 1ns / 1ps
module LampCtrl_LampCtrl_sch_tb();
// Inputs
reg S1;
reg S2;
reg S3;
wire F;
lamp_ctrl UUT(
        .S1(S1),
        .S2(S2),
        .S3(S3),
        .F(F));
// Initialize Inputs
//   `ifdef auto_init
integer i;
initial begin 
    for (i = 0; i <= 8; i = i + 1) 
        begin{S3, S2, S1} <= i;
    # 50;
end
    end
        endmodule