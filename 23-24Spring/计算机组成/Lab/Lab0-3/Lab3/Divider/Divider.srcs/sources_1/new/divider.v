`timescale 1ns / 1ps

module divider(
    input   clk,
    input   rst,
    input   start,          // 开始运算
    input[31:0] dividend,   // 被除数
    input[31:0] divisor,    // 除数
    output reg divide_zero, // 除零异常
    output reg finish,      // 运算结束信号
    output wire [31:0] res,  // 商
    output wire [31:0] rem   // 余数
);

    reg excuting;             // 判断是否在计算状态
    reg [4:0] cnt;            // 记录移位个数，如果移位超过32次则归零
    reg [63:0] remainder;     // 计算结果
    assign res = remainder[31:0];
    assign rem = remainder[63:32];

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            cnt <= 0;
            finish <= 0;
            excuting <= 0;
            divide_zero <= 0;
            remainder <= 0;
        end 
        // 开始执行但不在计算状态
        else if(start == 1) begin 
            if(divisor == 0) begin // 除零异常判断
                finish <= 1;
                divide_zero <= 1;
                remainder <= 64'bx;
            end else begin
                remainder <= {31'b0, dividend, 1'b0};
                excuting <= 1;
                finish <= 0;
                cnt <= 0;
                divide_zero <= 0;
            end
        end
        // 除法计算
        if(excuting == 1 && finish == 0) begin
            cnt <= cnt + 1'b1;
            if(remainder[63:32] >= divisor) begin
                remainder[63:32] = remainder[63:32] - divisor; // 这里需要使用阻塞赋值 实验报告提
                remainder = {remainder[62:0], 1'b1};
            end else begin
                remainder = {remainder[62:0], 1'b0};
            end
            if(cnt == 31) begin
                finish <= 1;
                excuting <= 0;
                remainder[63:32] <= {1'b0, remainder[63:33]};
            end
        end
    end

endmodule
