`timescale 1ns / 1ps

module Controller_tb();
  reg [4:0]     OPcode;
  reg [2:0]     Fun3;
  reg           Fun7;

  wire [1:0]    Jump;
  wire          RegWrite;
  wire          ALUSrc_B;
  wire [1:0]    Store_len;
  wire [3:0]    ALU_Control;
  wire [2:0]    MemtoReg;
  wire          MemRW;
  wire [2:0]    Load_len;
  wire          Branch;
  wire          BranchN;
  
Controller m0(
    .OPcode(OPcode),
    .Fun3(Fun3),
    .Fun7(Fun7),

    .Jump(Jump),
    .RegWrite(RegWrite),
    .ALUSrc_B(ALUSrc_B),
    .Store_len(Store_len),
    .ALU_Control(ALU_Control),
    .MemtoReg(MemtoReg),
    .MemRW(MemRW),
    .Load_len(Load_len),
    .Branch(Branch),
    .BranchN(BranchN)
	);

  reg [31:0] inst_for_test;

`define LET_INST_BE(inst) \
  inst_for_test = inst; \
  OPcode = inst_for_test[6:2]; \
  Fun3 = inst_for_test[14:12]; \
  Fun7 = inst_for_test[30]; \
  #5;

  initial begin
    $dumpfile("Controller.vcd");
    $dumpvars(1, Controller_tb);

    #5;
    // R-type
    `LET_INST_BE(32'h001100B3);   //add x1, x2, x1
    `LET_INST_BE(32'h400080B3);   //sub x1, x1, x0
    `LET_INST_BE(32'h002140B3);   //xor x1, x2, x2
    `LET_INST_BE(32'h002160B3);   //or x1, x2, x2
    `LET_INST_BE(32'h002170B3);   //and x1, x2, x2
    `LET_INST_BE(32'h002110B3);   //sll x1, x2, x2
    `LET_INST_BE(32'h002150B3);   //srl x1, x2, x2
    `LET_INST_BE(32'h402150B3);   //sra x1, x2, x2
    `LET_INST_BE(32'h002120B3);   //slt x1, x2, x2
    `LET_INST_BE(32'h002130B3);   //sltu x1, x2, x2
    #5;
    // I-type
    `LET_INST_BE(32'h3E810093);   //addi x1, x2, 1000
    `LET_INST_BE(32'h00A14093);   //xori x1, x2, 10
    `LET_INST_BE(32'h00116093);   //ori x1, x2, 1
    `LET_INST_BE(32'h00017093);   //andi x1, x2, 0
    `LET_INST_BE(32'h00011093);   //slli x1, x2, 0
    `LET_INST_BE(32'h00515093);   //srli x1, x2, 5
    `LET_INST_BE(32'h40515093);   //srai x1, x2, 5
    `LET_INST_BE(32'hFFF12093);   //slti x1, x2, -1
    `LET_INST_BE(32'hFFF13093);   //sltiu x1, x2, -1
    #5;
    // Load and store
    `LET_INST_BE(32'h00812083);   //lw x1, 8(x2)
    `LET_INST_BE(32'h00A11083);   //lh x1, 10(x2)
    `LET_INST_BE(32'h00C10083);   //lb x1, 12(x2)
    `LET_INST_BE(32'h01A15083);   //lhu x1, 26(x2)
    `LET_INST_BE(32'h01C14083);   //lbu x1, 28(x2)
    
    `LET_INST_BE(32'h00C0A823);   //sw x12, 16(x1)
    `LET_INST_BE(32'h00111723);   //sh x12, 14(x1)
    `LET_INST_BE(32'h00110923);   //sb x12, 18(x1)
    #5;
    // B-type
    `LET_INST_BE(32'h00108563);   //beq x1, x1, 10
    `LET_INST_BE(32'h00109663);   //bne x1, x1, 12
    `LET_INST_BE(32'h0010C763);   //blt x1, x1, 14
    `LET_INST_BE(32'h0010D863);   //bge x1, x1, 16
    `LET_INST_BE(32'h0010E963);   //bltu x1, x1, 18
    `LET_INST_BE(32'h0010FA63);   //bgeu x1, x1, 20
    #5;
    // J-type
    `LET_INST_BE(32'hF9DFF06F);   //jal x0, -100
    #5;
    // jalr
    `LET_INST_BE(32'h3FF100E7);   //jalr x1, x2, 1020
    #5;
    // lui
    `LET_INST_BE(32'h003FF0B7);   //lui x1, 1018
    #5;
    // auipc
    `LET_INST_BE(32'h003FF097);   //auipc x1, 1016


    #50; $finish();
  end
endmodule