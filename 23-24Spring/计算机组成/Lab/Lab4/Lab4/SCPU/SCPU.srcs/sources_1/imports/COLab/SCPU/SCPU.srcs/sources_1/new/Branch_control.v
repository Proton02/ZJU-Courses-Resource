`timescale 1ns / 1ps

module Branch_control(
    input           Branch,
    input           BranchN,
    input           ALU_zero,

    output          Branch_signal
    );

    reg A;
    reg B;

    always @(*) begin
        A = Branch & ALU_zero;
        B = BranchN & (~ALU_zero);
    end

    assign Branch_signal = A | B;
    
endmodule
