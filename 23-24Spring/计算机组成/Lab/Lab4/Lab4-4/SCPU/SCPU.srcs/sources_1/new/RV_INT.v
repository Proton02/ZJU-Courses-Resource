`timescale 1ns / 1ps

module RV_INT(
    input               clk, rst,
    
    input [31:0]        inst_in,            // 普通信号
    input [31:0]        pc_current,         // 当前指令 PC
    input [31:0]        wdata,              // 写入 CSR 寄存器的数据
    input               INT,                // 外部中断信号
    input               ecall,              // ecall 指令
    input               mret,               // mret 指令
    input               illegal_inst,       // 非法指令
    input               csr_w,              // 写使能
    input [1:0]         csr_wsc_mode,       // 模式

    output [31:0]       rdata,              // 读出的数据
    output reg [31:0]   pc_next,            // 将执行指令的 PC

    output [31:0]       mstatus,            // 用于 VGA 调试
    output [31:0]       mtvec,            
    output [31:0]       mcause,
    output [31:0]       mtval,
    output [31:0]       mepc
    
);
      
    reg [31:0]          mstatus_bypass_in;   // 旁路输入
    reg [31:0]          mcause_bypass_in;
    reg [31:0]          mtval_bypass_in;
    reg [31:0]          mepc_bypass_in; 

    reg [11:0]          raddr;      
    reg [11:0]          waddr;
    wire                processing; // 当前是否正在处理中断，如果是就不能触发新的中断
    reg                 in_trap;    // 当前是否是中断指令，如果是就旁路输入
    reg                 in_mret;    // 当前是否是mret指令，如果是就旁路输入（因为mret指令没有哦）
    
    always @(*) begin
        if(rst == 1)begin
            in_trap = 0;
            pc_next = 0;
        end
        // 非法指令中断
        else if(illegal_inst == 1 && processing == 0) begin
            in_trap = 1;                    // 当前发生中断
            in_mret = 0;                    // 不在返回
            raddr = 12'h305;                // mtvec
            waddr = 0;                      // 不写入
            pc_next = rdata;                // pc_next = mtvec 要跳转的指令pc
            
            mcause_bypass_in = 2;           // 原因：非法指令
            mtval_bypass_in = inst_in;      // 非法指令需要保存
            mepc_bypass_in = pc_current;    // 记录当前指令 PC
            mstatus_bypass_in = 32'b1;      // 进入中断
        end
        // 外部中断
        else if(INT == 1 && processing == 0) begin
            in_trap = 1;                    // 当前发生中断
            in_mret = 0;                    // 不在返回
            raddr = 12'h305;                // mtvec
            waddr = 0;                      // 不写入
            pc_next = rdata;                // pc_next = mtvec 要跳转的指令pc

            mcause_bypass_in = 0;           // 原因：硬件中断
            mtval_bypass_in = 0;            // 不是非法指令
            mepc_bypass_in = pc_current;    // 记录当前指令 PC
            mstatus_bypass_in = 32'b1;      // 进入中断
        end    
        // ecall 指令中断
        else if(ecall == 1 && processing == 0) begin
            in_trap = 1;                    // 当前发生中断
            in_mret = 0;                    // 不在返回
            raddr = 12'h305;                // mtvec
            waddr = 0;                      // 不写入
            pc_next = rdata;                // pc_next = mtvec 要跳转的指令pc

            mcause_bypass_in = 32'b1;       // 原因：ecall
            mtval_bypass_in = 0;            // 不是非法指令
            mepc_bypass_in = pc_current;    // 记录当前指令 PC
            mstatus_bypass_in = 32'b1;      // 进入中断
        end
        // mret 处理完中断，返回
        else if(mret == 1) begin
            in_trap = 0;                    // 中断结束
            in_mret = 1;                    // 开始返回
            raddr = 12'h341;                // 读取mepc保存的发生中断的PC，给到pc_next
            waddr = 0;                      // 不写入
            pc_next = rdata;                // pc_next = mepc 返回触发中断的指令pc

            mstatus_bypass_in = 0;          // 退出中断
        end
        // 执行 CSR 指令
        else begin
            in_trap = 0;                    // 不在中断
            in_mret = 0;                    // 不在返回
            raddr = inst_in[31:20];         // CSR 寄存器编号
            waddr = inst_in[31:20];         // CSR 寄存器编号

            pc_next = pc_current + 32'd4;   // 执行下一条指令
        end
    end

    CSRRegs U1(
        .clk(clk),
        .rst(rst),
        .raddr(raddr),
        .waddr(waddr),
        .csr_w(csr_w),
        .in_trap(in_trap),
        .in_mret(in_mret),
        .csr_wsc_mode(csr_wsc_mode),
        .wdata(wdata),
        .mstatus_bypass_in(mstatus_bypass_in),
        .mcause_bypass_in(mcause_bypass_in), 
        .mtval_bypass_in(mtval_bypass_in), 
        .mepc_bypass_in(mepc_bypass_in), 
        
        .rdata(rdata),
        .mstatus(mstatus),
        .mtvec(mtvec),
        .mcause(mcause),
        .mtval(mtval),
        .mepc(mepc),
        .processing(processing)
    );

endmodule
