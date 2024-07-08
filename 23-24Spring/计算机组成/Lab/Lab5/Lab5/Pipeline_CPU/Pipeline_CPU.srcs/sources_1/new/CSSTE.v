`timescale 1ns / 1ps

module CSSTE(
    input         clk_100mhz,
    input         RSTN,
    input  [3:0]  BTN_y,
    input  [15:0] SW,
    output [3:0]  Blue,
    output [3:0]  Green,
    output [3:0]  Red,
    output        HSYNC,
    output        VSYNC,
    output [15:0] LED_out,  
    output [7:0]  AN,
    output [7:0]  segment,
    output wire   tx
    );

    wire [3:0] U1_MemRW;
    wire [31:0] U1_Addr_out;
    wire [31:0] U1_Data_out;
    wire [31:0] U1_PC_out;

    wire [31:0] U2_spo;

    wire [31:0] U3_douta;

    wire [31:0] U4_Cpu_data4bus;
    wire [31:0] U4_ram_data_in;
    wire [9:0] U4_ram_addr;
    wire U4_data_ram_we;
    wire U4_GPIOf0000000_we;
    wire U4_GPIOe0000000_we;
    wire U4_counter_we;
    wire [31:0] U4_Peripheral_in;

    wire [7:0] U5_point_out;
    wire [7:0] U5_LE_out;
    wire [31:0] U5_Disp_num;

    wire [1:0] U7_counter_set;
    wire [15:0] U7_LED_out;

    wire [31:0] U8_clkdiv;
    wire U8_Clk_CPU;

    wire [3:0] U9_BTN_OK;
    wire [15:0] U9_SW_OK;
    wire U9_rst;

    wire U10_counter0_OUT;
    wire U10_counter1_OUT;
    wire U10_counter2_OUT;
    wire [31:0] U10_counter_out;
    wire [31:0]   Reg00;    wire [31:0]   Reg01;    wire [31:0]   Reg02;    wire [31:0]   Reg03;    wire [31:0]   Reg04;    wire [31:0]   Reg05;    wire [31:0]   Reg06;    wire [31:0]   Reg07;    wire [31:0]   Reg08;    wire [31:0]   Reg09;    wire [31:0]   Reg10;    wire [31:0]   Reg11;    wire [31:0]   Reg12;    wire [31:0]   Reg13;    wire [31:0]   Reg14;    wire [31:0]   Reg15;    wire [31:0]   Reg16;    wire [31:0]   Reg17;    wire [31:0]   Reg18;    wire [31:0]   Reg19;    wire [31:0]   Reg20;    wire [31:0]   Reg21;    wire [31:0]   Reg22;    wire [31:0]   Reg23;    wire [31:0]   Reg24;    wire [31:0]   Reg25;    wire [31:0]   Reg26;    wire [31:0]   Reg27;    wire [31:0]   Reg28;    wire [31:0]   Reg29;    wire [31:0]   Reg30;    wire [31:0]   Reg31;
    
    wire vga_clock;

    wire [31:0] inst_ID;
    wire [31:0] inst_EX;
    wire [31:0] inst_MEM;
    wire [31:0] inst_WB;
    wire [31:0] Write_back_data;


    UART uart_inst(
        .clk        (clk_100mhz), 
        .rst        (U9_rst), 
        .pc_if      (U1_PC_out),
        
        .inst_if    (U2_spo),
        .inst_id    (inst_ID),
        .inst_ex    (inst_EX),
        .inst_mem   (inst_MEM),
        .inst_wb    (inst_WB),
        .mem_w_data (U1_Data_out),  // 写入mem数据
        .alu_res    (U1_Addr_out),  // 写入mem地址
        .mem_wen_mem(U1_MemRW),     // mem写使能
        .rd_wb      (Write_back_data), //写回数据
        .x0(Reg00), .ra(Reg01), .sp(Reg02), .gp(Reg03), .tp(Reg04), .t0(Reg05), .t1(Reg06), .t2(Reg07), .s0(Reg08), .s1(Reg09), .a0(Reg10), .a1(Reg11), .a2(Reg12), .a3(Reg13), .a4(Reg14), .a5(Reg15), .a6(Reg16), .a7(Reg17), .s2(Reg18), .s3(Reg19), .s4(Reg20), .s5(Reg21), .s6(Reg22), .s7(Reg23), .s8(Reg24), .s9(Reg25), .s10(Reg26), .s11(Reg27), .t3(Reg28), .t4(Reg29), .t5(Reg30), .t6(Reg31),
        .tx(tx)
    );

    Pipline_CPU U1(
        .clk(U8_Clk_CPU),
        .rst(U9_rst),
        .Data_in(U4_Cpu_data4bus),
        .inst_in(U2_spo),

        .wea(U1_MemRW),
        .Addr_out(U1_Addr_out),
        .Data_out(U1_Data_out),
        .PC_out_IF(U1_PC_out), 
        .inst_ID(inst_ID),
        .inst_EX(inst_EX),
        .inst_MEM(inst_MEM),
        .inst_WB(inst_WB),
        .Write_back_data(Write_back_data),
        .Reg00(Reg00), .Reg01(Reg01), .Reg02(Reg02), .Reg03(Reg03), .Reg04(Reg04), .Reg05(Reg05), .Reg06(Reg06), .Reg07(Reg07), .Reg08(Reg08), .Reg09(Reg09), .Reg10(Reg10), .Reg11(Reg11), .Reg12(Reg12), .Reg13(Reg13), .Reg14(Reg14), .Reg15(Reg15), .Reg16(Reg16), .Reg17(Reg17), .Reg18(Reg18), .Reg19(Reg19), .Reg20(Reg20), .Reg21(Reg21), .Reg22(Reg22), .Reg23(Reg23), .Reg24(Reg24), .Reg25(Reg25), .Reg26(Reg26), .Reg27(Reg27), .Reg28(Reg28), .Reg29(Reg29), .Reg30(Reg30), .Reg31(Reg31)
    );

    ROM_D U2(
        .a(U1_PC_out[11:2]),
        .spo(U2_spo)
    );

    RAM_B U3(
        .clka(~clk_100mhz),
        .wea(U1_MemRW),
        .addra(U4_ram_addr),
        .dina(U4_ram_data_in),
        .douta(U3_douta)
    );

    MIO_BUS U4(
        .clk(clk_100mhz),
        .rst(U9_rst),
        .BTN(U9_BTN_OK),
        .SW(U9_SW_OK),
        .mem_w(U1_MemRW),
        .Cpu_data2bus(U1_Data_out),
        .addr_bus(U1_Addr_out),
        .ram_data_out(U3_douta),
        .led_out(U7_LED_out),
        .counter_out(U10_counter_out),
        .counter0_out(U10_counter0_OUT),
        .counter1_out(U10_counter1_OUT),
        .counter2_out(U10_counter2_OUT),
        .Cpu_data4bus(U4_Cpu_data4bus),
        .ram_data_in(U4_ram_data_in),
        .ram_addr(U4_ram_addr),
        .data_ram_we(U4_data_ram_we),
        .GPIOf0000000_we(U4_GPIOf0000000_we),
        .GPIOe0000000_we(U4_GPIOe0000000_we),
        .counter_we(U4_counter_we),
        .Peripheral_in(U4_Peripheral_in)
    );

    Multi_8CH32 U5(
        .clk(~U8_Clk_CPU),
        .rst(U9_rst),
        .EN(U4_GPIOe0000000_we),
        .Test(U9_SW_OK[7:5]),
        .point_in({U8_clkdiv[31:0], U8_clkdiv[31:0]}),
        .LES(64'b0),
        .Data0(U4_Peripheral_in),
        .data1({2'b0, U1_PC_out[31:2]}),
        .data2(U2_spo),
        .data3(U10_counter_out),
        .data4(U1_Addr_out),
        .data5(U1_Data_out),
        .data6(U4_Cpu_data4bus),
        .data7(U1_PC_out),
        
        .point_out(U5_point_out),
        .LE_out(U5_LE_out),
        .Disp_num(U5_Disp_num)
    );

    Seg7_Dev_0 U6(
        .disp_num(U5_Disp_num),
        .point(U5_point_out),
        .les(U5_LE_out),
        .scan({U8_clkdiv[18], U8_clkdiv[17], U8_clkdiv[16]}),
        .AN(AN),
        .segment(segment)
    );
    
    SPIO U7(
        .clk(~U8_Clk_CPU),
        .rst(U9_rst),
        .Start(U8_clkdiv[20]),
        .EN(U4_GPIOf0000000_we),
        .P_Data(U4_Peripheral_in),
        .counter_set(U7_counter_set),
        .LED_out(U7_LED_out)
    );
    assign LED_out = U7_LED_out;

    clk_div U8(
        .clk(clk_100mhz),
        .rst(U9_rst),
        .SW2(U9_SW_OK[2]),
        .SW8(U9_SW_OK[8]),
        .STEP(U9_SW_OK[10]),
        .clkdiv(U8_clkdiv),
        .Clk_CPU(U8_Clk_CPU)
    );

    SAnti_jitter U9(
        .clk(clk_100mhz),
        .RSTN(RSTN),
        .Key_y(BTN_y),
        .SW(SW),
        .BTN_OK(U9_BTN_OK),
        .SW_OK(U9_SW_OK),
        .rst(U9_rst)
    );

    Counter_x U10(
        .clk(~U8_Clk_CPU),
        .rst(U9_rst),
        .clk0(U8_clkdiv[6]),
        .clk1(U8_clkdiv[9]),
        .clk2(U8_clkdiv[11]),
        .counter_we(U4_counter_we),
        .counter_val(U4_Peripheral_in),
        .counter_ch(U7_counter_set),
        .counter0_OUT(U10_counter0_OUT),
        .counter1_OUT(U10_counter1_OUT),
        .counter2_OUT(U10_counter2_OUT),
        .counter_out(U10_counter_out)
    );

    VGA U11(
        .clk_25m(vga_clock),
        .clk_100m(clk_100mhz),
        .rst(U9_rst),

        .PC_IF(U1_PC_out),
        .inst_IF(U2_spo),

        .MemRW_Mem(U1_MemRW),
        .Data_out(U1_Data_out),
        .Addr_out(U1_Addr_out),

        .x0(Reg00),
        .ra(Reg01),
        .sp(Reg02),
        .gp(Reg03),
        .tp(Reg04),
        .t0(Reg05),
        .t1(Reg06),
        .t2(Reg07),
        .s0(Reg08),
        .s1(Reg09),
        .a0(Reg10),
        .a1(Reg11),
        .a2(Reg12),
        .a3(Reg13),
        .a4(Reg14),
        .a5(Reg15),
        .a6(Reg16),
        .a7(Reg17),
        .s2(Reg18),
        .s3(Reg19),
        .s4(Reg20),
        .s5(Reg21),
        .s6(Reg22),
        .s7(Reg23),
        .s8(Reg24),
        .s9(Reg25),
        .s10(Reg26),
        .s11(Reg27),
        .t3(Reg28),
        .t4(Reg29),
        .t5(Reg30),
        .t6(Reg31),

        .hs(HSYNC),
        .vs(VSYNC),
        .vga_r(Red),
        .vga_g(Green),
        .vga_b(Blue)
    );
    
    clk_wiz_0 U12(
        .clk_out1(vga_clock),
        .reset(),
        .locked(),
        .clk_in1(clk_100mhz)
 );

    

endmodule