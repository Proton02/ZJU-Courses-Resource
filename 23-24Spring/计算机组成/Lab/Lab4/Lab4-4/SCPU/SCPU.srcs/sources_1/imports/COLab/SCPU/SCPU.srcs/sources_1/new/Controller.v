`timescale 1ns / 1ps

module Controller(
    input [11:0]      CSR,          // inst[31:20]
    input [4:0]       Reg1,         // inst[19:15]
    input [4:0]       OPcode,       // inst[6:2]
    input [2:0]       Fun3,         // inst[14:12]
    input             Fun7,         // inst[30]

    output reg [1:0]  Jump,         // 选择 PC 的下一个值，0 为 PC+4，1 为 J-Type，2 为 Jalr 目标地址
    output reg        RegWrite,     // 选择是否写回寄存器，0 不写回，1 写回 
    output reg        ALUSrc_B,     // 选择 ALU 的 B 输入口，0 寄存器值，1 立即数
    output reg [1:0]  Store_len,    // 选择 Store 指令的数据存储长度，0 sb，1 sh，2 sw
    output reg [3:0]  ALU_Control,  // 选择 ALU 的运算方式 
    output reg [2:0]  MemtoReg,     // 选择写回寄存器的数据来源，0 ALU 输出，1 内存读出的值，2 PC+4，3 lui，4 auipc
    output reg [3:0]  MemRW,        // 选择内存的读写方式，0 为读，1 为写，共 4byte
    output reg [2:0]  Load_len,     // 选择 Load 指令的数据读取长度，并进行符号位扩展，000 lb，010 lh，100 lw，001 lbu，011 lhu
    output reg        Branch,       // Beq指令选择是否进行分支跳转，0 不跳转，1 跳转
    output reg        BranchN,      // Bne指令选择是否进行分支跳转，0 不跳转，1 跳转
    

    output reg        ecall,        // ecall 指令
    output reg        mret,         // mret 指令
    output reg        illegal_inst, // 非法指令
    output reg        csr_w,        // csr寄存器的写使能
    output reg [1:0]  csr_wsc_mode, // 写入 CSR 寄存器的模式，00 直接读，01 或，10 取反与
    output reg        csr_inst,     // 判断是否是 csr 指令
    output reg        trap_regwrite // csr指令对于普通寄存器的写使能
);
    
    initial begin
        ecall = 0;
        mret = 0;
        illegal_inst = 0;
        csr_w = 0;
        csr_wsc_mode = 0;
        csr_inst = 0;
        trap_regwrite = 0;
    end

    always @(*) begin
        // R-type
        if(OPcode == 5'b01100) begin
            Jump = 0;
            RegWrite = 1;
            ALUSrc_B = 0;
            MemtoReg = 0;
            MemRW = 0;
            Branch = 0;
            BranchN = 0;
            

            ecall = 0;
            mret = 0;
            illegal_inst = 0;
            csr_w = 0;
            csr_wsc_mode = 0;
            csr_inst = 0;
            trap_regwrite = 1;
            
            case(Fun3)
                3'b000: begin       // add sub
                    if(~Fun7) 
                        ALU_Control = 4'b0000;
                    else
                        ALU_Control = 4'b0001;
                end
                3'b001: begin       // sll
                        ALU_Control = 4'b0010;
                end
                3'b010: begin       // slt
                        ALU_Control = 4'b0011;
                end
                3'b011: begin       // sltu
                        ALU_Control = 4'b0100;
                end
                3'b100: begin       // xor
                        ALU_Control = 4'b0101;
                end
                3'b101: begin       // srl sra
                    if(~Fun7)
                        ALU_Control = 4'b0110;
                    else
                        ALU_Control = 4'b0111;
                end
                3'b110: begin       // or
                        ALU_Control = 4'b1000;
                end
                3'b111: begin       // and
                        ALU_Control = 4'b1001;
                end
            endcase
        end

        // I-type 1
        else if(OPcode == 5'b00100) begin
            Jump = 0;
            RegWrite = 1;
            ALUSrc_B = 1;
            MemtoReg = 0;
            MemRW = 0;
            Branch = 0;
            BranchN = 0;

            ecall = 0;
            mret = 0;
            illegal_inst = 0;
            csr_w = 0;
            csr_wsc_mode = 0;
            csr_inst = 0;
            trap_regwrite = 1;
            
            case(Fun3)
                3'b000: begin       // addi
                        ALU_Control = 4'b0000;
                end
                3'b010: begin       // slti
                        ALU_Control = 4'b0011;
                end
                3'b011: begin       // sltiu
                        ALU_Control = 4'b0100;
                end
                3'b100: begin       // xori
                        ALU_Control = 4'b0101;
                end
                3'b110: begin       // ori
                        ALU_Control = 4'b1000;
                end
                3'b111: begin       // andi
                        ALU_Control = 4'b1001;
                end
                3'b001: begin       // slli
                        ALU_Control = 4'b0010;
                end
                3'b101: begin       // srli srai
                    if(~Fun7)
                        ALU_Control = 4'b0110;
                    else
                        ALU_Control = 4'b0111;
                end
            endcase
        end

        // I-type 2
        else if(OPcode == 5'b00000) begin
            Jump = 0;
            RegWrite = 1;
            ALUSrc_B = 1;
            ALU_Control = 4'b0000;
            MemtoReg = 3'b001;
            MemRW = 0;
            Branch = 0;
            BranchN = 0;
            
            ecall = 0;
            mret = 0;
            illegal_inst = 0;
            csr_w = 0;
            csr_wsc_mode = 0;
            csr_inst = 0;
            trap_regwrite = 1;
            
            case(Fun3)
                3'b000: begin       // lb
                        Load_len = 3'b000;
                end
                3'b001: begin       // lh
                        Load_len = 3'b010;
                end
                3'b010: begin       // lw
                        Load_len = 3'b100;
                end
                3'b100: begin       // lbu
                        Load_len = 3'b001;
                end
                3'b101: begin       // lhu
                        Load_len = 3'b011;
                end
            endcase
        end

        // I-type 3
        else if(OPcode == 5'b11001) begin    // jalr
            Jump = 2'b10;
            RegWrite = 1;
            ALUSrc_B = 1;
            ALU_Control = 4'b0000;
            MemtoReg = 3'b010;
            
            ecall = 0;
            mret = 0;
            illegal_inst = 0;
            csr_w = 0;
            csr_wsc_mode = 0;
            csr_inst = 0;
            trap_regwrite = 1;
            
        end

        // S-type
        else if(OPcode == 5'b01000) begin
            Jump = 2'b000;
            RegWrite = 0;
            ALUSrc_B = 1;
            ALU_Control = 4'b0000;
            MemRW = 4'b1111;
            Branch = 0;
            BranchN = 0;
            
            ecall = 0;
            mret = 0;
            illegal_inst = 0;
            csr_w = 0;
            csr_wsc_mode = 0;
            csr_inst = 0;
            trap_regwrite = 1;
            
            case(Fun3)
                3'b000: begin           // sb    
                        Store_len = 2'b00;
                end
                3'b001: begin           // sh
                        Store_len = 2'b01;
                end
                3'b010: begin           // sw
                        Store_len = 2'b10;
                end
            endcase
        end

        // B-type
        else if(OPcode == 5'b11000) begin
            Jump = 0;
            RegWrite = 0;
            ALUSrc_B = 0;
            
            ecall = 0;
            mret = 0;
            illegal_inst = 0;
            csr_w = 0;
            csr_wsc_mode = 0;
            csr_inst = 0;
            trap_regwrite = 1;
            
            case(Fun3)
                3'b000: begin           // beq
                        ALU_Control = 4'b0001;
                        Branch = 1;
                        BranchN = 0;
                end
                3'b001: begin           // bne
                        ALU_Control = 4'b0001;
                        Branch = 0;
                        BranchN = 1;
                end
                3'b100: begin           // blt
                        ALU_Control = 4'b0011;
                        Branch = 0;
                        BranchN = 1;
                end
                3'b101: begin           // bge
                        ALU_Control = 4'b0011;
                        Branch = 1;
                        BranchN = 0;
                end
                3'b110: begin           // bltu
                        ALU_Control = 4'b0100;
                        Branch = 0;
                        BranchN = 1;
                end
                3'b111: begin           // bgeu
                        ALU_Control = 4'b0100;
                        Branch = 1;
                        BranchN = 0;
                end
            endcase
        end

        // U-type 1
        else if(OPcode == 5'b01101) begin    // lui
            Jump = 0;
            RegWrite = 1;
            MemtoReg = 3'b011;
            Branch = 0;
            BranchN = 0;
            
            ecall = 0;
            mret = 0;
            illegal_inst = 0;
            csr_w = 0;
            csr_wsc_mode = 0;
            csr_inst = 0;
            trap_regwrite = 1;
            
        end

        // U-type 2
        else if(OPcode == 5'b00101) begin    // auipc
            Jump = 0;
            RegWrite = 1;
            MemtoReg = 3'b100;
            Branch = 0;
            BranchN = 0;
            
            ecall = 0;
            mret = 0;
            illegal_inst = 0;
            csr_w = 0;
            csr_wsc_mode = 0;
            csr_inst = 0;
            trap_regwrite = 1;
            
        end

        // J-type
        else if(OPcode == 5'b11011) begin    // jal
            Jump = 1;
            RegWrite = 1;
            MemtoReg = 3'b010;
            Branch = 0;
            BranchN = 0;
            
            ecall = 0;
            mret = 0;
            illegal_inst = 0;
            csr_w = 0;
            csr_wsc_mode = 0;
            csr_inst = 0;
            trap_regwrite = 1;
            
        end
        
        // trap
        else if(OPcode == 5'b11100) begin
            Jump = 0;  
            RegWrite = 0;
            ALUSrc_B = 0; 
            Store_len = 0;
            ALU_Control = 0;
            MemtoReg = 0;
            MemRW = 0;  
            Load_len = 0;
            Branch = 0;
            BranchN = 0;   

            ecall = 0;
            mret = 0;
            illegal_inst = 0;
            csr_w = 0;
            csr_wsc_mode = 0;
            csr_inst = 0;
            trap_regwrite = 0;
            case(Fun3)
                3'b000: begin   // ecall mret
                    csr_w = 0;              // 不用写
                    csr_inst = 0;           // 不是 csr 指令
                    trap_regwrite = 0; 
                    if(CSR == 12'h000)
                        ecall = 1;
                    if(CSR == 12'h302)
                        mret = 1;
                end
                3'b001: begin   // CSRRW
                    trap_regwrite = 1;
                    RegWrite = 1;
                    ecall = 0;
                    mret = 0;
                    csr_inst = 1;
                    csr_w = 1;
                    csr_wsc_mode = 2'b00;
                end
                3'b010: begin   // CSRRS
                    trap_regwrite = 1;
                    RegWrite = 1;
                    ecall = 0;
                    mret = 0;
                    csr_inst = 1;
                    csr_w = 1;
                    csr_wsc_mode = 2'b01;
                end
                3'b011: begin   // CSRRC
                    trap_regwrite = 1;
                    RegWrite = 1;
                    ecall = 0;
                    mret = 0;
                    csr_inst = 1;
                    csr_w = 1;
                    csr_wsc_mode = 2'b10;
                end
                3'b101: begin   // CSRRWI
                    trap_regwrite = 1;
                    RegWrite = 1;
                    ecall = 0;
                    mret = 0;
                    csr_inst = 1;
                    csr_w = 1;
                    csr_wsc_mode = 2'b00;
                end
                3'b110: begin   // CSRRSI
                    trap_regwrite = 1;
                    RegWrite = 1;
                    ecall = 0;
                    mret = 0;
                    csr_inst = 1;
                    csr_w = 1;
                    csr_wsc_mode = 2'b01;
                end
                3'b110: begin   // CSRRCI
                    trap_regwrite = 1;
                    RegWrite = 1;
                    ecall = 0;
                    mret = 0;
                    csr_inst = 1;
                    csr_w = 1;
                    csr_wsc_mode = 2'b10;
                end
            endcase
        end
        else begin  // 非法指令情况
            Jump = 0;  
            RegWrite = 0;
            ALUSrc_B = 0; 
            Store_len = 0;
            ALU_Control = 0;
            MemtoReg = 0;
            MemRW = 0;  
            Load_len = 0;
            Branch = 0;
            BranchN = 0;   
            
            trap_regwrite = 0;
            csr_inst =0;
            ecall = 0;
            mret = 0;
            illegal_inst = 1;
            csr_w = 0;
            csr_wsc_mode = 0;
        end
    end

endmodule
