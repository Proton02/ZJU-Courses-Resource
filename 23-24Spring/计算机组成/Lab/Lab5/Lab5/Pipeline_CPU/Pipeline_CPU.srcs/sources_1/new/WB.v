`timescale 1ns / 1ps

module WB(
    input [3:0]         WB_in_WB,
    input [31:0]        PC_plus_imm_in_WB,
    input [31:0]        Load_control_data_in_WB,
    input [31:0]        ALU_res_in_WB,
    input [31:0]        imm_in_WB,
    input [31:0]        PC_plus_4_in_WB,
    input [31:0]        inst_in_WB,

    output [31:0]       Rd_data_out_WB,
    output              RegWrite_out_WB
    );

    assign RegWrite_out_WB = WB_in_WB[0];

    Mux5to1 WB1(
        .data1(ALU_res_in_WB),
        .data2(Load_control_data_in_WB),
        .data3(PC_plus_4_in_WB),
        .data4(imm_in_WB),
        .data5(PC_plus_imm_in_WB),
        .control(WB_in_WB[3:1]),

        .out(Rd_data_out_WB)
    );

endmodule
