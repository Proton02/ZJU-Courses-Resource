`timescale 1ns / 1ps

module ImmG(
    input [31:0]        inst_imm,

    output reg [31:0]   Imm_out
    );

    always @(*) begin
        case(inst_imm[6:2])
            5'b00100: begin                                 // I_type1
                if(inst_imm[14:12] == 3'b001 | inst_imm[14:12] == 3'b101)   // slli srli srai
                        Imm_out = {27'b0,inst_imm[24:20]};
                else
                    if(inst_imm[31] == 1)
                        Imm_out = {20'hF_FFFF,inst_imm[31:20]};
                    else
                        Imm_out = {20'b0,inst_imm[31:20]};
            end
            5'b00000: begin                                  // I_type2
                if(inst_imm[31] == 1)
                    Imm_out = {20'hF_FFFF,inst_imm[31:20]};       
                else
                    Imm_out = {20'b0,inst_imm[31:20]};     
            end
            5'b11001: begin                                  // I_type3
                if(inst_imm[31] == 1)
                    Imm_out = {20'hF_FFFF,inst_imm[31:20]};       
                else
                    Imm_out = {20'b0,inst_imm[31:20]};      
            end
            5'b01000: begin                                  // S_type
                if(inst_imm[31] == 1)
                    Imm_out = {20'hF_FFFF,inst_imm[31:25],inst_imm[11:7]};   
                else
                    Imm_out = {20'b0,inst_imm[31:25],inst_imm[11:7]}; 
            end
            5'b11000: begin                                  // B_type
                if(inst_imm[31] == 1)
                    Imm_out = {20'hF_FFFF,inst_imm[31],inst_imm[7],inst_imm[30:25],inst_imm[11:8],1'b0}; 
                else
                    Imm_out = {20'b0,inst_imm[31],inst_imm[7],inst_imm[30:25],inst_imm[11:8],1'b0}; 
            end
            5'b01101: begin                                  // U_type lui
                    Imm_out = {inst_imm[31:12],12'b0}; 
            end
            5'b00101: begin                                  // U_type auipc
                    Imm_out = {inst_imm[31:12],12'b0};
            end
            5'b11011: begin                                  // J_type
                if(inst_imm[31] == 1)
                    Imm_out = {12'hFFF,inst_imm[31],inst_imm[19:12],inst_imm[20],inst_imm[30:21],1'b0};
                else
                    Imm_out = {12'b0,inst_imm[31],inst_imm[19:12],inst_imm[20],inst_imm[30:21],1'b0};
            end
        endcase
    end
endmodule
