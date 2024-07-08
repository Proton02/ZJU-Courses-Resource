`timescale 1ns / 1ps

module IF_reg_ID(
    input            clk_IFID,
    input            rst_IFID,
    input [31:0]     PC_in_IFID,
    input [31:0]     inst_in_IFID,
    input [31:0]     PC_plus_4_IFID,
    input            Flush_in_IFID,

    output reg [31:0]    PC_out_IFID,
    output reg [31:0]    inst_out_IFID,
    output reg [31:0]    PC_plus_4_out_IFID
    );

    always @(posedge clk_IFID or posedge rst_IFID) begin
        if (rst_IFID) begin
            PC_out_IFID <= 32'b0;
            inst_out_IFID <= 32'b0;
            PC_plus_4_out_IFID <= 32'b0;
        end
        else if(Flush_in_IFID) begin
            PC_out_IFID <= 32'b0;
            inst_out_IFID <= 32'h00000013;
            PC_plus_4_out_IFID <= 32'b0;
        end 
        else begin
            PC_out_IFID <= PC_in_IFID;
            inst_out_IFID <= inst_in_IFID;
            PC_plus_4_out_IFID <= PC_plus_4_IFID;
        end
    end
endmodule
