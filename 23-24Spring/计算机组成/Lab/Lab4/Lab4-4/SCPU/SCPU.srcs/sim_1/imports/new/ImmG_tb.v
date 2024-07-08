`timescale 1ns/1ps
module ImmG_tb();
  reg [31:0]  inst_imm;
  wire[31:0]  Imm_out;

  ImmG m0 (.inst_imm(inst_imm), .Imm_out(Imm_out));

`define LET_INST_BE(inst) \
  inst_imm = inst; \
  #5;

  initial begin
    $dumpfile("ImmG.vcd");
    $dumpvars(1, ImmG_tb);

    #5;
    // Test for I-Type
    `LET_INST_BE(32'h3E810093);   //addi x1, x2, 1000
    `LET_INST_BE(32'h00A14093);   //xori x1, x2, 10
    `LET_INST_BE(32'h00116093);   //ori x1, x2, 1
    `LET_INST_BE(32'h00017093);   //andi x1, x2, 0
    `LET_INST_BE(32'h01411093);   //slli x1, x2, 20
    `LET_INST_BE(32'h00515093);   //srli x1, x2, 5
    `LET_INST_BE(32'h41815093);   //srai x1, x2, 24
    `LET_INST_BE(32'hFFF12093);   //slti x1, x2, -1
    `LET_INST_BE(32'h3FF13093);   //sltiu x1, x2, 1023
    `LET_INST_BE(32'h0E910083);   //lb x1, 233(x2)

    #20;
    // Test for S-Type
    `LET_INST_BE(32'hFE110DA3);   //sb x1, -5(x2)
    `LET_INST_BE(32'h00211023);   //sh x2, 0(x2)
    `LET_INST_BE(32'h00C0A523);   //sw x12, 10(x1)

    #20;
    // Test for B-Type
    `LET_INST_BE(32'hFE108AE3);   //beq x1, x1, -12
    `LET_INST_BE(32'h00211463);   //bne x2, x2, 8
    `LET_INST_BE(32'h0031CA63);   //blt x3, x3, 20
    `LET_INST_BE(32'hFE4256E3);   //bge x4, x4, -20

    #20;
    // Test for J-Type
    `LET_INST_BE(32'hF9DFF06F);   //jal x0, -100
    `LET_INST_BE(32'h3FE000EF);   //jal x1, 1023 NOTE: does ImmGen output 1023?

    #20;
    // Test for jalr
    `LET_INST_BE(32'h3FE280E7);   // jalr x1, x5, 1022
    `LET_INST_BE(32'hC02280E7);   // jalr x1, x5, -1022

    #20;
    // Test for lui auipc 
    `LET_INST_BE(32'h003D0A37);    // lui x19, 976
    `LET_INST_BE(32'h800009B7);    // lui x19, 524288
    `LET_INST_BE(32'h003D0A17);    // auipc x19, 976
    `LET_INST_BE(32'h80000997);    // auipc x19, 524288

    #50; $finish();
  end
endmodule