`timescale 1ns / 1ps

module SCPU(
    input               clk,
    input               rst,
    input [31:0]        Data_in,
    input [31:0]        inst_in,

    output [3:0]        wea,
    output [31:0]       Addr_out,
    output [31:0]       Data_out,
    output [31:0]       PC_out,
    output [31:0]   Reg00,
    output [31:0]   Reg01,
    output [31:0]   Reg02,
    output [31:0]   Reg03,
    output [31:0]   Reg04,
    output [31:0]   Reg05,
    output [31:0]   Reg06,
    output [31:0]   Reg07,
    output [31:0]   Reg08,
    output [31:0]   Reg09,
    output [31:0]   Reg10,
    output [31:0]   Reg11,
    output [31:0]   Reg12,
    output [31:0]   Reg13,
    output [31:0]   Reg14,
    output [31:0]   Reg15,
    output [31:0]   Reg16,
    output [31:0]   Reg17,
    output [31:0]   Reg18,
    output [31:0]   Reg19,
    output [31:0]   Reg20,
    output [31:0]   Reg21,
    output [31:0]   Reg22,
    output [31:0]   Reg23,
    output [31:0]   Reg24,
    output [31:0]   Reg25,
    output [31:0]   Reg26,
    output [31:0]   Reg27,
    output [31:0]   Reg28,
    output [31:0]   Reg29,
    output [31:0]   Reg30,
    output [31:0]   Reg31
    );

    wire [4:0] inst6_2_Dout;
    wire [2:0] inst14_12_Dout;
    wire       inst30_Dout;

    wire [1:0] Jump;
    wire       RegWrite;
    wire       ALUSrc_B;
    wire [1:0] Store_len;
    wire [3:0] ALU_Control;
    wire [2:0] MemtoReg;
    wire [3:0] MemRW;
    wire [2:0] Load_len;
    wire       Branch;
    wire       BranchN;

    inst6_2 U1(
        .Din(inst_in),

        .Dout(inst6_2_Dout)
    );

    inst14_12 U2(
        .Din(inst_in),

        .Dout(inst14_12_Dout)
    );

    inst30 U3(
        .Din(inst_in),
        
        .Dout(inst30_Dout)
    );

    Controller U4(
        .OPcode(inst6_2_Dout),
        .Fun3(inst14_12_Dout),
        .Fun7(inst30_Dout),
        
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

    Data_Path U5(
        .clk(clk),        
        .rst(rst),        
        .inst_field(inst_in), 
        .Jump(Jump),       
        .RegWrite(RegWrite),           
        .ALUSrc_B(ALUSrc_B),   
        .Store_len(Store_len),  
        .ALU_Control(ALU_Control),
        .MemtoReg(MemtoReg),    
        .MemRW(MemRW),   
        .Load_len(Load_len),   
        .Branch(Branch),     
        .BranchN(BranchN),
        .Data_in(Data_in),

        .Addr_out(Addr_out),
        .Data_out(Data_out),
        .PC_out(PC_out),
        .wea(wea),
        .Reg00(Reg00),
        .Reg01(Reg01),
        .Reg02(Reg02),
        .Reg03(Reg03),
        .Reg04(Reg04),
        .Reg05(Reg05),
        .Reg06(Reg06),
        .Reg07(Reg07),
        .Reg08(Reg08),
        .Reg09(Reg09),
        .Reg10(Reg10),
        .Reg11(Reg11),
        .Reg12(Reg12),
        .Reg13(Reg13),
        .Reg14(Reg14),
        .Reg15(Reg15),
        .Reg16(Reg16),
        .Reg17(Reg17),
        .Reg18(Reg18),
        .Reg19(Reg19),
        .Reg20(Reg20),
        .Reg21(Reg21),
        .Reg22(Reg22),
        .Reg23(Reg23),
        .Reg24(Reg24),
        .Reg25(Reg25),
        .Reg26(Reg26),
        .Reg27(Reg27),
        .Reg28(Reg28),
        .Reg29(Reg29),
        .Reg30(Reg30),
        .Reg31(Reg31)
    );

endmodule
