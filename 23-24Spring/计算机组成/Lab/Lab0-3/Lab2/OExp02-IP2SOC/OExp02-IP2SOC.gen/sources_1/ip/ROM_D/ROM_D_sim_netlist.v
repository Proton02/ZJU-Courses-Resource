// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Mar 19 22:33:00 2024
// Host        : BAMBOO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/COLab/OExp02-IP2SOC/OExp02-IP2SOC.gen/sources_1/ip/ROM_D/ROM_D_sim_netlist.v
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
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [26:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31:27] = \^spo [31:27];
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24:15] = \^spo [24:15];
  assign spo[14] = \<const0> ;
  assign spo[13] = \^spo [13];
  assign spo[12] = \<const0> ;
  assign spo[11:4] = \^spo [11:4];
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
        .spo(\^spo ),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9648)
`pragma protect data_block
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
c5G0Li2aeLAUnlYp9YUv
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
