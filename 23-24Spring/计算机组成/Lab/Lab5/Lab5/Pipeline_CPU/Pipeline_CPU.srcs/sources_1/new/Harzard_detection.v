`timescale 1ns / 1ps

module Harzard_detection(
    input [4:0]     Rs1,         // ID发出
    input [4:0]     Rs2,         // ID发出
    input [4:0]     Rd_EX,          // EX发出
    input [4:0]     Rd_MEM,         // MEM发出  
    input [2:0]     Load_len_IDEX_in_HDT,       // IDEX发出
    input [2:0]     Load_len_EXMEM_in_HDT,      // EXMEM发出
    input [31:0]    PC_IF_in_HDT,               // IF发出       
    input [31:0]    PC_IFID_in_HDT,             // IFID发出

    output          Stall_out_HDT,              // 给IDEX的stall
    output [31:0]   PC_out_HDT,            // 给IF的输出
    output          bubble
    );
    
    reg         Stall_out_HDT_tmp;
    reg         bubble_tmp;

    always @(*) begin   // 普通指令load_len是111
        if(Load_len_IDEX_in_HDT != 3'b111 & (Rs1 == Rd_EX | Rs2 == Rd_EX) & PC_IF_in_HDT != 0 & PC_IF_in_HDT != 32'd4)
            Stall_out_HDT_tmp = 1; 
        else if(Load_len_EXMEM_in_HDT != 3'b111 & (Rs1 == Rd_MEM | Rs2 == Rd_MEM) & PC_IF_in_HDT != 0)
            bubble_tmp = 1;
        else begin
            Stall_out_HDT_tmp = 0;
            bubble_tmp = 0;
        end
    end
    
    assign Stall_out_HDT = Stall_out_HDT_tmp;
    assign PC_out_HDT = PC_IFID_in_HDT;
    assign bubble = bubble_tmp;
    
endmodule
