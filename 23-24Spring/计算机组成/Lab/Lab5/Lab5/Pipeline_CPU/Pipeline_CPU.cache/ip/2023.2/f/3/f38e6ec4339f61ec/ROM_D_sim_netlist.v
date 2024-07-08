// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Jun 14 19:08:15 2024
// Host        : BAMBOO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ROM_D_sim_netlist.v
// Design      : ROM_D
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM_D,dist_mem_gen_v8_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_14 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9232)
`pragma protect data_block
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
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
