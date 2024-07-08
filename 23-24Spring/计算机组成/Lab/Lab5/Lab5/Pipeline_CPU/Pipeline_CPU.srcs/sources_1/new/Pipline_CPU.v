`timescale 1ns / 1ps

module Pipline_CPU(
    input                   clk,
    input                   rst,
    input [31:0]            Data_in,    // RAM_B_out
    input [31:0]            inst_in,    // ROMD_out

    output [31:0]           Addr_out,   //EXMEM
    output [31:0]           Data_out,   //EXMEM
    output [31:0]           PC_out_IF,  //IF
    output [3:0]            wea,        //EXMEM
    output [31:0]           inst_ID,
    output [31:0]           inst_EX,
    output [31:0]           inst_MEM,
    output [31:0]           inst_WB,
    output [31:0]           Write_back_data,
    output [31:0]           Reg00, output [31:0]       Reg01, output [31:0]       Reg02, output [31:0]       Reg03, output [31:0]       Reg04, output [31:0]       Reg05, output [31:0]       Reg06, output [31:0]       Reg07, output [31:0]       Reg08, output [31:0]       Reg09, output [31:0]       Reg10, output [31:0]       Reg11, output [31:0]       Reg12, output [31:0]       Reg13, output [31:0]       Reg14, output [31:0]       Reg15, output [31:0]       Reg16, output [31:0]       Reg17, output [31:0]       Reg18, output [31:0]       Reg19, output [31:0]       Reg20, output [31:0]       Reg21, output [31:0]       Reg22, output [31:0]       Reg23, output [31:0]       Reg24, output [31:0]       Reg25, output [31:0]       Reg26, output [31:0]       Reg27, output [31:0]       Reg28, output [31:0]       Reg29, output [31:0]       Reg30, output [31:0]       Reg31
    );

    wire [31:0] PC_plus_4_out_IF;

    wire [31:0] PC_out_IFID;
    wire [31:0] inst_out_IFID;
    wire [31:0] PC_plus_4_out_IFID;

    wire        Branch_signal_out_ID;
    wire [1:0]  Jump_out_ID;
    wire [31:0] imm_plus_rs1_out_ID;
    wire [3:0]  WB_out_ID;
    wire [2:0]  MEM_out_ID;
    wire [10:0] EX_out_ID;
    wire [31:0] PC_plus_imm_out_ID;
    wire [31:0] Rs1_data_out_ID;
    wire [31:0] Rs2_data_out_ID;
    wire [31:0] imm_out_ID;
    wire [31:0] PC_plus_4_out_ID;
    wire [4:0]  Rd_addr_out_ID;
    wire        Flush_out_ID;

    wire [3:0]  WB_out_IDEX;
    wire [2:0]  MEM_out_IDEX;
    wire [10:0] EX_out_IDEX;
    wire [31:0] PC_plus_imm_out_IDEX;
    wire [31:0] Rs1_data_out_IDEX;
    wire [31:0] Rs2_data_out_IDEX;
    wire [31:0] imm_out_IDEX;
    wire [31:0] PC_plus_4_out_IDEX;
    wire [4:0]  Rd_addr_out_IDEX;
    wire [4:0]  Rs1_addr_out_IDEX;
    wire [4:0]  Rs2_addr_out_IDEX;

    wire [3:0]  WB_out_EX;
    wire [2:0]  MEM_out_EX;
    wire [31:0] PC_plus_imm_out_EX;
    wire [3:0]  store_control_wea_out_EX;
    wire [31:0] store_control_data_out_EX;
    wire [31:0] ALU_res_out_EX;
    wire [31:0] imm_out_EX;
    wire [31:0] PC_plus_4_out_EX;
    wire [4:0]  Rd_addr_out_EX;

    wire [3:0]  WB_out_EXMEM;
    wire [2:0]  MEM_out_EXMEM;
    wire [31:0] PC_plus_imm_out_EXMEM;
    wire [31:0] ALU_res_out_EXMEM;
    wire [31:0] imm_out_EXMEM;
    wire [31:0] PC_plus_4_out_EXMEM;
    wire [4:0]  Rd_addr_out_EXMEM;

    wire [3:0]  WB_out_MEM;
    wire [31:0] PC_plus_imm_out_MEM;
    wire [31:0] Load_control_data_out_MEM;
    wire [31:0] ALU_res_out_MEM;
    wire [31:0] imm_out_MEM;
    wire [31:0] PC_plus_4_out_MEM;
    wire [4:0]  Rd_addr_out_MEM;

    wire [3:0]  WB_out_MEMWB;
    wire [31:0] PC_plus_imm_out_MEMWB;
    wire [31:0] Load_control_data_out_MEMWB;
    wire [31:0] ALU_res_out_MEMWB;
    wire [31:0] imm_out_MEMWB;
    wire [31:0] PC_plus_4_out_MEMWB;
    wire [4:0]  Rd_addr_out_MEMWB;

    wire [31:0] Rd_data_out_WB;
    wire        RegWrite_out_WB;

    wire        BFWD_A;
    wire        BFWD_B;
    wire [31:0] BFWD_A_data;
    wire [31:0] BFWD_B_data;

    wire [2:0]  Forwarding_A_out_FWD;
    wire [2:0]  Forwarding_B_out_FWD;
    wire [2:0]  store_fwd_out_FWD;

    wire        Stall_out_HDT;
    wire [31:0] PC_out_HDT;
    wire        bubble;

    wire [31:0] inst_out_ID;
    wire [31:0] inst_out_IDEX;
    wire [31:0] inst_out_EX;
    wire [31:0] inst_out_EXMEM;
    wire [31:0] inst_out_MEM;
    wire [31:0] inst_out_MEMWB;

    assign inst_ID = inst_out_ID;
    assign inst_EX = inst_out_EX;
    assign inst_MEM = inst_out_MEM;
    assign inst_WB = inst_out_MEMWB;
    assign Write_back_data = Rd_data_out_WB;

    Harzard_detection H1(
        .Rs1(inst_out_IFID[19:15]),
        .Rs2(inst_out_IFID[24:20]),
        .Rd_EX(Rd_addr_out_IDEX),
        .Rd_MEM(Rd_addr_out_EXMEM),
        .Load_len_IDEX_in_HDT(MEM_out_IDEX),
        .Load_len_EXMEM_in_HDT(MEM_out_EXMEM),
        .PC_IF_in_HDT(PC_out_IF),
        .PC_IFID_in_HDT(PC_out_IFID),

        .Stall_out_HDT(Stall_out_HDT),
        .PC_out_HDT(PC_out_HDT),
        .bubble(bubble)
    );

    Forwarding H2(
        .Rs1_addr_IDEX_in_FWD(Rs1_addr_out_IDEX),
        .Rs2_addr_IDEX_in_FWD(Rs2_addr_out_IDEX),
        .Rd_addr_EXMEM_in_FWD(Rd_addr_out_EXMEM),
        .Rd_addr_MEMWB_in_FWD(Rd_addr_out_MEMWB),
        .RegWrite_EXMEM_in_FWD(WB_out_EXMEM[0]),
        .RegWrite_MEMWB_in_FWD(WB_out_MEMWB[0]),
        .inst_EXMEM_in_FWD(inst_out_EXMEM),
        .inst_IDEX_in_FWD(inst_out_IDEX),

        .Forwarding_A_out_FWD(Forwarding_A_out_FWD),
        .Forwarding_B_out_FWD(Forwarding_B_out_FWD),
        .store_fwd_out_FWD(store_fwd_out_FWD)
    );

    Branch_Forwarding H3(
        .Rd_addr_IDEX_in_BFWD(Rd_addr_out_IDEX),
        .Rd_addr_EXMEM_in_BFWD(Rd_addr_out_EXMEM),
        .ALU_res_EX_in_BFWD(ALU_res_out_EX),
        .ALU_res_MEM_in_BFWD(ALU_res_out_MEM),
        .Load_data_in_BFWD(Load_control_data_out_MEM),
        .RegWrite_IDEX_in_BFWD(WB_out_IDEX[0]),
        .RegWrite_EXMEM_in_BFWD(WB_out_EXMEM[0]),
        .inst_EXMEM_in_FWD(inst_out_EXMEM),
        .inst_in_BFWD(inst_out_IFID),

        .BFWD_A(BFWD_A),
        .BFWD_B(BFWD_B),
        .BFWD_A_data(BFWD_A_data),
        .BFWD_B_data(BFWD_B_data)
    );

    IF U1(
        .clk_IF(clk),
        .rst_IF(rst),
        .Branch_signal_in_IF(Branch_signal_out_ID),
        .Jump_in_IF(Jump_out_ID),
        .PC_plus_imm_in_IF(PC_plus_imm_out_ID),
        .imm_plus_rs1_in_IF(imm_plus_rs1_out_ID),
        .Stall_HDT_in_IF(Stall_out_HDT),
        .PC_HDT_in_IF(PC_out_HDT),
        .bubble_in_IF(bubble),

        .PC_out_IF(PC_out_IF),          // 给ROM_D，总输出
        .PC_plus_4_out_IF(PC_plus_4_out_IF)
    );

    IF_reg_ID U2(
        .clk_IFID(clk),
        .rst_IFID(rst),
        .PC_in_IFID(PC_out_IF),
        .inst_in_IFID(inst_in),         // 从ROM_D传来
        .PC_plus_4_IFID(PC_plus_4_out_IF),
        .Flush_in_IFID(Flush_out_ID),

        .PC_out_IFID(PC_out_IFID),      // debug
        .inst_out_IFID(inst_out_IFID),  // debug
        .PC_plus_4_out_IFID(PC_plus_4_out_IFID)
    );

    ID U3(
        .clk_ID(clk),
        .rst_ID(rst),
        .PC_in_ID(PC_out_IFID),
        .inst_in_ID(inst_out_IFID),
        .PC_plus_4_in_ID(PC_plus_4_out_IFID),
        .RegWrite_in_ID(RegWrite_out_WB),   // 从WB传来
        .Rd_addr_in_ID(Rd_addr_out_MEMWB),  // 从MEMWB传来
        .Rd_data_in_ID(Rd_data_out_WB),        // 从WB传来
        .BFWD_A_in_ID(BFWD_A),
        .BFWD_B_in_ID(BFWD_B),
        .BFWD_A_data_in_ID(BFWD_A_data),
        .BFWD_B_data_in_ID(BFWD_B_data),

        .Branch_signal_out_ID(Branch_signal_out_ID),    // 直接给IF
        .Jump_out_ID(Jump_out_ID),                      // 直接给IF
        .imm_plus_rs1_out_ID(imm_plus_rs1_out_ID),      // 直接给IF
        .WB_out_ID(WB_out_ID),
        .MEM_out_ID(MEM_out_ID),
        .EX_out_ID(EX_out_ID),
        .PC_plus_imm_out_ID(PC_plus_imm_out_ID),        
        .Rs1_data_out_ID(Rs1_data_out_ID),
        .Rs2_data_out_ID(Rs2_data_out_ID),
        .imm_out_ID(imm_out_ID),
        .PC_plus_4_out_ID(PC_plus_4_out_ID),
        .Rd_addr_out_ID(Rd_addr_out_ID),
        .inst_out_ID(inst_out_ID),
        .Flush_out_ID(Flush_out_ID),
        .Reg00(Reg00),.Reg01(Reg01),.Reg02(Reg02),.Reg03(Reg03),.Reg04(Reg04),.Reg05(Reg05),.Reg06(Reg06),.Reg07(Reg07),.Reg08(Reg08),.Reg09(Reg09),.Reg10(Reg10),.Reg11(Reg11),.Reg12(Reg12),.Reg13(Reg13),.Reg14(Reg14),.Reg15(Reg15),.Reg16(Reg16),.Reg17(Reg17),.Reg18(Reg18),.Reg19(Reg19),.Reg20(Reg20),.Reg21(Reg21),.Reg22(Reg22),.Reg23(Reg23),.Reg24(Reg24),.Reg25(Reg25),.Reg26(Reg26),.Reg27(Reg27),.Reg28(Reg28),.Reg29(Reg29),.Reg30(Reg30),.Reg31(Reg31)
    );

    ID_reg_EX K4(
        .clk_IDEX(clk),
        .rst_IDEX(rst),
        .WB_in_IDEX(WB_out_ID),
        .MEM_in_IDEX(MEM_out_ID),
        .EX_in_IDEX(EX_out_ID),
        .PC_plus_imm_in_IDEX(PC_plus_imm_out_ID),
        .Rs1_data_in_IDEX(Rs1_data_out_ID),
        .Rs2_data_in_IDEX(Rs2_data_out_ID),
        .imm_in_IDEX(imm_out_ID),
        .PC_plus_4_in_IDEX(PC_plus_4_out_ID),
        .Rd_addr_in_IDEX(Rd_addr_out_ID),
        .Stall_HDT_in_IDEX(Stall_out_HDT),
        .Rs1_addr_in_IDEX(inst_out_IFID[19:15]),
        .Rs2_addr_in_IDEX(inst_out_IFID[24:20]),
        .inst_in_IDEX(inst_out_ID),

        .WB_out_IDEX(WB_out_IDEX),
        .MEM_out_IDEX(MEM_out_IDEX),
        .EX_out_IDEX(EX_out_IDEX),
        .PC_plus_imm_out_IDEX(PC_plus_imm_out_IDEX),
        .Rs1_data_out_IDEX(Rs1_data_out_IDEX),
        .Rs2_data_out_IDEX(Rs2_data_out_IDEX),
        .imm_out_IDEX(imm_out_IDEX),
        .PC_plus_4_out_IDEX(PC_plus_4_out_IDEX),
        .Rd_addr_out_IDEX(Rd_addr_out_IDEX),
        .Rs1_addr_out_IDEX(Rs1_addr_out_IDEX),
        .Rs2_addr_out_IDEX(Rs2_addr_out_IDEX),
        .inst_out_IDEX(inst_out_IDEX)
    );
    
    EX U5(
        .EX_in_EX(EX_out_IDEX),
        .PC_plus_imm_in_EX(PC_plus_imm_out_IDEX),
        .Rs1_data_in_EX(Rs1_data_out_IDEX),
        .Rs2_data_in_EX(Rs2_data_out_IDEX),
        .imm_in_EX(imm_out_IDEX),
        .PC_plus_4_in_EX(PC_plus_4_out_IDEX),
        .Rd_addr_in_EX(Rd_addr_out_IDEX),
        .Forwarding_A_in_EX(Forwarding_A_out_FWD),
        .Forwarding_B_in_EX(Forwarding_B_out_FWD),
        .store_fwd_in_EX(store_fwd_out_FWD),
        .Rd_data_in_EX(Rd_data_out_WB),
        .P_ALU_res_in_EX(ALU_res_out_EXMEM),
        .imm_EXMEM_in_EX(imm_out_EXMEM),
        .PC_plus_4_EXMEM_in_EX(PC_plus_4_out_EXMEM),
        .PC_plus_imm_EXMEM_in_EX(PC_plus_imm_out_EXMEM),
        .inst_in_EX(inst_out_IDEX),

        .PC_plus_imm_out_EX(PC_plus_imm_out_EX),
        .store_control_wea_out_EX(store_control_wea_out_EX),
        .store_control_data_out_EX(store_control_data_out_EX),
        .ALU_res_out_EX(ALU_res_out_EX),
        .imm_out_EX(imm_out_EX),
        .PC_plus_4_out_EX(PC_plus_4_out_EX),
        .Rd_addr_out_EX(Rd_addr_out_EX),
        .inst_out_EX(inst_out_EX)
    );
    
    EX_reg_MEM U6(
        .clk_EXMEM(clk),
        .rst_EXMEM(rst),
        .WB_in_EXMEM(WB_out_IDEX),
        .MEM_in_EXMEM(MEM_out_IDEX),
        .PC_plus_imm_in_EXMEM(PC_plus_imm_out_EX),
        .store_control_wea_in_EXMEM(store_control_wea_out_EX),
        .store_control_data_in_EXMEM(store_control_data_out_EX),
        .ALU_res_in_EXMEM(ALU_res_out_EX),
        .imm_in_EXMEM(imm_out_EX),
        .PC_plus_4_in_EXMEM(PC_plus_4_out_EX),
        .Rd_addr_in_EXMEM(Rd_addr_out_EX),
        .inst_in_EXMEM(inst_out_EX),

        .WB_out_EXMEM(WB_out_EXMEM),
        .MEM_out_EXMEM(MEM_out_EXMEM),
        .PC_plus_imm_out_EXMEM(PC_plus_imm_out_EXMEM),
        .store_control_wea_out_EXMEM(wea),          // 总输出wea
        .store_control_data_out_EXMEM(Data_out),    // 总输出Data_out
        .ALU_res_out_EXMEM(ALU_res_out_EXMEM),      // 总数输出addr_out
        .imm_out_EXMEM(imm_out_EXMEM),
        .PC_plus_4_out_EXMEM(PC_plus_4_out_EXMEM),
        .Rd_addr_out_EXMEM(Rd_addr_out_EXMEM),
        .inst_out_EXMEM(inst_out_EXMEM)
    );

    assign Addr_out = ALU_res_out_EXMEM;
    
    
    MEM U7(
        .MEM_in_MEM(MEM_out_EXMEM),
        .PC_plus_imm_in_MEM(PC_plus_imm_out_EXMEM),
        .ALU_res_in_MEM(ALU_res_out_EXMEM),
        .imm_in_MEM(imm_out_EXMEM),
        .PC_plus_4_in_MEM(PC_plus_4_out_EXMEM),
        .Rd_addr_in_MEM(Rd_addr_out_EXMEM),
        .RAM_B_data_in_MEM(Data_in),    // 从RAM_B传来
        .inst_in_MEM(inst_out_EXMEM),

        .PC_plus_imm_out_MEM(PC_plus_imm_out_MEM),
        .Load_control_data_out_MEM(Load_control_data_out_MEM),
        .ALU_res_out_MEM(ALU_res_out_MEM),
        .imm_out_MEM(imm_out_MEM),
        .PC_plus_4_out_MEM(PC_plus_4_out_MEM),
        .Rd_addr_out_MEM(Rd_addr_out_MEM),
        .inst_out_MEM(inst_out_MEM)
    );
    
    MEM_reg_WB U8(
        .clk_MEMWB(clk),
        .rst_MEMWB(rst),
        .WB_in_MEMWB(WB_out_EXMEM),
        .PC_plus_imm_in_MEMWB(PC_plus_imm_out_MEM),
        .Load_control_data_in_MEMWB(Load_control_data_out_MEM),
        .ALU_res_in_MEMWB(ALU_res_out_MEM),
        .imm_in_MEMWB(imm_out_MEM),
        .PC_plus_4_in_MEMWB(PC_plus_4_out_MEM),
        .Rd_addr_in_MEMWB(Rd_addr_out_MEM),
        .inst_in_MEMWB(inst_out_MEM),

        .WB_out_MEMWB(WB_out_MEMWB),
        .PC_plus_imm_out_MEMWB(PC_plus_imm_out_MEMWB),
        .Load_control_data_out_MEMWB(Load_control_data_out_MEMWB),
        .ALU_res_out_MEMWB(ALU_res_out_MEMWB),
        .imm_out_MEMWB(imm_out_MEMWB),
        .PC_plus_4_out_MEMWB(PC_plus_4_out_MEMWB),
        .Rd_addr_out_MEMWB(Rd_addr_out_MEMWB),
        .inst_out_MEMWB(inst_out_MEMWB)
    );
    
    WB U9(
        .WB_in_WB(WB_out_MEMWB),
        .PC_plus_imm_in_WB(PC_plus_imm_out_MEMWB),
        .Load_control_data_in_WB(Load_control_data_out_MEMWB),
        .ALU_res_in_WB(ALU_res_out_MEMWB),
        .imm_in_WB(imm_out_MEMWB),
        .PC_plus_4_in_WB(PC_plus_4_out_MEMWB),
        .inst_in_WB(inst_out_MEMWB),

        .Rd_data_out_WB(Rd_data_out_WB),
        .RegWrite_out_WB(RegWrite_out_WB)
    );

endmodule
