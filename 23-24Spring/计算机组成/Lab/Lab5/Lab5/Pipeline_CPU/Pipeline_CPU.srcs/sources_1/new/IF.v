`timescale 1ns / 1ps

module IF(
    input               clk_IF,
    input               rst_IF,
    input               Branch_signal_in_IF,
    input [1:0]         Jump_in_IF,
    input [31:0]        PC_plus_imm_in_IF,
    input [31:0]        imm_plus_rs1_in_IF,
    input               Stall_HDT_in_IF,
    input [31:0]        PC_HDT_in_IF,
    input               bubble_in_IF,

    output [31:0]       PC_out_IF,
    output [31:0]       PC_plus_4_out_IF
    );

    wire [31:0] MuxA_out;
    wire [31:0] MuxB_out;
    wire [31:0] Q_out;
    reg [31:0]  PC_out;

    PC IF1(
        .clk(clk_IF),
        .rst(rst_IF),
        .D(MuxA_out),
        .bubble(bubble_in_IF),

        .Q(Q_out)
    );
    
    always @(*) begin
        if(Stall_HDT_in_IF == 0)
            PC_out = Q_out;
        else if(Stall_HDT_in_IF == 1)
            PC_out = PC_HDT_in_IF;
    end

    assign PC_out_IF = PC_out;
    assign PC_plus_4_out_IF = PC_out_IF + 32'd4;

    Mux3to1 IF2(
        .data1(MuxB_out),
        .data2(PC_plus_imm_in_IF),
        .data3(imm_plus_rs1_in_IF),
        .control(Jump_in_IF),

        .out(MuxA_out)
    );

    Mux2to1 IF3(
        .data1(PC_plus_4_out_IF),
        .data2(PC_plus_imm_in_IF),
        .control(Branch_signal_in_IF),

        .out(MuxB_out)
    );

endmodule
