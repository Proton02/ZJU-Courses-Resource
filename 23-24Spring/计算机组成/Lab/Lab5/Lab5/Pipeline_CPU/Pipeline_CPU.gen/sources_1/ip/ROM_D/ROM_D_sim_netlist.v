// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jun 14 19:08:16 2024
// Host        : BAMBOO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/ROM_D/ROM_D_sim_netlist.v
// Design      : ROM_D
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM_D,dist_mem_gen_v8_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module ROM_D
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [9:0]a;
  wire [27:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [31:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27:20] = \^spo [27:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17:15] = \^spo [17:15];
  assign spo[14] = \<const0> ;
  assign spo[13] = \^spo [13];
  assign spo[12] = \<const0> ;
  assign spo[11:7] = \^spo [11:7];
  assign spo[6] = \<const0> ;
  assign spo[5:4] = \^spo [5:4];
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1:0] = \^spo [1:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ROM_D.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  ROM_D_dist_mem_gen_v8_0_14 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[31:28],\^spo }),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uwBH4JaTzmENPjp1VK18+NmHqz3idKCCPayqakkK6bYDVk0JtRfycJYNxbcnLmlw5yuLTcDXBBKk
FqBPE2n7wWKg9tfz2Y8PrWAvnbsIFMfxBK8sfWUf8PPnz8vUwwMHjbXUWcgCgvtygj/TbB+jcZ8Z
CjYnBZ8tNdKOO1iDLpQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ff7o4KDFniNgPFT3cDZtw4HhiKzFbOFtLXtuci0MZhgQ8oZ15BcuowAfxUJXngU8JkWI9cbWKkG8
h/PODwnWEt4eK4VDKRk6Hw3QkZiKAa1N3QupC8D5bR7vJ/+RhJwSayz9t2JpdZaEhKgCgqTcX6oZ
4fCEOmSTUWVob+DXV4UfaMyfVm5VI0wxZ7q0mjFx+pdkt56PuNREX9kH4a9Ma1P0sYo8XaTpANLa
JC6eXOuUQlp40M9F/NL1Xajpys0YfGx8AveMAFEyfRmHZs+NbXmny/79vednrm+FhwtS9LveegmF
NZW9jiiR+9Igeraaz+QXPc6JO/nCDTr4Fuwusg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
enb/INzHPP7GNdz8dyyqgVCJiMs9JXcjMywZXhzPersGm0A258UOUwtOqcF1rO7lnrKwTeWbNFVN
dO3BxXBpzGnYWUqDda208CYV9hTWFhfySQdX58qn1Z8QY5G7KniMCVjaGuPPCfToPOOdbAxR9XUp
XbMr0vrZKWxz8nBhGYc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RKZNANfa63/n14iwmSxsB/UeV76BNqjEiYgjlZ2LdFWOArCv6D+jhC4sjGMiaz8GJ8J5kQeiWB0Y
e1+zdHflgzODs6eVC82MlEcfgP0vdDIBn0PP8rVDg5O31eQuJ7n5zn4XJu+vzjpkvJIHKrktAsP4
jg+LRxcTOu0dILImk7Vwgyuwhi8OxNN+jBVbLVxdNj0l5aQMgRZlU/8FVh3u958SH7z/fHnwGaOw
P8QgNv0ZZblWvpxa8TJIwlgVb9354a0eyD9XsKy5VfuUG03nmputxNzUuIUmGtBGCqx+4D4pyCch
j/ixD5iiKRmeKD1/RtGzxmrJap7SAHMuzic1Hw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OQMD0qoDy+4W8+jfTV63GDTwmjWvJILCTofeYJTZqWc2KhrzQXwVMW48dTyIriC6bA4bmXD5BwcB
W2gGbVUvY1Y1+wEFEwYIC0LiPrJO0DhpM1JhP2vkxnTEwaODiEp5x3XqHgsiys0I2/9mE4z4Hlbl
jzftQ/8sVSYokhMp9eaIHk3HNCSBllv90qeBfH3fOdVI2gA1r/22PktttbkyKji24r7jM5o4aMIc
Sp6u0DCnD2cSPCuCuMW3A9sFRuTKbXiLAeeymFIAXHKYQgWXXOqmbKHrk4GviHQyz31C9d+hm6dh
RMtaCyWnhqo3QE/QxP0TsYk3CgkjDCU+KK/ozA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uV1eryjGs1SHbpKIAk5r3BY2SLKX9RlfGw6gbw/UtzBYt4U7vTBIy+x767ojEcmbGLos8kr8vilV
cnNOnsbu7vOAUIe+1PgpaPaCkv2OTPXaE0tfps6+Q6D3zB6j2a2FE1gRIPOniwAdlIn69jL2tuWD
M2BN1efQhi0lZHuKtTgzBOVXIg+zbTiH2k2kHWThOi6WayoBEny+g88wRi6pUBeB6aW3ezFYNmsl
zeOY9xmt+UhRMcr87DCcZdmjsIk6VrsIKF60y93pM0IoQ56iWpQ2OKZK+Ng9qC+pNHBEYEhiMQFb
kUesHtcFOIS7Ok6S9O9SMgf7lMQFOh9w0L31UA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GM2VxmvaiVBg1DsqOLewt6rcWtfH/Gj1QS7fUSMudF5qJ2fn+TXd8kcCwwrxdcXNXjoVi2As5jmL
yw1/NZreemrkS1YCJJDxmnE8CW2q9/4N4a79kApF1VfD5XdpaULhVn+Eb+jXCQFG+GEEOvnPb0Me
bbfRkfc0DAIWgtG2D81EQ28mg7KAWtsDpdUCi+BKdIAj8RXoTiQbFbiBeT7EiRIrz2PQF9nhQBfF
FjlrCNwDP4hRQJQeZcf/1Pl8SFyKGQb6iVF+VhhCVCunL7VBmzaCOW/gowPM7hRM2dvzmxcgeKfs
dZx/fy2rk1iokUi+3B+Jc6CycMWbHu8EfCh7iQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NSZoNMCco4gpYPcg8pb9mtee1JxEWDcDzt6wnS0LeSPMi2upLvQXnSQKMvJGGOKStJOcu1eu7x33
4Xa3ApbjbfZ+lgs1PYlyY4V+B2Lio1EEo1uzZVWFrVFvmknOZwj6Gcmj5N/osaiqKaeIw7NTTbyX
HNHOabVsQJ540qnP4u/nzS/h/AQcm0PFLadGZtHJZEzyQDSSdghD/y/OLprdBcInfQDwAxQuJpCy
ExX4lD2WMrCkymNBS9NMH0vYh4kvpYKRO/oHuGcOZVg0p8vfMmz/BJDHuxTcS3FpLT0WxGVcmUIk
cuqKQFiVwwgnW9AfYkbsMrwfl9po2pofaAY2JC5ZTMyO1qEfSu4fxTRJNnDRvW65KkMdJhZFa36p
82hcDlaYvBowndZfMc42Sxt+ZULFDTFN0HT50iteAG1yEvJ9jKBiJla+kDQJB0VD0kj4+k8aBug3
uPKVykvf1/Uaw8NoW591pML42qlh8v1RzAm6aDnPRdsDaCc5Dq9QDPuE

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oRNld8VrAuP/xHUguZzkh8+wROOItnvw1FQUP5KHjxeh8nudEYH2PGefTPsV73QyEruJanGifjCR
m8XHiIxqAY9fk4CAm+2n67YLFUEHjC1Qri9htrL4W5fnj7OIdzcwttvmGEuGOuYOFA98RcnR0jSL
Nyqq5u/eILCh2MiKiELfsBjRv/WckpboJ+gzO1btduECvdBGjsIcjjHiIzPwNSGxnX3G6zG9OiWq
hXP2Jh0Ril7rGbajit90p+gJpDpuLee/aOh0BUXbYYLU0YIXK8bskgMir7D6cfu5oWDKwYH6/YRR
tFjIhRzFsqwjtmaxUnGTZzxsWGazk+uFfHXl7w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9184)
`pragma protect data_block
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
yxVu9vg4eQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
