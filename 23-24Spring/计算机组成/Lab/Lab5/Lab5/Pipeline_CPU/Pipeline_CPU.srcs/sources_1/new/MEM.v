`timescale 1ns / 1ps

module MEM(
    input [2:0]         MEM_in_MEM,
    input [31:0]        PC_plus_imm_in_MEM,
    input [31:0]        ALU_res_in_MEM,
    input [31:0]        imm_in_MEM,
    input [31:0]        PC_plus_4_in_MEM,
    input [4:0]         Rd_addr_in_MEM,
    input [31:0]        RAM_B_data_in_MEM,
    input [31:0]        inst_in_MEM,

    output [31:0]       PC_plus_imm_out_MEM,
    output [31:0]       Load_control_data_out_MEM,
    output [31:0]       ALU_res_out_MEM,
    output [31:0]       imm_out_MEM,
    output [31:0]       PC_plus_4_out_MEM,
    output [4:0]        Rd_addr_out_MEM,
    output [31:0]       inst_out_MEM
    );

    assign PC_plus_imm_out_MEM = PC_plus_imm_in_MEM;
    assign ALU_res_out_MEM = ALU_res_in_MEM;
    assign imm_out_MEM = imm_in_MEM;
    assign PC_plus_4_out_MEM = PC_plus_4_in_MEM;
    assign Rd_addr_out_MEM = Rd_addr_in_MEM;
    assign inst_out_MEM = inst_in_MEM;

    Load_control MEM1(
        .data_mem_out(RAM_B_data_in_MEM),
        .Load_control(MEM_in_MEM),
        .ALU_res(ALU_res_in_MEM),
        
        .Load_control_data(Load_control_data_out_MEM)
    );


endmodule
