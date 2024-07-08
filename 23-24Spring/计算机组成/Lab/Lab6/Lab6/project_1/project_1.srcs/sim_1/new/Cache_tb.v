`timescale 1ns / 1ps

module Cache_tb;
    reg             clk, rst;
    reg [31:0]      addr_cpu_in;
    reg [31:0]      write_data_cpu_in;
    reg [1:0]       MemRW_cpu_in;     
    reg [127:0]     mem_data;         
    reg             mem_ready;     

    wire [127:0]    mem_data_out;
    wire [31:0]     read_data;
    wire            MemRW_out;

    Cache U1(
        .clk(clk),
        .rst(rst),
        .addr_cpu_in(addr_cpu_in),
        .write_data_cpu_in(write_data_cpu_in),
        .MemRW_cpu_in(MemRW_cpu_in),
        .mem_data(mem_data),
        .mem_ready(mem_ready),

        .mem_data_out(mem_data_out),
        .read_data(read_data),
        .MemRW_out(MemRW_out)
    );

    initial begin
        clk = 1;
        rst = 1;
        MemRW_cpu_in = 0;
        #10;
        rst = 0;
        mem_ready = 1;
        
        
        // read miss
        MemRW_cpu_in = 1;   // read
        addr_cpu_in = 32'h0001_0000; // 第0组，tag=1
        mem_data = 128'h1111_1111_3333_3333_5555_5555_7777_7777;
        #50;

        // read hit
        addr_cpu_in = 32'h0002_0000; // 第0组，tag=1
        #50;

        addr_cpu_in = 32'h0002_0001;
        mem_data = 128'h2222_2222_4444_4444_6666_6666_8888_8888;
        #50;
        addr_cpu_in = 32'h0002_0001;
        #50;

        // write hit
        MemRW_cpu_in = 2;   // write
        addr_cpu_in = 32'h0001_0001;
        write_data_cpu_in = 32'hABCD_ABCD;
        #50;
        addr_cpu_in = 32'h0002_0002;
        write_data_cpu_in = 32'hFEDC_FEDC;
        #50;
        
        // 检查刚才写进来的
        MemRW_cpu_in = 1;   // read
        addr_cpu_in = 32'h0001_0001;
        #50;
        addr_cpu_in = 32'h0002_0002;
        #50;

        // write miss
        MemRW_cpu_in = 2;   // write
        addr_cpu_in = 32'h0003_0000;
        write_data_cpu_in = 32'h1145_1419;
        #50;

        // 检查刚才写进来的
        MemRW_cpu_in = 1;   // read
        addr_cpu_in = 32'h0003_0000;
        #50;
        addr_cpu_in = 32'h0003_0001;
        #50;
    end
    always begin
        #5;
        clk = ~clk;
    end

endmodule
