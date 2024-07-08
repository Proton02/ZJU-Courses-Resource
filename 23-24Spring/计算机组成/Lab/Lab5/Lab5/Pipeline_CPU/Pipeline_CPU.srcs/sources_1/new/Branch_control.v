`timescale 1ns / 1ps

module Branch_control(
    input [2:0]     Branch,
    input [31:0]    Rs1_data,
    input [31:0]    Rs2_data,

    output          Branch_signal
    );
    reg Branch_signal_tmp;
    always @(*) begin
        case(Branch)
            3'b000: begin
                if(Rs1_data == Rs2_data)
                    Branch_signal_tmp <= 1;
                else
                    Branch_signal_tmp <= 0;
            end
            3'b001: begin
                if(Rs1_data != Rs2_data)
                    Branch_signal_tmp <= 1;
                else
                    Branch_signal_tmp <= 0;
            end
            3'b010: begin
                if($signed(Rs1_data) < $signed(Rs2_data))
                    Branch_signal_tmp <= 1;
                else
                    Branch_signal_tmp <= 0;
            end
            3'b011: begin
                if($signed(Rs1_data) >= $signed(Rs2_data))
                    Branch_signal_tmp <= 1;
                else
                    Branch_signal_tmp <= 0;
            end
            3'b100: begin
                if(Rs1_data < Rs2_data)
                    Branch_signal_tmp <= 1;
                else
                    Branch_signal_tmp <= 0;
            end
            3'b101: begin
                if(Rs1_data >= Rs2_data)
                    Branch_signal_tmp <= 1;
                else
                    Branch_signal_tmp <= 0;
            end
            default: Branch_signal_tmp <= 0;
        endcase
    end
    assign Branch_signal = Branch_signal_tmp;
    
endmodule
