`timescale 1ns / 1ps

module ID_reg_EX(
    input                   clk_IDEX,
    input                   rst_IDEX,
    input [3:0]             WB_in_IDEX,
    input [2:0]             MEM_in_IDEX,
    input [10:0]            EX_in_IDEX,
    input [31:0]            PC_plus_imm_in_IDEX,
    input [31:0]            Rs1_data_in_IDEX,
    input [31:0]            Rs2_data_in_IDEX,
    input [31:0]            imm_in_IDEX,
    input [31:0]            PC_plus_4_in_IDEX,
    input [4:0]             Rd_addr_in_IDEX,
    input                   Stall_HDT_in_IDEX,
    input [4:0]             Rs1_addr_in_IDEX,
    input [4:0]             Rs2_addr_in_IDEX,
    input [31:0]            inst_in_IDEX,

    output reg [3:0]        WB_out_IDEX,
    output reg [2:0]        MEM_out_IDEX,
    output reg [10:0]       EX_out_IDEX,
    output reg [31:0]       PC_plus_imm_out_IDEX,
    output reg [31:0]       Rs1_data_out_IDEX,
    output reg [31:0]       Rs2_data_out_IDEX,
    output reg [31:0]       imm_out_IDEX,
    output reg [31:0]       PC_plus_4_out_IDEX,
    output reg [4:0]        Rd_addr_out_IDEX,
    output reg [4:0]        Rs1_addr_out_IDEX,
    output reg [4:0]        Rs2_addr_out_IDEX,
    output reg [31:0]       inst_out_IDEX
    );

    always @(posedge clk_IDEX or posedge rst_IDEX) begin
        if(rst_IDEX | Stall_HDT_in_IDEX) begin
            WB_out_IDEX <= 4'b0;
            MEM_out_IDEX <= 3'b0;
            EX_out_IDEX <= 11'b0;
            PC_plus_imm_out_IDEX <= 32'b0;
            Rs1_data_out_IDEX <= 32'b0;
            Rs2_data_out_IDEX <= 32'b0;
            imm_out_IDEX <= 32'b0;
            PC_plus_4_out_IDEX <= 32'b0;
            Rd_addr_out_IDEX <= 5'b0;
            Rs1_addr_out_IDEX <= 5'b0;
            Rs2_addr_out_IDEX <= 5'b0;
            inst_out_IDEX <= 0;
        end
        else begin
            WB_out_IDEX <= WB_in_IDEX;
            MEM_out_IDEX <= MEM_in_IDEX;
            EX_out_IDEX <= EX_in_IDEX;
            PC_plus_imm_out_IDEX <= PC_plus_imm_in_IDEX;
            Rs1_data_out_IDEX <= Rs1_data_in_IDEX;
            Rs2_data_out_IDEX <= Rs2_data_in_IDEX;
            imm_out_IDEX <= imm_in_IDEX;
            PC_plus_4_out_IDEX <= PC_plus_4_in_IDEX;
            Rd_addr_out_IDEX <= Rd_addr_in_IDEX;
            Rs1_addr_out_IDEX <= Rs1_addr_in_IDEX;
            Rs2_addr_out_IDEX <= Rs2_addr_in_IDEX;
            inst_out_IDEX <= inst_in_IDEX;
        end
    end

endmodule
