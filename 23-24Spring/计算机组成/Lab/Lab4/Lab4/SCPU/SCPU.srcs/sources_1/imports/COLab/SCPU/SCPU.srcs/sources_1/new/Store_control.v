`timescale 1ns / 1ps

module Store_control(
    input [31:0]        Regs_Rs2_data,      // 要存储的数据
    input [1:0]         Store_control,      // 00 sb，01 sh，10 sw
    input [31:0]        ALU_res,            // 地址

    output reg [31:0]   store_control_out,  // 整合后的存储数据
    output reg [3:0]    store_control_wea   // 控制 wea，即存储哪些 byte
    );

    always @(*) begin
        case(Store_control)
            2'b00: begin        // sb
                if(ALU_res[1:0] == 0) begin
                    store_control_out = {24'b0,Regs_Rs2_data[7:0]};
                    store_control_wea = 4'b0001;
                end
                else if(ALU_res[1:0] == 2'b01) begin
                    store_control_out = {16'b0,Regs_Rs2_data[7:0],8'b0};
                    store_control_wea = 4'b0010;
                end
                else if(ALU_res[1:0] == 2'b10) begin
                    store_control_out = {8'b0,Regs_Rs2_data[7:0],16'b0};
                    store_control_wea = 4'b0100;
                end
                else if(ALU_res[1:0] == 2'b11) begin
                    store_control_out = {Regs_Rs2_data[7:0],24'b0};
                    store_control_wea = 4'b1000;
                end
            end
            2'b01: begin        // sh
                if(ALU_res[1:0] == 0) begin
                    store_control_out = {16'b0,Regs_Rs2_data[15:0]};
                    store_control_wea = 4'b0011;
                end
                else if(ALU_res[1:0] == 2'b10) begin
                    store_control_out = {Regs_Rs2_data[15:0],16'b0};
                    store_control_wea = 4'b1100;
                end
            end
            2'b10: begin        // sw
                    store_control_out = {Regs_Rs2_data[31:0]};
                    store_control_wea = 4'b1111;
            end
        endcase
    end

endmodule
