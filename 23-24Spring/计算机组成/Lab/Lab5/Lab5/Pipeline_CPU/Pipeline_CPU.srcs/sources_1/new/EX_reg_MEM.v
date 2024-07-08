`timescale 1ns / 1ps

module EX_reg_MEM(
    input               clk_EXMEM,
    input               rst_EXMEM,
    input [3:0]         WB_in_EXMEM,
    input [2:0]         MEM_in_EXMEM,
    input [31:0]        PC_plus_imm_in_EXMEM,
    input [3:0]         store_control_wea_in_EXMEM,
    input [31:0]        store_control_data_in_EXMEM,
    input [31:0]        ALU_res_in_EXMEM,
    input [31:0]        imm_in_EXMEM,
    input [31:0]        PC_plus_4_in_EXMEM,
    input [4:0]         Rd_addr_in_EXMEM,
    input [31:0]        inst_in_EXMEM,

    output reg [3:0]    WB_out_EXMEM,
    output reg [2:0]    MEM_out_EXMEM,
    output reg [31:0]   PC_plus_imm_out_EXMEM,
    output reg [3:0]    store_control_wea_out_EXMEM,
    output reg [31:0]   store_control_data_out_EXMEM,
    output reg [31:0]   ALU_res_out_EXMEM,
    output reg [31:0]   imm_out_EXMEM,
    output reg [31:0]   PC_plus_4_out_EXMEM,
    output reg [4:0]    Rd_addr_out_EXMEM,
    output reg [31:0]   inst_out_EXMEM
    );

    always @(posedge clk_EXMEM or posedge rst_EXMEM) begin
        if(rst_EXMEM) begin
            WB_out_EXMEM <= 4'b0;
            MEM_out_EXMEM <= 3'b0;
            PC_plus_imm_out_EXMEM <= 32'b0;
            store_control_wea_out_EXMEM <= 4'b0;
            store_control_data_out_EXMEM <= 32'b0;
            ALU_res_out_EXMEM <= 32'b0;
            imm_out_EXMEM <= 32'b0;
            PC_plus_4_out_EXMEM <= 32'b0;
            Rd_addr_out_EXMEM <= 5'b0;
            inst_out_EXMEM <= 0;
        end
        else begin
            WB_out_EXMEM <= WB_in_EXMEM;
            MEM_out_EXMEM <= MEM_in_EXMEM;
            PC_plus_imm_out_EXMEM <= PC_plus_imm_in_EXMEM;
            store_control_wea_out_EXMEM <= store_control_wea_in_EXMEM;
            store_control_data_out_EXMEM <= store_control_data_in_EXMEM;
            ALU_res_out_EXMEM <= ALU_res_in_EXMEM;
            imm_out_EXMEM <= imm_in_EXMEM;
            PC_plus_4_out_EXMEM <= PC_plus_4_in_EXMEM;
            Rd_addr_out_EXMEM <= Rd_addr_in_EXMEM;
            inst_out_EXMEM <= inst_in_EXMEM;
        end
    end

endmodule
