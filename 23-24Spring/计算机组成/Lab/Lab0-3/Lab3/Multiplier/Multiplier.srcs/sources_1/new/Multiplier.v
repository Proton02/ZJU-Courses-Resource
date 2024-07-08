`timescale 1ns / 1ps

module multiplier(
    input           clk,      // 时钟信号
    input           start,    // 开始运算
    input [31:0]    A,        // 两个 32-bit 输入值
    input [31:0]    B,
    output reg      finish,   // 当结束计算时置 1，你可能需要将它改为 `output reg`
    output reg[63:0]res       // 64-bit 输出，你可能需要将它修改为 `output reg[63:0]`
);
    reg excuting;             // 判断是否在计算状态
    reg [5:0] cnt;            // 记录移位个数，如果移位超过32次则归零
    reg [31:0] multiplicand;  // 被乘数

    wire [31:0] unsigned_A;   // 计算中均使用正数，最后确定符号
    wire [31:0] unsigned_B;
    assign unsigned_A = (A[31] == 1'b1) ? ~A + 1'b1 : A;
    assign unsigned_B = (B[31] == 1'b1) ? ~B + 1'b1 : B;

    initial begin
        finish = 0;
        res = 0;
        excuting = 0;
        cnt = 0;
        multiplicand = 0;
    end

    always @(posedge clk) begin
        // 开始执行但不在计算状态
        if(excuting == 0 && start == 1) begin  
            multiplicand <= unsigned_A;       // 被乘数
            res <= {32'b0, unsigned_B};       // 结果
            excuting <= 1;      // 开始计算
            finish <= 0;
            cnt <= 0;
        end
        // 乘法计算
        else if(excuting == 1) begin
            if(res[0] == 1'b1) begin
                res[63:32] = res[63:32] + multiplicand;
            end
            res = res >> 1;
            cnt = cnt + 1'b1;
        end
        // 计算完成
        if(excuting == 1 && cnt == 32) begin
            finish <= 1;
            excuting <= 0;
            if(A[31] ^ B[31] == 1) begin // 符号不同
                res <= ~res + 1'b1;
            end
        end
    end

endmodule
