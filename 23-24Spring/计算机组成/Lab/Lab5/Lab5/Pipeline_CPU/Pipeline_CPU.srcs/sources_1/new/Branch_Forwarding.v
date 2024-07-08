`timescale 1ns / 1ps

module Branch_Forwarding(
    input [4:0]     Rd_addr_IDEX_in_BFWD,           // IDEX发出
    input [4:0]     Rd_addr_EXMEM_in_BFWD,          // EXMEM发出
    input [31:0]    ALU_res_EX_in_BFWD,             // EX发出
    input [31:0]    ALU_res_MEM_in_BFWD,            // MEM发出
    input [31:0]    Load_data_in_BFWD,              // load_control发出
    input           RegWrite_IDEX_in_BFWD,          // IDEX发出
    input           RegWrite_EXMEM_in_BFWD,         // EXMEM发出
    input [31:0]    inst_EXMEM_in_FWD,              // EXMEM发出
    input [31:0]    inst_in_BFWD,                   // IDEX发出

    output          BFWD_A,
    output          BFWD_B,
    output [31:0]   BFWD_A_data,
    output [31:0]   BFWD_B_data
    );

    reg         BFWD_A_tmp;
    reg         BFWD_B_tmp;
    reg [31:0]  BFWD_A_data_tmp;
    reg [31:0]  BFWD_B_data_tmp;
    wire [4:0]  Opcode = inst_in_BFWD[6:2];
    wire [4:0]  Opcode_EXMEM = inst_EXMEM_in_FWD[6:2];
    wire [4:0]  Rs1_addr = inst_in_BFWD[19:15];
    wire [4:0]  Rs2_addr = inst_in_BFWD[24:20];

    always @(*) begin
        if(Opcode == 5'b11000)begin
            if(Rs1_addr == Rd_addr_IDEX_in_BFWD & Rd_addr_IDEX_in_BFWD != 0 & RegWrite_IDEX_in_BFWD)begin
                BFWD_A_tmp = 1;
                BFWD_A_data_tmp = ALU_res_EX_in_BFWD;
            end
            else if(Rs1_addr == Rd_addr_EXMEM_in_BFWD & Rd_addr_EXMEM_in_BFWD != 0 & RegWrite_EXMEM_in_BFWD)begin
                BFWD_A_tmp = 1;
                BFWD_A_data_tmp = ALU_res_MEM_in_BFWD;
                if(Opcode_EXMEM == 5'b00000)
                    BFWD_A_data_tmp = Load_data_in_BFWD;
            end
            else 
                BFWD_A_tmp = 0;


            if(Rs2_addr == Rd_addr_IDEX_in_BFWD & Rd_addr_IDEX_in_BFWD != 0 & RegWrite_IDEX_in_BFWD)begin
                BFWD_B_tmp = 1;
                BFWD_B_data_tmp = ALU_res_EX_in_BFWD;
            end
            else if(Rs2_addr == Rd_addr_EXMEM_in_BFWD & Rd_addr_EXMEM_in_BFWD != 0 & RegWrite_EXMEM_in_BFWD)begin
                BFWD_B_tmp = 1;
                BFWD_B_data_tmp = ALU_res_MEM_in_BFWD;
                if(Opcode_EXMEM == 5'b00000)
                    BFWD_B_data_tmp = Load_data_in_BFWD;
            end
            else
                BFWD_B_tmp = 0;
        end
    end
    assign BFWD_A = BFWD_A_tmp;
    assign BFWD_B = BFWD_B_tmp;
    assign BFWD_A_data = BFWD_A_data_tmp;
    assign BFWD_B_data = BFWD_B_data_tmp;

endmodule
