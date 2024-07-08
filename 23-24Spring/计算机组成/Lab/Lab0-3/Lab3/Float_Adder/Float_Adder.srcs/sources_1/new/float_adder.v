`timescale 1ns / 1ps

module float_adder(
    input clk,
    input rst,
    input start,
    input [1:0] rounding,
    input [31:0] A,
    input [31:0] B,
    output reg [31:0] res,
    output reg finish
    );

    reg C_sign;                         // 符号位
    reg [7:0] A_exp, B_exp, C_exp;      // 指数
    reg [24:0] A_frac, B_frac, C_frac;  // 尾数，需要考虑隐含的1和进位，设定额外的两位
    reg excuting;       // 是否在运算中
    reg [2:0] state;    // 当前状态

localparam 
    S0 = 3'b000,    // denormal情况，直接输出denormal数
    S1 = 3'b001,    // 比较exp，相等进入S2，否则对齐
    S2 = 3'b010,    // 尾数相加
    S3 = 3'b011,    // 规格化，判断有无溢出
    S4 = 3'b100;    // finish

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            excuting <= 0;
            finish <= 0;
            res <= 0;
        end
        else if(start == 1) begin
            finish <= 0;
            excuting <= 1;
            state <= S0; // 先判断是否denormal
            A_exp <= A[30:23];
            B_exp <= B[30:23];
            A_frac <= {2'b01, A[22:0]}; // 隐含的1和进位位
            B_frac <= {2'b01, B[22:0]};
        end
        if(excuting == 1 && finish == 0) begin
            case(state)
                S0: begin
                    if(A_exp == 8'h0 || A_exp == 8'hFF) begin
                        C_sign <= A[31];
                        C_exp <= A_exp;
                        C_frac <= A_frac;
                        state <= S4;
                    end
                    else if(B_exp == 8'h0 || B_exp == 8'hFF) begin
                        C_sign <= B[31];
                        C_exp <= B_exp;
                        C_frac <= B_frac;
                        state <= S4;
                    end
                    else state <= S1;
                end
                S1: begin
                    if(A_exp > B_exp) begin
                        B_exp <= B_exp + 1; // 指数+1
                        B_frac <= B_frac >> 1; // 尾数右移
                    end
                    else if(A_exp < B_exp) begin
                        A_exp <= A_exp + 1;
                        A_frac <= A_frac >> 1;
                    end
                    else state <= S2;
                end
                S2: begin
                    if(A[31] ^ B[31] == 0) begin
                        C_sign <= A[31];
                        C_frac <= A_frac + B_frac;
                    end
                    else if(A[31] == 1 && B[31] == 0) begin // A<0 B>0
                        if(A_frac > B_frac) begin
                            C_sign <= 1'b1;
                            C_frac <= A_frac - B_frac;
                        end    
                        else begin
                            C_sign <= 1'b0;
                            C_frac <= B_frac - A_frac;
                        end 
                    end
                    else if(A[31] == 0 && B[31] == 1) begin // A>0 B<0
                        if(A_frac < B_frac) begin
                            C_sign <= 1'b1;
                            C_frac <= B_frac - A_frac;
                        end    
                        else begin
                            C_sign <= 1'b0;
                            C_frac <= A_frac - B_frac;
                        end 
                    end
                    C_exp <= A_exp;
                    state <= S3;
                end
                S3: begin
                    if(C_frac[24] == 1) begin // 上溢
                        C_exp <= C_exp + 1'b1;
                        C_frac <= C_frac >> 1;
                    end
                    else if(C_frac[23] == 0) begin // 下溢
                        C_exp <= C_exp - 1'b1;
                        C_frac <= C_frac << 1;
                    end
                    else state <= S4;
                end
                S4: begin
                    res[31] <= C_sign;
                    res[30:23] <= C_exp;
                    res[22:0] <= C_frac;
                    excuting <= 0;
                    finish <= 1;
                end
            endcase
        end
    end

endmodule
