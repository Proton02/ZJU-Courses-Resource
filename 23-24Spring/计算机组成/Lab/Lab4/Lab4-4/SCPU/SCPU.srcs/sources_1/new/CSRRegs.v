`timescale 1ns / 1ps

module CSRRegs(
    input               clk, rst,
    input [11:0]        raddr,                  // 读取 CSR 寄存器地址
    input [11:0]        waddr,                  // 写入 CSR 寄存器地址
    input               csr_w,                  // 写使能
    input               in_trap,                // 异常中断信号
    input               in_mret,                // 正在mret
    input [1:0]         csr_wsc_mode,           // 写入 CSR 寄存器的模式，直接读 00，或 01，取反与 10
    input [31:0]        wdata,                  // 写入 CSR 寄存器的数据

    input [31:0]        mstatus_bypass_in,      // 旁路输入
    input [31:0]        mcause_bypass_in,
    input [31:0]        mtval_bypass_in,
    input [31:0]        mepc_bypass_in,

    output reg [31:0]   rdata,                  // 读出 CSR 寄存器的数据
    output reg [31:0]   mstatus,
    output reg [31:0]   mtvec,
    output reg [31:0]   mcause,
    output reg [31:0]   mtval,
    output reg [31:0]   mepc,
    output reg          processing
);

    always @(*) begin   // 读出 CSR 数据
        case (raddr)
            12'h300: rdata = mstatus;
            12'h305: rdata = mtvec;
            12'h341: rdata = mepc;
            12'h342: rdata = mcause;
            12'h343: rdata = mtval;
        endcase
        processing = mstatus == 0 ? 0 : 1;      // 判断中断是否处理结束
    end

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            mstatus <= 32'h0;
            mtvec <= 32'h0;
            mcause <= 32'h0;
            mtval <= 32'h0;
            mepc <= 32'h0;
        end
        else if(csr_w == 1) begin
            case(waddr)
                12'h300:    // mstatus
                    case(csr_wsc_mode)
                        2'b00: mstatus <= wdata;
                        2'b01: mstatus <= (mstatus | wdata);
                        2'b10: mstatus <= (mstatus & (~wdata));
                    endcase
                12'h305:    // mtvec
                    case(csr_wsc_mode)
                        2'b00: mtvec <= wdata;
                        2'b01: mtvec <= (mtvec | wdata);
                        2'b10: mtvec <= (mtvec & (~wdata));
                    endcase
                12'h341:    // mepc
                    case(csr_wsc_mode)
                        2'b00: mepc <= wdata;
                        2'b01: mepc <= (mepc | wdata);
                        2'b10: mepc <= (mepc & (~wdata));
                    endcase
                12'h342:    // mcause
                    case(csr_wsc_mode)
                        2'b00: mcause <= wdata;
                        2'b01: mcause <= (mcause | wdata);
                        2'b10: mcause <= (mcause & (~wdata));
                    endcase
                12'h343:    // mtval
                    case(csr_wsc_mode)
                        2'b00: mtval <= wdata;
                        2'b01: mtval <= (mtval | wdata);
                        2'b10: mtval <= (mtval & (~wdata));
                    endcase
            endcase
        end
        else if(in_trap == 1 || in_mret == 1) begin
            mstatus <= mstatus_bypass_in;   // mret的时候需要根据mstatus判断中断处理结束
            mcause <= mcause_bypass_in;
            mtval <= mtval_bypass_in;
            mepc <= mepc_bypass_in;
        end
    end

endmodule
