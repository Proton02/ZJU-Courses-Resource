
module VGA (
    input wire clk_25m,
    input wire clk_100m,
    input wire rst,
    
    input wire [31:0] PC_IF,      //PC_out_IF
    input wire [31:0] inst_IF,    //ROMD_out
    input wire [31:0] PC_ID,      //
    input wire [31:0] inst_ID,    //
    input wire [31:0] PC_Ex,      //
    input wire        MemRW_Ex,   //
    input wire        MemRW_Mem,  //wea
    input wire [31:0] Data_out,   //EXMEM
    input wire [31:0] Addr_out,   //EXMEM
    input wire [31:0] Data_out_WB,
    input wire [31:0] x0 , 
    input wire [31:0] ra , 
    input wire [31:0] sp , 
    input wire [31:0] gp , 
    input wire [31:0] tp , 
    input wire [31:0] t0 , 
    input wire [31:0] t1 , 
    input wire [31:0] t2 , 
    input wire [31:0] s0 , 
    input wire [31:0] s1 , 
    input wire [31:0] a0 , 
    input wire [31:0] a1 , 
    input wire [31:0] a2 , 
    input wire [31:0] a3 , 
    input wire [31:0] a4 , 
    input wire [31:0] a5 , 
    input wire [31:0] a6 , 
    input wire [31:0] a7 , 
    input wire [31:0] s2 , 
    input wire [31:0] s3 , 
    input wire [31:0] s4 , 
    input wire [31:0] s5 , 
    input wire [31:0] s6 , 
    input wire [31:0] s7 , 
    input wire [31:0] s8 , 
    input wire [31:0] s9 , 
    input wire [31:0] s10, 
    input wire [31:0] s11, 
    input wire [31:0] t3 , 
    input wire [31:0] t4 , 
    input wire [31:0] t5 , 
    input wire [31:0] t6 ,
    
    output wire       hs,
    output wire       vs,
    output wire [3:0] vga_r,
    output wire [3:0] vga_g,
    output wire [3:0] vga_b
);


    wire [9:0] vga_x;
    wire [8:0] vga_y;
    wire video_on;
    VgaController vga_controller(
        .clk(clk_25m),
        .rst(rst),
        .vga_x(vga_x),
        .vga_y(vga_y),
        .hs(hs),
        .vs(vs),
        .video_on(video_on)
    );

    wire display_wen;
    wire [11:0] display_w_addr;
    wire [7:0] display_w_data;
    VgaDisplay vga_display(
        .clk(clk_100m),
        .video_on(video_on),
        .vga_x(vga_x),
        .vga_y(vga_y),
        .vga_r(vga_r),
        .vga_g(vga_g),
        .vga_b(vga_b),
        .wen(display_wen),
        .w_addr(display_w_addr),
        .w_data(display_w_data)
    );
    

    VgaDebugger vga_debugger(
        .pc(PC_IF),
        .inst(inst_IF),
        .IfId_pc(),
        .IfId_inst(),
        .IfId_valid(),
        .IdEx_pc(),
        .IdEx_inst(),
        .IdEx_valid(),
        .IdEx_rd(),
        .IdEx_rs1(),
        .IdEx_rs2(),
        .IdEx_rs1_val(),
        .IdEx_rs2_val(),
        .IdEx_reg_wen(),
        .IdEx_is_imm(),
        .IdEx_imm(),
        .IdEx_mem_wen(),
        .IdEx_mem_ren(),
        .IdEx_is_branch(),
        .IdEx_is_jal(),
        .IdEx_is_jalr(),
        .IdEx_is_auipc(),
        .IdEx_is_lui(),
        .IdEx_alu_ctrl(),
        .IdEx_cmp_ctrl(),
        .ExMa_pc(),
        .ExMa_inst(),
        .ExMa_valid(),
        .ExMa_rd(),
        .ExMa_reg_wen(),
        .ExMa_mem_w_data(Data_out),
        .ExMa_alu_res(Addr_out),
        .ExMa_mem_wen(MemRW_Mem),
        .ExMa_mem_ren(),
        .ExMa_is_jal(),
        .ExMa_is_jalr(),
        .MaWb_pc(),
        .MaWb_inst(),
        .MaWb_valid(),
        .MaWb_rd(),
        .MaWb_reg_wen(),
        .MaWb_reg_w_data(),
        .x0             (x0             ),
        .ra             (ra             ),
        .sp             (sp             ),
        .gp             (gp             ),
        .tp             (tp             ),
        .t0             (t0             ),
        .t1             (t1             ),
        .t2             (t2             ),
        .s0             (s0             ),
        .s1             (s1             ),
        .a0             (a0             ),
        .a1             (a1             ),
        .a2             (a2             ),
        .a3             (a3             ),
        .a4             (a4             ),
        .a5             (a5             ),
        .a6             (a6             ),
        .a7             (a7             ),
        .s2             (s2             ),
        .s3             (s3             ),
        .s4             (s4             ),
        .s5             (s5             ),
        .s6             (s6             ),
        .s7             (s7             ),
        .s8             (s8             ),
        .s9             (s9             ),
        .s10            (s10            ),
        .s11            (s11            ),
        .t3             (t3             ),
        .t4             (t4             ),
        .t5             (t5             ),
        .t6             (t6             ),
        .clk            (clk_100m       ),
        .display_wen    (display_wen    ),
        .display_w_addr (display_w_addr ),
        .display_w_data (display_w_data )
    );


    
endmodule