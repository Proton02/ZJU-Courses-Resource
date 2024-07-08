`timescale 1ns / 1ps

module Load_control(
    input [31:0]        data_mem_out,       // 要读的数据
    input [2:0]         Load_control,       // 000 lb，010 lh，100 lw，001 lbu，011 lhu
    input [31:0]        ALU_res,            // 地址

    output reg [31:0]   Load_control_data    // 整合后的数据
    );

    always @(*) begin
        case(Load_control)
            3'b000: begin       // lb
                if(ALU_res[1:0] == 0) begin
                    if(data_mem_out[7] == 0)
                        Load_control_data = {24'b0,data_mem_out[7:0]};
                    else
                        Load_control_data = {24'hFF_FFFF,data_mem_out[7:0]};
                end
                else if(ALU_res[1:0] == 2'b01) begin
                    if(data_mem_out[15] == 0)
                        Load_control_data = {24'b0,data_mem_out[15:8]};
                    else
                        Load_control_data = {24'hFF_FFFF,data_mem_out[15:8]};
                end
                else if(ALU_res[1:0] == 2'b10) begin
                    if(data_mem_out[23] == 0)
                        Load_control_data = {24'b0,data_mem_out[23:16]};
                    else
                        Load_control_data = {24'hFF_FFFF,data_mem_out[23:16]};
                end
                else if(ALU_res[1:0] == 2'b11) begin
                    if(data_mem_out[31] == 0)
                        Load_control_data = {24'b0,data_mem_out[31:24]};
                    else
                        Load_control_data = {24'hFF_FFFF,data_mem_out[31:24]};
                end  
            end
            3'b010: begin       // lh
                if(ALU_res[1:0] == 0) begin
                    if(data_mem_out[15] == 0)
                        Load_control_data = {16'b0,data_mem_out[15:0]};
                    else
                        Load_control_data = {16'hFFFF,data_mem_out[15:0]};
                end
                else if(ALU_res[1:0] == 2'b10) begin
                    if(data_mem_out[31] == 0)
                        Load_control_data = {16'b0,data_mem_out[31:16]};
                    else
                        Load_control_data = {16'hFFFF,data_mem_out[31:16]};
                end
            end
            3'b100: begin       // lw
                Load_control_data = {data_mem_out[31:0]};
            end
            3'b001: begin       // lbu
                if(ALU_res[1:0] == 0) begin
                        Load_control_data = {24'b0,data_mem_out[7:0]};
                end
                else if(ALU_res[1:0] == 2'b01) begin
                        Load_control_data = {24'b0,data_mem_out[15:8]};
                end
                else if(ALU_res[1:0] == 2'b10) begin
                        Load_control_data = {24'b0,data_mem_out[23:16]};
                end
                else if(ALU_res[1:0] == 2'b11) begin
                        Load_control_data = {24'b0,data_mem_out[31:24]};
                end  
            end
            3'b011: begin       // lhu
                if(ALU_res[1:0] == 0) begin
                        Load_control_data = {16'b0,data_mem_out[15:0]};
                end
                else if(ALU_res[1:0] == 2'b10) begin
                        Load_control_data = {16'b0,data_mem_out[31:16]};
                end
            end
        endcase
    end

endmodule
