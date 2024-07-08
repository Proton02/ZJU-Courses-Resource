`timescale 1ns / 1ps
module ALU_tb;
    reg [31:0]A;
    reg [31:0]B;
    reg [3:0] ALU_operation;
    wire [31:0] res;
    wire zero;
    ALU UUT(.A(A), .B(B), .ALU_operation(ALU_operation), .res(res), .zero(zero));

    integer i;
    initial begin
        ALU_operation = 4'd0; // add
        A = 32'hFFFFFFFF;
        B = 32'hFFFFFFFF;
        #50;
        A = 32'hFFFFFFFF;
        B = 32'h1;
        #50;
        
        ALU_operation = 4'd1; // sub
        A = 32'h2;
        B = 32'hFFFFFFFE;
        #50;
        A = 32'hFFFFFFFE;
        B = 32'h2;
        #50;
        A = 32'd2;
        B = 32'd16;
        #50;
        
        ALU_operation = 4'd2; // left shift
        A = 32'hF000000F;
        B = 32'h3;
        #50;

        ALU_operation = 4'd6; // right shift
        A = 32'hF000000F;
        B = 32'h3;
        #50;

        ALU_operation = 4'd7; // arthimetic right shift
        A = 32'h80000000;
        B = 32'h4;
        #50;

        ALU_operation = 4'd3; // comparation with sign
        A = 32'h7FFFFFFF;
        B = 32'h80000000;
        #50;

        ALU_operation = 4'd4; // comparation with unsign
        A = 32'h7FFFFFFF;
        B = 32'h80000000;
        #50;

        for(i = 10; i <= 15; i = i + 1)begin // default condition
            ALU_operation = i;
            #50;
        end

        A = 32'h7788AA55;
        B = 32'h887755AA;
        for(i = 0; i <= 15; i = i + 1)begin
            ALU_operation = i;
            #50;
        end

    end
endmodule
