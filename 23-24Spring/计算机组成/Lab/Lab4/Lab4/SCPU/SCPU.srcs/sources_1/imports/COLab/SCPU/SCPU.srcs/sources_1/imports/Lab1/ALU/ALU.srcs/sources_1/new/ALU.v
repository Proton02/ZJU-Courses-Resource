`timescale 1ns / 1ps

module ALU (
    input [31:0]  A,
    input [31:0]  B,
    input [3:0]   ALU_Control,
    output[31:0]  res,
    output        zero
    );

    reg [31:0] out;
    always @(*) begin
        case (ALU_Control[3:0])
            4'b0000: out = $signed(A) + $signed(B);         // 加法
            4'b0001: out = $signed(A) - $signed(B);         // 减法
            4'b0010: out = A << B[4:0];                     // 逻辑左移
            4'b0011: out = $signed(A) < $signed(B) ? 1 : 0; // 有符号比较
            4'b0100: out = A < B ? 1 : 0;                   // 无符号比较
            4'b0101: out = A ^ B;                           // 异或
            4'b0110: out = A >> B[4:0];                     // 逻辑右移
            4'b0111: out = $signed(A) >>> $signed(B[4:0]);  // 算数右移
            4'b1000: out = A | B;                           // 或
            4'b1001: out = A & B;                           // 与
            default: out = 32'bz;
        endcase
    end

    assign res = out;
    assign zero = ~|out; // zero = 1表示结果为0

endmodule