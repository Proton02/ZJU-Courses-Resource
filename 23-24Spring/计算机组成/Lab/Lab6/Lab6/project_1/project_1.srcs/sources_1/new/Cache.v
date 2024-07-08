`timescale 1ns / 1ps

module Cache(
    input               clk, 
    input               rst,
    input [31:0]        addr_cpu_in,        // cpu给出从内存读取或写入数据的地址
    input [31:0]        write_data_cpu_in,  // cpu给出需要写入内存的数据
    input [1:0]         MemRW_cpu_in,       // cpu发出请求，00无请求，01读请求，10写请求
    input [127:0]       mem_data,           // 从内存中读出的数据
    input               mem_ready,          // 内存是否准备好

    
    output reg [127:0]  mem_data_out,       // Dirty为1时，需要将cache中的数据写回内存
    output reg [31:0]   read_data,          // 读出cache中的数据
    output reg          MemRW_out           // 发生miss，从内存中读或者写
    );

    reg  [153:0] cache1 [127:0];            // 这里需要 128 + 3 + 23 = 154 bits，其中128为data，剩下的是额外信息
    reg  [153:0] cache2 [127:0];            // set2
    reg  [1:0]   state;
    wire [22:0]  tag = addr_cpu_in[31:9];   // 23 bits tag
    wire [6:0]   index = addr_cpu_in[8:2];  // 7 bits index
    wire [1:0]   boffset = addr_cpu_in[1:0]; // 2 bits byte offset
    localparam
        idle = 2'b00,
        cmptag = 2'b01,
        wback = 2'b10,
        alloc = 2'b11;
    
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            state <= idle;
        end
        else begin
        case(state)
            idle: begin
                if(MemRW_cpu_in == 2'b00) begin
                    state <= idle;
                end
                else if(MemRW_cpu_in == 2'b01 || MemRW_cpu_in == 2'b10)begin
                    state <= cmptag;
                end
                MemRW_out <= 0;
            end
            cmptag: begin
                // hit
                // 第一路
                if(cache1[index][153] == 1'b1 && cache1[index][150:128] == tag) begin
                    if(MemRW_cpu_in == 2'b01) begin        // 读
                        read_data <= cache1[index][(boffset * 32) +:32]; // 位选择，如果写成 boffset*32+31:boffset*32 就会出现变量
                    end
                    else if(MemRW_cpu_in == 2'b10) begin   // 写
                        cache1[index][151] <= 1;
                        cache1[index][152] <= 1;
                        cache1[index][(boffset * 32) +:32] <= write_data_cpu_in;
                    end
                    state <= idle;
                end
                // 第二路
                else if(cache2[index][153] == 1'b1 && cache2[index][150:128] == tag) begin
                    if(MemRW_cpu_in == 2'b01) begin
                        read_data <= cache2[index][(boffset * 32) +:32];
                    end
                    else if(MemRW_cpu_in == 2'b10) begin
                        cache2[index][151] <= 1;
                        cache2[index][152] <= 1;
                        cache2[index][(boffset * 32) +:32] <= write_data_cpu_in;
                    end
                    state <= idle;
                end
                // miss
                else begin
                    // old block is dirty
                    if(cache1[index][152] || cache1[index][152]) begin
                        state <= wback;
                        MemRW_out <= 1;
                    end
                    // old block is clean
                    else begin
                        state <= alloc;
                        MemRW_out <= 0;
                    end
                end
            end
            wback: begin
                if(mem_ready) begin
                    // 第一个block
                    if(cache1[index][152]) begin
                        cache1[index][152] <= 0;
                        mem_data_out <= cache1[index][127:0];
                    end
                    // 第二个block
                    else begin
                        cache2[index][152] <= 0;
                        mem_data_out <= cache2[index][127:0];
                    end
                    state <= alloc;
                end
                else begin
                    state <= wback;
                end
            end
            alloc: begin
                if(mem_ready) begin
                    // 0 0，0 1 的时候替换第一个block
                    if((!cache1[index][151] && !cache2[index][151]) | (!cache1[index][151] && cache2[index][151])) begin
                        cache2[index][151] <= 0;
                        cache1[index][151] <= 1;  // U
                        cache1[index][152] <= 0;  // D
                        cache1[index][153] <= 1;  // V
                        cache1[index][127:0] <= mem_data;
                        cache1[index][150:128] <= tag;
                    end
                    // 1 0，1 1 的时候替换第二个block
                    else begin
                        cache1[index][151] <= 0;
                        cache2[index][151] <= 1;  // U
                        cache2[index][152] <= 0;  // D
                        cache2[index][153] <= 1;  // V
                        cache2[index][127:0] <= mem_data;
                        cache2[index][150:128] <= tag; 
                    end
                    state <= cmptag;
                end
                else begin
                    state <= alloc;
                end
            end
        endcase
        end
    end
endmodule
