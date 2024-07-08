`timescale 1ns / 1ps

module MEM_reg_WB(
    input               clk_MEMWB,
    input               rst_MEMWB,
    input [3:0]         WB_in_MEMWB,
    input [31:0]        PC_plus_imm_in_MEMWB,
    input [31:0]        Load_control_data_in_MEMWB,
    input [31:0]        ALU_res_in_MEMWB,
    input [31:0]        imm_in_MEMWB,
    input [31:0]        PC_plus_4_in_MEMWB,
    input [4:0]         Rd_addr_in_MEMWB,
    input [31:0]        inst_in_MEMWB,

    output reg [3:0]    WB_out_MEMWB,
    output reg [31:0]   PC_plus_imm_out_MEMWB,
    output reg [31:0]   Load_control_data_out_MEMWB,
    output reg [31:0]   ALU_res_out_MEMWB,
    output reg [31:0]   imm_out_MEMWB,
    output reg [31:0]   PC_plus_4_out_MEMWB,
    output reg [4:0]    Rd_addr_out_MEMWB,
    output reg [31:0]   inst_out_MEMWB
    );

    always @(posedge clk_MEMWB or posedge rst_MEMWB) begin
        if(rst_MEMWB) begin
            WB_out_MEMWB <= 4'b0;
            PC_plus_imm_out_MEMWB <= 32'b0;
            Load_control_data_out_MEMWB <= 32'b0;
            ALU_res_out_MEMWB <= 32'b0;
            imm_out_MEMWB <= 32'b0;
            PC_plus_4_out_MEMWB <= 32'b0;
            Rd_addr_out_MEMWB <= 5'b0;
            inst_out_MEMWB <= 0;
        end
        else begin
            WB_out_MEMWB <= WB_in_MEMWB;
            PC_plus_imm_out_MEMWB <= PC_plus_imm_in_MEMWB;
            Load_control_data_out_MEMWB <= Load_control_data_in_MEMWB;
            ALU_res_out_MEMWB <= ALU_res_in_MEMWB;
            imm_out_MEMWB <= imm_in_MEMWB;
            PC_plus_4_out_MEMWB <= PC_plus_4_in_MEMWB;
            Rd_addr_out_MEMWB <= Rd_addr_in_MEMWB;
            inst_out_MEMWB <= inst_in_MEMWB;
        end
    end

endmodule
