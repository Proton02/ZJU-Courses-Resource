`timescale 1ns / 1ns

module Regs_tb;
    reg clk;
    reg rst;
    reg [4:0] Rs1_addr; 
    reg [4:0] Rs2_addr; 
    reg [4:0] Wt_addr; 
    reg [31:0]Wt_data; 
    reg RegWrite; 
    wire [31:0] Rs1_data; 
    wire [31:0] Rs2_data;
Regs Regs_U(
        .clk(clk),
        .rst(rst),
        .Rs1_addr(Rs1_addr),
        .Rs2_addr(Rs2_addr),
        .Wt_addr(Wt_addr),
        .Wt_data(Wt_data),
        .RegWrite(RegWrite),
        .Rs1_data(Rs1_data),
        .Rs2_data(Rs2_data)
    );

    always #10 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        RegWrite = 0;
        Wt_data = 0;
        Wt_addr = 0;
        Rs1_addr = 0;
        Rs2_addr = 0;
        #100

        rst = 0;

        RegWrite = 1;
        Wt_addr = 5'b00101;
        Wt_data = 32'ha5a5a5a5;
        #50
        Wt_addr = 5'b01010;
        Wt_data = 32'h5a5a5a5a;
        #50

        RegWrite = 0;
        Rs1_addr = 5'b00101;
        Rs2_addr = 5'b01010;
        #50;

        // regwrite == 0, test whether or not could we write the data
        Wt_addr = 5'd1;
        Wt_data = 32'hFFFFFFFF;
        #20;
        Rs1_addr = 5'd1; // read data that was wrote in just now
        #20;

        RegWrite = 1;
        #5;             // test whether could we write data 2 times in 1 cycle
        Wt_data = 0;    // posedge
        #35;

        Wt_data = 32'hFFFFFFFF;
        #15;            // negedge
        Wt_data = 0;
        #25;

        Wt_data = 32'hFFFFFFFF;
        Wt_addr = 0;
        #20;
        Rs1_addr = 0;
        #20;

        #100 $stop();
    end

endmodule