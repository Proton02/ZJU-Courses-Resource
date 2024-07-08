`timescale 1ns / 1ps

module EX(
    input [10:0]            EX_in_EX,
    input [31:0]            PC_plus_imm_in_EX,
    input [31:0]            Rs1_data_in_EX,
    input [31:0]            Rs2_data_in_EX,
    input [31:0]            imm_in_EX,
    input [31:0]            PC_plus_4_in_EX,
    input [4:0]             Rd_addr_in_EX,
    input [2:0]             Forwarding_A_in_EX,
    input [2:0]             Forwarding_B_in_EX,
    input [2:0]             store_fwd_in_EX,
    input [31:0]            Rd_data_in_EX,
    input [31:0]            P_ALU_res_in_EX,
    input [31:0]            imm_EXMEM_in_EX,
    input [31:0]            PC_plus_4_EXMEM_in_EX,
    input [31:0]            PC_plus_imm_EXMEM_in_EX,
    input [31:0]            inst_in_EX,

    output [31:0]           PC_plus_imm_out_EX,
    output [3:0]            store_control_wea_out_EX,
    output [31:0]           store_control_data_out_EX,
    output [31:0]           ALU_res_out_EX,
    output [31:0]           imm_out_EX,
    output [31:0]           PC_plus_4_out_EX,
    output [4:0]            Rd_addr_out_EX,
    output [31:0]           inst_out_EX
    );

    wire [31:0] MuxC_out;
    wire [31:0] A_out;
    wire [31:0] B_out;
    wire [4:0]  ALU_ctrl = EX_in_EX[9:6];
    wire [1:0]  St_ctrl = EX_in_EX[5:4];
    wire [3:0]  MemR = EX_in_EX[3:0];
    wire        ALUsrcB = EX_in_EX[10];
    wire [31:0] Regs_Rs2_data_in;

    assign PC_plus_imm_out_EX = PC_plus_imm_in_EX;
    assign imm_out_EX = imm_in_EX;
    assign PC_plus_4_out_EX = PC_plus_4_in_EX;
    assign Rd_addr_out_EX = Rd_addr_in_EX;
    assign inst_out_EX = inst_in_EX;
    assign Regs_Rs2_data_in = store_fwd_in_EX == 3'b000 ? Rs2_data_in_EX : 
                              store_fwd_in_EX == 3'b001 ? Rd_data_in_EX : 
                              store_fwd_in_EX == 3'b010 ? P_ALU_res_in_EX : 
                              store_fwd_in_EX == 3'b011 ? PC_plus_imm_EXMEM_in_EX : 
                              store_fwd_in_EX == 3'b100 ? imm_EXMEM_in_EX : 
                              store_fwd_in_EX == 3'b101 ? PC_plus_4_EXMEM_in_EX : 0;
    
    Store_control EX1(
        .Regs_Rs2_data(Regs_Rs2_data_in),
        .Store_control(St_ctrl),
        .ALU_res(ALU_res_out_EX),
        .MemRW(MemR),
        
        .store_control_out(store_control_data_out_EX),
        .store_control_wea(store_control_wea_out_EX)
    );

    Mux2to1 EX2(
        .data1(Rs2_data_in_EX),
        .data2(imm_in_EX),
        .control(ALUsrcB),

        .out(MuxC_out)
    );

    Mux6to1 MuxFA(
        .data1(Rs1_data_in_EX),
        .data2(Rd_data_in_EX),          // i小恩惠结果
        .data3(P_ALU_res_in_EX),        // 前一个alu结果
        .data4(PC_plus_imm_EXMEM_in_EX),  // auipc
        .data5(imm_EXMEM_in_EX),        // lui
        .data6(PC_plus_4_EXMEM_in_EX),  // jalr jal
        .control(Forwarding_A_in_EX),

        .out(A_out)
    );

    Mux6to1 MuxFB(
        .data1(MuxC_out),
        .data2(Rd_data_in_EX),
        .data3(P_ALU_res_in_EX), 
        .data4(PC_plus_imm_EXMEM_in_EX),
        .data5(imm_EXMEM_in_EX),
        .data6(PC_plus_4_EXMEM_in_EX),
        .control(Forwarding_B_in_EX),

        .out(B_out)
    );

    ALU EX3(
        .A(A_out),
        .B(B_out),
        .ALU_Control(ALU_ctrl),

        .res(ALU_res_out_EX)
    );

endmodule
