`timescale 1ns / 1ps

module Forwarding(
    input [4:0]     Rs1_addr_IDEX_in_FWD,       // IDEX发出
    input [4:0]     Rs2_addr_IDEX_in_FWD,       // IDEX发出
    input [4:0]     Rd_addr_EXMEM_in_FWD,       // EXMEM发出
    input [4:0]     Rd_addr_MEMWB_in_FWD,       // MEMWB发出
    input           RegWrite_EXMEM_in_FWD,      // EXMEM发出
    input           RegWrite_MEMWB_in_FWD,      // MEMWB发出
    input [31:0]    inst_EXMEM_in_FWD,
    input [31:0]    inst_IDEX_in_FWD,

    output [2:0]    Forwarding_A_out_FWD,       // FA
    output [2:0]    Forwarding_B_out_FWD,       // FB
    output [2:0]    store_fwd_out_FWD                  // ST
    );

    reg [2:0] FA;
    reg [2:0] FB;
    reg [2:0] ST;
    wire [4:0] OPcode_IDEX = inst_IDEX_in_FWD[6:2];
    wire [4:0] OPcode_EXMEM = inst_EXMEM_in_FWD[6:2];
    
    always @(*) begin
        // 2 上一个 alu 结果 
        if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs1_addr_IDEX_in_FWD & (OPcode_EXMEM == 5'b01100 | OPcode_EXMEM == 5'b00100))
            FA = 3'b010;
        // 3 上个 auipc 的结果
        else if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs1_addr_IDEX_in_FWD & OPcode_EXMEM == 5'b00101)
            FA = 3'b011;
        // 4 上个 lui 的结果
        else if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs1_addr_IDEX_in_FWD & OPcode_EXMEM == 5'b01101)
            FA = 3'b100;
        // 5 上个 jal 或 jalr 的结果
        else if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs1_addr_IDEX_in_FWD & (OPcode_EXMEM == 5'b11011 | OPcode_EXMEM == 5'b11001))
            FA = 3'b101;
        // 1 WB阶段写回结果
        else if(RegWrite_MEMWB_in_FWD & Rd_addr_MEMWB_in_FWD != 0 & (~(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs1_addr_IDEX_in_FWD)) & Rd_addr_MEMWB_in_FWD == Rs1_addr_IDEX_in_FWD)
            FA = 3'b001;
        // 0
        else
            FA = 3'b000;
        
        // 2 上一个 alu 结果 
        if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs2_addr_IDEX_in_FWD & (OPcode_EXMEM == 5'b01100 | OPcode_EXMEM == 5'b00100) & OPcode_IDEX == 5'b01100)
            FB = 3'b010;
        // 3 上个 auipc 的结果
        else if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs2_addr_IDEX_in_FWD & OPcode_EXMEM == 5'b00101 & OPcode_IDEX == 5'b01100)
            FB = 3'b011;
        // 4 上个 lui 的结果
        else if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs2_addr_IDEX_in_FWD & OPcode_EXMEM == 5'b01101 & OPcode_IDEX == 5'b01100)
            FB = 3'b100;
        // 5 上个 jal 或 jalr 的结果
        else if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs2_addr_IDEX_in_FWD & (OPcode_EXMEM == 5'b11011 | OPcode_EXMEM == 5'b11001) & OPcode_IDEX == 5'b01100)
            FB = 3'b101;
        // 1 WB阶段写回结果
        else if(RegWrite_MEMWB_in_FWD & Rd_addr_MEMWB_in_FWD != 0 & (~(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs2_addr_IDEX_in_FWD)) & Rd_addr_MEMWB_in_FWD == Rs2_addr_IDEX_in_FWD & OPcode_IDEX == 5'b01100)
            FB = 3'b001;
        // 0
        else
            FB = 3'b000;

        // STORE 指令
        // 2 上一个 alu 结果 
        if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs2_addr_IDEX_in_FWD & (OPcode_EXMEM == 5'b01100 | OPcode_EXMEM == 5'b00100) & OPcode_IDEX == 5'b01000)
            ST = 3'b010;
        // 3 上个 auipc 的结果
        else if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs2_addr_IDEX_in_FWD & OPcode_EXMEM == 5'b00101 & OPcode_IDEX == 5'b01000)
            ST = 3'b011;
        // 4 上个 lui 的结果
        else if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs2_addr_IDEX_in_FWD & OPcode_EXMEM == 5'b01101 & OPcode_IDEX == 5'b01000)
            ST = 3'b100;
        // 5 上个 jal 或 jalr 的结果
        else if(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs2_addr_IDEX_in_FWD & (OPcode_EXMEM == 5'b11011 | OPcode_EXMEM == 5'b11001) & OPcode_IDEX == 5'b01000)
            ST = 3'b101;
        // 1 WB阶段写回结果
        else if(RegWrite_MEMWB_in_FWD & Rd_addr_MEMWB_in_FWD != 0 & (~(RegWrite_EXMEM_in_FWD & Rd_addr_EXMEM_in_FWD != 0 & Rd_addr_EXMEM_in_FWD == Rs2_addr_IDEX_in_FWD)) & Rd_addr_MEMWB_in_FWD == Rs2_addr_IDEX_in_FWD & OPcode_IDEX == 5'b01000)
            ST = 3'b001;
        // 0
        else
            ST = 3'b000;
        
    end

    assign Forwarding_A_out_FWD = FA;
    assign Forwarding_B_out_FWD = FB;
    assign store_fwd_out_FWD = ST;

endmodule