`timescale 1ns / 1ps

module Testbench(
    input clk,
    input rst
);

    /* SCPU 中接出 */
    wire [3:0]  wea;
    wire [31:0] Addr_out;
    wire [31:0] Data_out;       
    wire [31:0] PC_out;

    /* RAM 接出 */
    wire [31:0] douta;
    /* ROM 接出 */
    wire [31:0] spo;

    SCPU U0(
        .clk(clk),
        .rst(rst),
        .Data_in(douta),
        .inst_in(spo),

        .wea(wea),
        .Addr_out(Addr_out),
        .Data_out(Data_out),
        .PC_out(PC_out)
    );

    RAM_B U1(
        .clka(~clk),
        .wea(wea),
        .addra(Addr_out[11:2]),
        .dina(Data_out),

        .douta(douta)
    );

    ROM_D U2(
        .a(PC_out[11:2]),

        .spo(spo)
    );

endmodule
