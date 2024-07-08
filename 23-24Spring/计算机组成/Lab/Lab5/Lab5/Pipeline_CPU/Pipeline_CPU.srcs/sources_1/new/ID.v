`timescale 1ps/1ps

module ID(
    input               clk_ID,
    input               rst_ID,
    input [31:0]        PC_in_ID,
    input [31:0]        inst_in_ID,
    input [31:0]        PC_plus_4_in_ID,
    input               RegWrite_in_ID,
    input [4:0]         Rd_addr_in_ID,
    input [31:0]        Rd_data_in_ID,
    input               BFWD_A_in_ID,
    input               BFWD_B_in_ID,
    input [31:0]        BFWD_A_data_in_ID,
    input [31:0]        BFWD_B_data_in_ID,

    output              Branch_signal_out_ID,
    output [1:0]        Jump_out_ID,
    output [31:0]       imm_plus_rs1_out_ID,
    output [3:0]        WB_out_ID,
    output [2:0]        MEM_out_ID,
    output [10:0]       EX_out_ID,
    output [31:0]       PC_plus_imm_out_ID,
    output [31:0]       Rs1_data_out_ID,
    output [31:0]       Rs2_data_out_ID,
    output [31:0]       imm_out_ID,
    output [31:0]       PC_plus_4_out_ID,
    output [4:0]        Rd_addr_out_ID,
    output [31:0]       inst_out_ID,
    output              Flush_out_ID,
    output [31:0]       Reg00, output [31:0]   Reg01, output [31:0]   Reg02, output [31:0]   Reg03, output [31:0]   Reg04, output [31:0]   Reg05, output [31:0]   Reg06, output [31:0]   Reg07, output [31:0]   Reg08, output [31:0]   Reg09, output [31:0]   Reg10, output [31:0]   Reg11, output [31:0]   Reg12, output [31:0]   Reg13, output [31:0]   Reg14, output [31:0]   Reg15, output [31:0]   Reg16, output [31:0]   Reg17, output [31:0]   Reg18, output [31:0]   Reg19, output [31:0]   Reg20, output [31:0]   Reg21, output [31:0]   Reg22, output [31:0]   Reg23, output [31:0]   Reg24, output [31:0]   Reg25, output [31:0]   Reg26, output [31:0]   Reg27, output [31:0]   Reg28, output [31:0]   Reg29, output [31:0]   Reg30, output [31:0]   Reg31
    );

    wire [2:0]  Branch_ID;
    wire        RegWrite_out_ID;
    wire        ALUSrc_B_ID;
    wire [1:0]  Store_len_ID;
    wire [3:0]  ALU_Control_ID;
    wire [2:0]  MemtoReg_ID;
    wire [3:0]  MemRW_ID;
    wire [2:0]  Load_len_ID;

    assign imm_plus_rs1_out_ID = imm_out_ID + Rs1_data_out_ID;
    assign WB_out_ID = {MemtoReg_ID, RegWrite_out_ID}; //高->低
    assign MEM_out_ID = {Load_len_ID};
    assign EX_out_ID = {ALUSrc_B_ID, ALU_Control_ID, Store_len_ID, MemRW_ID};
    assign PC_plus_imm_out_ID = PC_in_ID + imm_out_ID;
    assign PC_plus_4_out_ID = PC_plus_4_in_ID;
    assign Rd_addr_out_ID = inst_in_ID[11:7];
    assign inst_out_ID = inst_in_ID;
    assign Flush_out_ID = Branch_signal_out_ID | Jump_out_ID;

    reg [31:0] Rs1_data_tmp;
    reg [31:0] Rs2_data_tmp;
    always @(*)begin
        if(BFWD_A_in_ID)
            Rs1_data_tmp = BFWD_A_data_in_ID;
        else
            Rs1_data_tmp = Rs1_data_out_ID;

        if(BFWD_B_in_ID)
            Rs2_data_tmp = BFWD_B_data_in_ID;
        else
            Rs2_data_tmp = Rs2_data_out_ID;
    end

    Controller ID1(
        .OPcode(inst_in_ID[6:2]),
        .Fun3(inst_in_ID[14:12]),
        .Fun7(inst_in_ID[30]),

        .Jump(Jump_out_ID),
        .Branch(Branch_ID),
        .RegWrite(RegWrite_out_ID),
        .ALUSrc_B(ALUSrc_B_ID),
        .Store_len(Store_len_ID),
        .ALU_Control(ALU_Control_ID),
        .MemtoReg(MemtoReg_ID),
        .MemRW(MemRW_ID),
        .Load_len(Load_len_ID)
    );

    Branch_control ID2(
        .Branch(Branch_ID),
        .Rs1_data(Rs1_data_tmp),
        .Rs2_data(Rs2_data_tmp),
    
        .Branch_signal(Branch_signal_out_ID)
    );

    Regs ID3(
        .clk(clk_ID),
        .rst(rst_ID),
        .Rs1_addr(inst_in_ID[19:15]),
        .Rs2_addr(inst_in_ID[24:20]),
        .Wt_addr(Rd_addr_in_ID),
        .Wt_data(Rd_data_in_ID),
        .RegWrite(RegWrite_in_ID),
        
        .Rs1_data(Rs1_data_out_ID),
        .Rs2_data(Rs2_data_out_ID),
        .Reg00(Reg00),.Reg01(Reg01),.Reg02(Reg02),.Reg03(Reg03),.Reg04(Reg04),.Reg05(Reg05),.Reg06(Reg06),.Reg07(Reg07),.Reg08(Reg08),.Reg09(Reg09),.Reg10(Reg10),.Reg11(Reg11),.Reg12(Reg12),.Reg13(Reg13),.Reg14(Reg14),.Reg15(Reg15),.Reg16(Reg16),.Reg17(Reg17),.Reg18(Reg18),.Reg19(Reg19),.Reg20(Reg20),.Reg21(Reg21),.Reg22(Reg22),.Reg23(Reg23),.Reg24(Reg24),.Reg25(Reg25),.Reg26(Reg26),.Reg27(Reg27),.Reg28(Reg28),.Reg29(Reg29),.Reg30(Reg30),.Reg31(Reg31)
    );
    
    ImmG ID4(
        .inst_imm(inst_in_ID),

        .Imm_out(imm_out_ID)
    );
    

endmodule