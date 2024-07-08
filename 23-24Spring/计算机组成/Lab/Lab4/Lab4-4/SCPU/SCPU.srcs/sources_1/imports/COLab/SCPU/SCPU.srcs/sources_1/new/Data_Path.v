`timescale 1ns / 1ps

module Data_Path(
    input               clk,          // 寄存器时钟
    input               rst,          // 寄存器复位
    input [31:0]        inst_field,   // 指令数据域[31:0]
    input [1:0]         Jump,         // 选择 PC 的下一个值，0 为 PC+4，1 为 J-Type 目标地址，2 为 Jalr 目标地址，3 为 auipc 目标地址
    input               RegWrite,     // 选择是否写回寄存器，0 不写回，1 写回 
    input               ALUSrc_B,     // 选择 ALU 的 B 输入口，0 寄存器值，1 立即数
    input [1:0]         Store_len,    // 选择 Store 指令的数据存储长度，0 sb，1 sh，2 sw
    input [3:0]         ALU_Control,  // 选择 ALU 的运算方式 
    input [2:0]         MemtoReg,     // 选择写回寄存器的数据来源，0 ALU 输出，1 内存读出的值，2 PC+4，3 lui，4 auipc
    input [3:0]         MemRW,        // 选择是否写入内存
    input [2:0]         Load_len,     // 选择 Load 指令的数据读取长度，并进行符号位扩展，000 lb，010 lh，100 lw，001 lbu，011 lhu
    input               Branch,       // Beq指令选择是否进行分支跳转，0 不跳转，1 跳转
    input               BranchN,      // Bne指令选择是否进行分支跳转，0 不跳转，1 跳转
    input [31:0]        Data_in,      // 接收来自 data_mem 的数据
    output [31:0]       Addr_out,
    output [31:0]       Data_out,
    output [31:0]       PC_out,
    output [3:0]        wea,

    input               INT,
    input               ecall,
    input               mret,
    input               illegal_inst,
    input               csr_w,
    input [1:0]         csr_wsc_mode,
    input               csr_inst,
    input               trap_regwrite,

    output [31:0]       mstatus,
    output [31:0]       mtvec,
    output [31:0]       mcause,
    output [31:0]       mtval, 
    output [31:0]       mepc,
    output [31:0]       Reg00,
    output [31:0]       Reg01,
    output [31:0]       Reg02,
    output [31:0]       Reg03,
    output [31:0]       Reg04,
    output [31:0]       Reg05,
    output [31:0]       Reg06,
    output [31:0]       Reg07,
    output [31:0]       Reg08,
    output [31:0]       Reg09,
    output [31:0]       Reg10,
    output [31:0]       Reg11,
    output [31:0]       Reg12,
    output [31:0]       Reg13,
    output [31:0]       Reg14,
    output [31:0]       Reg15,
    output [31:0]       Reg16,
    output [31:0]       Reg17,
    output [31:0]       Reg18,
    output [31:0]       Reg19,
    output [31:0]       Reg20,
    output [31:0]       Reg21,
    output [31:0]       Reg22,
    output [31:0]       Reg23,
    output [31:0]       Reg24,
    output [31:0]       Reg25,
    output [31:0]       Reg26,
    output [31:0]       Reg27,
    output [31:0]       Reg28,
    output [31:0]       Reg29,
    output [31:0]       Reg30,
    output [31:0]       Reg31
    );

    
    wire [31:0] Imm_out;
    wire [31:0] Regs_Rs1_data;
    wire [31:0] Regs_Rs2_data;
    wire [31:0] ALU_res;
    wire        ALU_zero;
    wire [31:0] D_mem_read_data;
    wire [31:0] MuxA_out;
    wire [31:0] MuxB_out;
    wire [31:0] MuxC_out;
    wire [31:0] MuxD_out;
    wire [31:0] PC_plus_4;
    wire [31:0] PC_plus_imm;
    wire        Branch_signal;
    wire [31:0] load_control_out;
    wire [31:0] PC_Q;
    wire [3:0]  store_control_wea;
    wire [31:0] trap_pc;
    wire [31:0] wdata;
    wire [31:0] rdata;

    assign Addr_out = ALU_res;
    assign PC_out = PC_Q;
    assign wea = store_control_wea & MemRW;
    assign wdata = inst_field[14] == 0 ? Regs_Rs1_data : {27'b0, inst_field[19:15]};
    
    PC U1(
        .clk(clk),
        .rst(rst),
        .D((csr_inst ^ trap_regwrite) ? MuxA_out : trap_pc),

        .Q(PC_Q)
    );

    Regs U2(
        .clk(clk),
        .rst(rst),
        .Wt_addr(inst_field[11:7]),
        .Rs1_addr(inst_field[19:15]),
        .Rs2_addr(inst_field[24:20]),
        .Wt_data(csr_inst == 1 ? rdata : MuxD_out),
        .RegWrite(RegWrite && trap_regwrite),

        .Rs1_data(Regs_Rs1_data),
        .Rs2_data(Regs_Rs2_data),
        .Reg00(Reg00),
        .Reg01(Reg01),
        .Reg02(Reg02),
        .Reg03(Reg03),
        .Reg04(Reg04),
        .Reg05(Reg05),
        .Reg06(Reg06),
        .Reg07(Reg07),
        .Reg08(Reg08),
        .Reg09(Reg09),
        .Reg10(Reg10),
        .Reg11(Reg11),
        .Reg12(Reg12),
        .Reg13(Reg13),
        .Reg14(Reg14),
        .Reg15(Reg15),
        .Reg16(Reg16),
        .Reg17(Reg17),
        .Reg18(Reg18),
        .Reg19(Reg19),
        .Reg20(Reg20),
        .Reg21(Reg21),
        .Reg22(Reg22),
        .Reg23(Reg23),
        .Reg24(Reg24),
        .Reg25(Reg25),
        .Reg26(Reg26),
        .Reg27(Reg27),
        .Reg28(Reg28),
        .Reg29(Reg29),
        .Reg30(Reg30),
        .Reg31(Reg31)
    );

    ImmG U3(
        .inst_imm(inst_field),

        .Imm_out(Imm_out)
    );

    Mux2to1 U4(
        .control(ALUSrc_B),
        .data1(Regs_Rs2_data),
        .data2(Imm_out),

        .out(MuxC_out)
    );

    ALU U5(
        .A(Regs_Rs1_data),
        .B(MuxC_out),
        .ALU_Control(ALU_Control),
        
        .res(ALU_res),
        .zero(ALU_zero)
    );

    Mux5to1 U6(
        .control(MemtoReg),
        .data1(ALU_res),
        .data2(load_control_out),
        .data3(PC_plus_4),
        .data4(Imm_out),
        .data5(PC_plus_imm),

        .out(MuxD_out)
    );

    Adder_32 U7(
        .A(32'd4),
        .B(PC_Q),

        .res(PC_plus_4)
    );

    Adder_32 U8(
        .A(PC_Q),
        .B(Imm_out),

        .res(PC_plus_imm)
    );

    Branch_control U9(
        .Branch(Branch),
        .BranchN(BranchN),
        .ALU_zero(ALU_zero),    

        .Branch_signal(Branch_signal)
    );

    Mux2to1 U10(
        .control(Branch_signal),
        .data1(PC_plus_4),
        .data2(PC_plus_imm),

        .out(MuxB_out)
    );

    Mux3to1 U11(
        .control(Jump),
        .data1(MuxB_out),
        .data2(PC_plus_imm),
        .data3(ALU_res),

        .out(MuxA_out)
    );

    Store_control U12(
        .Regs_Rs2_data(Regs_Rs2_data),
        .Store_control(Store_len),
        .ALU_res(ALU_res),
        .csr_inst(csr_inst),
        .trap_regwrite(trap_regwrite),

        .store_control_wea(store_control_wea),
        .store_control_out(Data_out)
    );

    Load_control U13(
        .data_mem_out(Data_in),
        .Load_control(Load_len),
        .ALU_res(ALU_res),

        .load_control_out(load_control_out)
    );

    RV_INT U14(.clk(clk),
               .rst(rst),
               .inst_in(inst_field),
               .pc_current(PC_out),
               .wdata(wdata),
               .INT(INT),
               .ecall(ecall),
               .mret(mret),
               .illegal_inst(illegal_inst),
               .csr_w(csr_w),
               .csr_wsc_mode(csr_wsc_mode),
               

               .rdata(rdata),
               .pc_next(trap_pc),
               .mstatus(mstatus),
               .mtvec(mtvec),
               .mcause(mcause),
               .mtval(mtval),
               .mepc(mepc)   
    );

endmodule
