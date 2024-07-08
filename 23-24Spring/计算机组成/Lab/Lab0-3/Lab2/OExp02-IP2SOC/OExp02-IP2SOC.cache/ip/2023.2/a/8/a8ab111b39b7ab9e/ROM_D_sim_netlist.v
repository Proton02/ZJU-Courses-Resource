// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Mar 19 22:32:59 2024
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9712)
`pragma protect data_block
H4vtNi1/SSR+g0Txac1I25D4FiTIwrlLaxFnHJqr9HTl2bVs6RSpgtcDrUPgHlwy2HHunDB5UXEU
/pBv1fwJBv+Ep/0FOkk9gdnxws8chVyu8Od3frAa3HhJKr2nqrxrrsv6xzMdKqmUJKAnNs2z5BXl
Mt7eP1PK4c8bPwXj46IPTFLgaLyxHfL/WG6QndFTD/ja+/+pOovIhPaNOBDJ5m7ExdOB+hqJlL11
qyi2tvbWJxMS5XyCz3j47xLHvjnS1hCdR5qpcNvp2Oc1ibn+gQObvRoi9VYTkV4rUHNOknzfQd60
CVbZ9R+YOK+33neQxBC+AdG6l3NNL2LRc6qJMcRUdoDxF5DQ7cNy4afFt9+MMLUoDcYMVtPplZfb
a12lw9uLbMdZqSMGfA6zmAy2/1OP3/4AIyBjlkMwKePYXlWwKp3Qt1exuTVFI/JhG7CKbw/FSSWx
1Wgq3wYLM2m+U5QgpU1fJT+HMDxy8gM/rMHFYfmoApl8LUBa105vMvpTmmgOZwf42iS8hYrO+q0X
PjqmGf4ZmwIIyHxwanuEYDdDIWdZhGtug/+8dApa32jAtnKFXNqUdMpQbqAbDpWbATo5IVGHNjr3
7V3D5TcH4A9v+NU7BzBUjgSEvnId4g9rk4jFK2ksbQSnGm/15lwGQ/qymQQZXtRbhrzrdT4hxcNW
WkCmUJpuWpqu2dmQGmEh/Wji2yJI7Z9TCruCIgrHCSNcWnZH0hdfbdqVznJMipa0gxxRpOTTkbgT
KaX6N5qBbENsYoOkuR+TlX+GMkw4CXXN/XgK8qkQyVRz9E2/TjtimZqG8F0cXFxQd2BAQ/dvy01r
Xzh4yds8TWZu3UPuXDJgKZA7HbL/v2t1bjfPGx+Hj+xpa8WCqKoVyysZsbRhcqDSVwrj2CoRFEpE
rbD9pgnmTxboh327AoeM9rGlkq3iKLSIgkgNDtF6yk7s0JXrIlJLvXC4qkkRcrGMSrC6Zmm8dLA9
E1umjvM/ZQ31QmmMK8GwwcT54LBEj80avNiJSYc5Ivpg67Jp1LEkfD5mqV2Op63UdIAT3GVyf5N9
UptXmcfQPUYXKZ4ppvmWlWwUKoEyeWQK/sR+HTgoQRPXHAcqMHPUcdjAoUL3fYBh7NwLcv1MeYk+
ZrEkKStBSQTQCvH0TZlwrxLdxGjHSLvq1ZDzD5X1dXogR/LP9SGXvHlj4syvr869BMmjsjoahz82
J5fXzv72Mny5bp/dNX94k6CF7BSHKrcLuh0qlG/ju4RxKRH9x2bfTi1YVYo7JT3IXQlJaeTFA1cg
NULITOi5XaPCNUIq0pAgGXi2b/jVIh6+GPDh/Lwm/iY0xdhhxLuUC8YMyPR4/HHod3092TpYq/6P
y/gdBpM9T8gSTtejSuZsvz6ePC/klF6LotdUFxpWO04SegAua4RpE3tSd/SBmm6vYjIaxcH3OUC4
qbHRTXVd4sx/9OudZtA1O7rTL4byGweInXIAigZ1r+O/OOEwwmR+bIMxPOmuBs6G9aU9R7bpk/9j
Z2fXAfDtWZojuhmzT7FSjmmoLqN1HEDLvGWWZYrh0KWUKO+chrphme/gmjFsT0MeEITWMhDJiz6z
yf/A9BrEAedK/GTGB6myxvrCU/JacCzqlDgOB1taZHOkl+vjvmn5fyuKiHKcFo5ZUSusk/NaMof2
474Ok/A2jMZNGhu7cQ269HiIXplsP8POm+MEWehkF5teFj30RlEG0m5B1gqo3BWdc6qvd5/jloBe
IOoUzxJ35MqVAN6d/BN3Jn9RwxKCeTEqMnsQRtqx3UzdfdqUjq5xmftRq5HbagKBrnmK0QMhXlbx
JgLYW/7tchMJMwF7V0Uad+WviJ3mpTlpBRyaBPDdN6R4KYhY7hm/7TAHerV4EGVF14sKx/wnUttI
JDCKKWNB0gFzmVRRW7obNdZ8lIGn+dhuWFuQ6EjNXZIrXINRpSvznjfu31f5iCicQRVOY/c09TIF
2LrjzA4FeC5VaD9Bt7FJJwH/5jjmm8v0UwopaRURw9Eu5DRpvbBdi5wmrOp7BcQAOM1WpZwTs2ho
Rlp5OEaG74rByqi2ny/Wiav36jm43AWfeIu8ERsJSMH7DoQf74CuC8iziEk8vxGTraYse9W3sOs+
z6dmmB0kPvoUjlTd2yCRBgQw6uDp5hUdKPLF32PWAhg/nP/9f/qyw+ddHT3gHxsbIW3CjOnZ236R
u1Rg8W9USMbqibHoKA6qzrK5G4j5lo33ROpdL5UZ/+mevg1Rh9OVkChaH1pFJg0Bxp3ZYDGYiQ3Q
cDQ+mPEqTsY2EgPOaEAYQMwovmqCg7djLwIAZUAzwuBAnTHz1ep/jJQCJnfCAfW40IYtxl9tU+RI
A9cmLZqxAUgt55s3ZJClcpFvWjfSfT4ghgT/whuH1FHfbFzzPFKS9TcWeHotaXCArivvdSWP/Biu
4v70oK2d8afImAzlhznuaC/Xrn+vkQ5SI3hR53gidJDTFtng3JPDAn3QQMF4+si4BceHd4oOKIGH
zvBvP5LHR1d3mAsU/qFIzCvHvQ1etI+XuMzkdN0oyrnYfl9F8nX+1mitO7Mi04nDVaZ+Z75zVyKT
ubp5DrvMQyA4f45YXDpIqQGE01TxqSZajZrSRMIOSxQctSAN8Aeeb5Vs75COrh0BEQQKRvmdQejo
UHLb79nAdJnx3Wlg4IEik1dlTqOkodvULozpTHAHfwBaqSCGe1+DIHNPbQKxVobDRPvDMqXqXeHG
5FhHzBujE2iYLJOxZx/D/ZhtJSPbMoqZ7ZTYbLFFsx6XUfn4EzT/do6/rVcYSVu/GBMAogcYpNmr
d0hNEdCTOtSyJmYNeFQR1xjf3GI++/G7KDqVA9Fz2GRgb211sw/xgUT7PcXPvxlYkKrybMbl4mBG
5wLI+Ga0KVo0Eer0YgtL4A+zZQsISUEd1L4jdWq2MmRYZG00EXTW1G+DdSVL7aVg2NAsiCOCJRIb
SOS+iLGu7VHyIJHF0Ou0FpbliaODGrYWoyK8Qg8aSjCYiJm1LOB4mWs5BkqQHeoWr9soK7Vai2uH
OtyVz3usOXB147gnvOePeSAuYWiEgFt0P46yv+rZqjhsHFF3vWIhGlqwBUUz18snd8BT5hHLWGkd
wfiUvcOiMpOC6gT+MhJ/RY2dvObpKviZQ7KDiFQibEG3N7ZgY7WOE9xEKz5oOGg1YAV+zIinIUwd
dKM2bmN/WSK5FZbJAGETmTQ2EJZo/HtItUWJonA59pATAtaqdB9iTi7MvCuqIHsFBzwPHl+0uwey
xx73jtrM4w1VaJrloB8wsMjsyWgmyq8D4wRjpZkxbeuYShYzq1HqxsCM3GqpYax1GnO5KzxrlWYG
bqdeNHohDnJjJ0eDaQQ2oDeT3ioQMvFvZ6rZmooL4eqXxn9WdIOSxmm8zAuhnzHIIofTOBucx42+
mvjmUAxNd4LaBpP7TNGG8mBBPv1yUXIQr6V0MG8Z3jGhczl+XX5DgzB8LLUj2ch6Ubj+dVSNcdVy
yhQH1nbKoRk2XS8PTqTEz3VqII4vPG/U0dBdR5yp7tz9ONLGAmQ8Rzki8Gr7ivmjojJwqmHBKpn/
oztHCQ07oW/1NXViBrdLqFwUiTgoj0owFZWREKlOhv4a+GCIzP0TlJ1HC+xPzudeQ/afhVjXi7Ie
tLx+rB6jTL7iAPwwMjwOYjZ/YJkp/PAarJ4TXO4apkhbXR9bi0EMyp/lyjb7uyJswmVGbRQ5llHs
wGu41BjbMEZGva35J/yn0EC5mxhW82RJNQ1KTNGtReEXtk7AFvPNXVcNtEUHNsrQAAuWD38Sdar/
SnHQFrRNGAbsjUkgi0+TietSs8smZu1GipQzjpfjy/6+/8wOfzE/w0WZz36siMpd61OyQDOn8tgj
e8UGRuaSymRjmcqR906ZnPWPNRqwweWpIcn3VtjokDhnA8yXhdZ4S91ifubT23WFtUO51SBKSEVp
k4hyHglCdsh+OvE1v2PIF8ncgM5sH3UZZRNoV3kyxBY9m3AwSSkM1TwzJbSUsd9/b13KpHF4BCgg
HdwYpZiffovI3ThSKpRwIEcL8fcutVKvfLLG9D0ezi2RI31aaT4bcoCxpsR01G5AfvF97VyaOCup
ryQ8INZenU9PIS4UFkRHlGI1PB2OCsccE8TYAWll2WwRjmIJwS2nV+28FJy89TcY/zxpZNjko7xw
koXPTMjMOBeoRCNtd4pu5cFDvo0+q48nqqxhxw5tjifuly1VLHHB0og5fBISGX6gf1jRjEXpW3o8
FhmcFXMSohYGUJ1i8PXHcpCfupCLSKYmoMrzrqOoMKLG5e6ZiRib9oMpu25moMIArsEYzWZ/GTG4
EvFmAvMrkmF2VCA9MXLacxBzBNCGyd55b1i5rQc46fs9mxoPhseBYN1y/Jd6Alh5cB2YbV84RYhe
v6bhLfpg+bM35MoH95jSnre049dKuwKtFiF0B/J3yOwX8ig5zuhMVNWuIrTl40x8RdIo2J2CD3G6
tq/7ghCLruLMlOSt6MB0pbXz599NYULLXllczxVrq4F/39rBlwTkjwEkKYxa1LPqRDJyaInQl8U5
5svY2FRu5JZfR2RtbMcuEuxQtYkkZnMeDBi6i60AX6bnAlB7eeky7GWg0A/GmLbTMSlNTSmZJkuB
w7J0yMZfDTckO4m/ShVFLiWNaQ7Vqmi2hDkPTTFPudL+C2Rd/NVfgngOonh7JG9Xski7h1mjtr/L
s3RCGR/B377nONpiEqZJYJ1wsUVYMkEKiw3WLvKT9DMeyY1ooCalBi5yAC02kCUq88ktL8SoT3r2
ZxMPo3lnVoXaGruLdd97qUvQggwtMrPI1VENoVMJqD6zH2XSrrFyFgufmlpBu3UwOjAm71BbcIFY
NCfHVl9jMcasHiybTmlqwJ8XOX7Wu3tXAYIo4g0+HIKa3MEM/lKjtvU0ei18BUPtcAtvpSsbhY+d
Ae7NgVWhN8HX79avHgvhc8J7hKNoqCOYhbYCiaoxsI2erZPv9E3ZyiLmfNGNKxGctfXo+ZB3KpNc
NtNPl3QPR4QiM9Ru+7zkiZTRIH7Ip414dOd8x+hi/7BGd3lcYrJ4PZvDfk0zRNVmYFOkEaH2HLZJ
hDBJSb4vCM1cx3XZxKE/4bUAmNxy7OboCbRcEzrBN5vS8HUvbZLnyDoBLk6fsVUPaiLv5JMLJCEs
YD7rLe1Ejm/iCB8kCoYyV/UCndaFkvg2ZE+wYxmiM+mnC7NONXXlB70+6Yrb8b9pGnSbXB6n8grf
/hOmGc4o+cwhDoofjQoLKajsT6iHko0XzhUJzhiyB1poRPUdSS4L5I9BJx4KijZkRfveCkCroZFP
jWOOJPyjMDz6XlixTwRSXNFVisEOStNEy4tmelQY1le345YE8xCHPYUzi/DCZmlFg7UKsiAFyvy6
x/dzWapijXswmr89glX6dJvif7lJVqMtVdqHnZZqN5SJDW7orroBQM22AeinAGldlAIWWsR7Idz7
bk0zR9JD1RdSr+ScK6tTsBjACgNEu5p6BSB1i8v5U51k8clHnzW1OuYq5woRams2njF0VqP+9vPk
kOAebcSWl6xD6oLLmm3fdY/Cqt0uOI6twe1JTqulm1TPdGoqgrKRtf28fsAJCKBaKc8ptHOZMiSa
IXwuKtEmaxVmpNy9JW2l2SNhfFimNqcT84mGBVP3tPodUY808dfa9KgC9NKLI/QCCMmAOWnn8Nb8
bYB6osY0U2GaXcXg63Jd9jtHvQ1XIwYQADhVIkr0cAPFQmMOouQbPcTjzHvlnkyldHaYfgDuy6W9
rS/7HF/cqtSK4kRlOZEszC4ahj0NXzbQM9ImBpTWeAvp7r4D12szwFY9sdApyPTec4YDSMZKwXqE
SD3CVmtuwuda5esLZ1ptJUPTQswmmQhrTzC+bktVyrRSJs6bUsNpAZfaa0GplhO4VnUxDQqo8yQz
hMio7mm/0rCwBt976JhUdJ/vFl8BECLXYWUsZ1z/I1/ntflA6p4vYZOkoX3uk23WXeSpb2kYfx1Y
V5rjPUhPmElI2qa9VP/N1T32vjdoDjKJVrqM9QkqptL/FN0oQfu5XSoFAIqqd1NAbM4VDEE114qd
ZIBsn1pcUNMr0wOXdv1VAd1r5VztxYhsYR4Lx5XF0FWsrX0T2HXJx+zpj58tywz0cWnX+dgYy4Ef
ZeKFIodfFyEaQgCXhjgS/88VkfSMZHzYTo8p3X2yhLQGTuqrQva0mIKOengvH2W/utXSf2NFJLwP
B6S4Ri2OOHv44itQZ1jR+0CEOmUAPrPhAfKc3MAdnjX2diLnwff6Spa6nsBmJyHbkxZvxpm51MgQ
hqK3ETENwCe5/FiMj5cqzdKk5UmGeKGWl6OiY3SZuqWJt1OtbPZMtc2aZGBF8HI6EsMl2w6Moq4g
ko2deo9RYvPKYQNB6V+tjwIXegykQqbs2ceJC6yWHnN4jknQQ7MrEyv+uJMd34Q1nggT7N6eQ/0J
mSYDcZyv+KBptz3GFM5UO02aytEjslcbhjHhWsUNyR4aQEJ7E/NCaQet4OaffFjMY72kRHUJ+nrn
m/OqakMnQ5zthubSdoB4kiAu4DHgzB6L+erxUjz9cslNN1P4c0DOSDbmQzUOESwEVA0d1JKgHkwn
ZMmfGm0HRr16NKXPyd5ruthE/eYNlHwIFB2IwMrH5qHsmWDrrjwnb7urZzJr3uhJulq58sLMPuUN
qOKRgp/n9zTkmBMXVam75//Grkl0jLphKmKIxyVqaVB4SKs5LsiQzkG9rLiOOO/GQ0mchwSug+xX
Sm9E4jj+yPGzSkTXLm/cA6qmAiS19uBt8cI68hjqy/boKGv1fQn4AE5uwYCpiIp6ZdpmLyvePKzA
Q50lcz29aUf3aIqGKXbhy3F5IKmZsfWgg28Rx2yvoP4aX7ZQ+KW067KvJBREASL9JJhflsXCv8iV
R5jpUHGprAcTA9e9jWW4paQ6CwPbR0nVzAbdBgcaZtcJA38gYId7u25qjDYF/4iFbX++Hkmv8Omz
ZtTciukrIgdDzqDrkbj2iw9wRsNkEKuFdR0SOpnsrDML6mwnOyi6PPZ5uQdbPNwGhmjWo+5X51St
hQ3wJucNmOLZPjwoNveFr135IfPkp7mvoJ/zGXrzeHV7BeyWG++T7oW9bo5gktVwjWq7OgGPqkAH
wP86fDqhX3+fBoP8Ef8speR40x5HD0hTqj03jVmCdihS+BcVED3I8hLdoMJXaGUn3MbrB8rwA9ln
MbLWtDzinjU+s1PMF1YG38gZFYx9fcDXUfQOgTlSJwrKXqCk0LPZz6CGPrs+HTvEvnEhotxXJfYY
Om3aE1DfMl4EjBa+Owj6HoD8ELFHqZdx35TabGc3z0NDHCTPD05M8SQ4d85qkATpGorEQLRbotWT
xc7BlT/LRsLP/83n3UdrMS6yaaCcPcvAqIzAL+0MFPRP8Vy8O8CUrCeUddEto4QV9WTZ+KikxqiT
6W1+WY6ds/6Gb2kk2mgLXBcLm+I6j4WiQKxRxoazFKeTwdhxWntMS+wLe0PI0fDsfOgKNKeeNFW4
RHLL9xsuQ28Tidc5KYeavpzygJ3cbktakmqRWRvqTcgr19XpBufkJ76IDqMw7RHNJF4WEfNGgVEe
got8lNQsFZgzScBlbrdxHYRiEv/15UM6uwyrPmRjiuIUUChWwchiQT3M16xqbQK6vax6FKmug6X6
rTjH0t+ZHQC4OmizLReojNUk492jGL0Bd/x3HjyYbGSKqGAr5E7bLL+TrjFCsB9/JI+POihTzeLZ
ersd4oi62R9JU6Q6EVUve+x7H0KRI0vw3SpoL3+a/3lVoDCBfZkgGg9UbYJIPYqKw7gG1RLhUNj6
wlWUKEWDKQSb8Tk4Aoz1wHKo3HnWmsRU0mTx7ernT/Qsvh7QGsex7PG/I8PvNT8/V3uY7QQCsDku
AuNML6T57kqCWJd8ayt/ns/qjcxvD7oGwkIge9vxc8RCUT4IvDr7rnI53ZcDjHHzIpInD3smjm0R
lpKyKZElgjwrIqlrucyZIx7+iBE/IuxwPE6WenqGmsH9BHnHYTQvSdzdaMsmzB9lDUAjLQEHbgLZ
RhOtz/B+nkaQ2afSzOrxIxD0kiZr7UF83YGT6TcYUxUKGZ0T5yFEc8y0td9zF3XGTlpjStQ1yM9f
vZKPVHQCiZ/1d15Fqp1ET9cECDhifBH6wrOHA7BLCUxqkdI8I5XclHDZfTI3ZUYYlIT6o+JASu6K
16fkBzkXKckJF3RL6bErlAxxHB4YLqprTqAr7pyd72D7+guOWBZiCf+4Oy0zkbhBMGdsXJ3Ke3AJ
kJRwGM80Vv28dMhz9Anpj9JazniY6d2d0srcPdEjdQ0RB0PTS0ArUKcJpQJcn3zB7ISf04E5Un7Y
ODi7mMzyUh2dYkD4/o6HM7R9nKrZ8S532oz5LQ13oTMn6a9Vi4CWm26Hu+WnjQzI/SIwPWMoiHU3
2kKWmhXommHTiy7o3KHSKOElf+b5GrKvBgvVdogc2+BWX4P8ly4LVTAKouxPf/oc+Kf9AgWHBYjH
6cx5H6RFNozHivc0VzE8uURmZoITovh9sNojG0Naexg3EA7YOoQNpYgMKhnk0RrkK/HW0Pj50POv
aOYIkEBmqE06esGC8nPOkwBW6m+MKIZJSKBhVpFRR9dKW+3VfKTVY0W0dA4J3eftzeeY8DpzY+Sv
sKrEEWx3JTeURBErj94AvF9XlflVQFIg3qE3Xi0BPjImsApPwvSoDjb2Ll9NoVnR2XVR/rVelX/V
5ofdLuK+I7os4BIXPn9H3QpcjeCp2H5jY7jjnjGt+b2wQQPx/jjecr06PBpgYULbPuvQTZkY4bXL
CdolynOjTQIEEi2oG3hUQJsJc0q+/01iwmr3gF3FeaG+HXFA8tdFEcEMIDLq75tvs+VZb5wi4Us9
emi46xOoK5gAXwkwrtvB+TZ3AS3Noe0n+4a82xk60heog5k64Oaqq62aKissyhI9pR1Jr62HvMBa
X6wrw3oWSCKz52c+0G8QWFavI+2xoM6+lnRl6PzWZa+1I5aL4dniByZ4ZJigd8V2mmmnGudXZyM2
WOHkJOfCI/o94GA7PVHslHWKq7DDnCGG/8xGvkJmE/3ogjsGUWcPLcIXtoDQ4vTYiYUAXSZtAzrz
YYpxhe0uhGDKXAv7V85rZsiLgH46diEyzqGkg3otj0aN+UqTExauaV2H7y++6JtxGg6+cvHiu1V0
n4EeeQnDclr/qMzY2KnZv3bxFXvvaawP/ALNDZAjSfEttnalThOmrtwHHyuq1h+AMAD5WVt+IJnL
tw/Bcwjj6SSdh6EDRayKbaunzvYzn+Lcz7SOg7au2/+Blu38ZKg7XIGX/ffB3poxM4IP+N00+s64
ulkN/WE3xZ+ZSOIZLY9wU0XG4ddNrviAIQGar1v0ihlLRmoqOn8niIJq6WkXRkAEROo2CO1ufjb7
FyfvXUP6Wtcp/S5EyIrE/dUy+KJu4RpeXL2bRIZVLC77Vxo5Uve2eLnYNpHNzgnt9Yju2zx4QxyU
etUNwCs+bqN2NpZS3gfWLPaNFPzkdBJGzKQiuKsPcABLcIk90OE3UtuWjmt8jSVHUbmetHGWZm0l
2xNdWG5rC3QWYCH3C9b4gKaqPfL4ZPucHjsRdmXEmzS0vSgShwHObD4ner6rdjNRZn1VHpEMUPus
g6aDqBMWtDNMYcH6jsadIkRWhpyeGipJvMbAJCSJMoUzc+t3UqcrGaMucN+aInyOIbw+vITjlJ3G
dBdH+mBZczurOfVbY2fIRcBCBmeRQ49QwtN0895TIpPGKdr/jamxnXJtZ4qn66U1ozZyXgawOgHm
KaFwpikI4EGwbcl9VX7+NNeDCkyfSJuOEWqMbemV3aXi7MUku3Dh7584kdhMXE26IAHM4rOkZ52K
maG1stHBO3jqP0FzcLvnJjNMMVfPxKhRULz4Zm66TdC+w/CiuaKUvn83Ki90J6wz3oroe9gXclib
2yVypxtWeEjiwjYU5VPcbJM1Zi8Z+a9LO8SdHI4hIZ1d82MsChuB5eqP9Lh+sx/vq42Es0xBv2mZ
kGm71Emt+Y0r15KXNnB6fUqRxU34OfYP4OKiPKNKcnbNm7osnfpPv7hVDFOQKpGHYK41dtHFDiTj
99wWee+7y88cFiKnfESS3J+cxRRuz6GAlKbrawGBV0dS30OEWRg7WqVvd3OzkNi/qW+NHVgMU6K+
XWJ42qos7uHIKVdpvrdAwqX5QO/ZhoSM5vrwYIVMA5WLX0QrXsWta+Y8n8FwaYCLEdexBHDb+lX2
mQCnAycfTtaaj+nCtmr0sVUfYz3KngKlpNSR7wOKDyLwwYWjmXQGO1v+c3gBO/VKsWdqDyf2j3dY
yqYrxo/vdtahURANARv6v5V29rYheloFag1DKL1NP20DDnCnPRS1JHp4KXJeG0BsB+SLOfn3ktKL
knrTyQfHkqxOKDEc3nrzCvabeBeFpKmlyElVN9T2vzmIufKErE1U3D1aG1dki+UYRFW1xWvevwVB
NO2VV0+/25tptVzC1J48aR7anWgNZZUhwqQG1qjlg0ucv6tE6Y/+yWp0wLFINWOqd4WHnOStyHTz
a7D+EKkvW85WPqTy0r1vhwx+ERiS4kUhp98Til9L78wUQvIIcApjpQGlBOVBC7qwSoKa/kKCfbXK
3xJAFb67mEHlsbc63r/xHzRpee/RZq7Fb+bBvN5GM2VPZR3ydV9d9gRy5q9jMSzjoDeTMrrLy1Fd
cs3HvcPMjZIr+N3HaiAFZnviuJH/elvX+2/9FoYKu+yyChD27S1mPXzGMbW1iXCSqoCLcsJlYfVQ
WPikeFgpugcwnH/O+d9RhXVCmbXZ0UABCla0avjTjFCYC+JK0A/ITjk5b8MRzMjjEH1k9AqSQ42H
5SEzXqc5NnFUnwb4B75l5aXYSQ0AdVeWhl6/QKxxl5zlEctAJ5ZjyzAaWM63o5EaihAEB3d7R3lL
PxPIEk10A0R4eETxrWFYJscJtl0x19/HAWlnL6DnEFw9W3tbGkzg0sOcDWIPM2GUFFw8ri4F1JIV
6B/83MtG6s4SbqixE4VLMEK2humm6bt/mc/eXogyiYRGyupvlJbH4MPuq6tRAW07z5v6mXDxHg+N
wZvrmPynMFqGqcusAQ1Q5lXsyi5E/LIw8jqVPgjdqRZAorcnfphqVZ5sn7FYck6rcqkJiIz5nMPU
2bi6y9qMsbNfjRxIRFweECZQTXJs3qwwqMu0GxuRqjQS+oUWi6lDYuCB+Ix/iCYcmtVG4UMKfVOf
LZcW3dB2GIW/qiVHb1rpkUdIatsYD9l33s2NIZ1WKA8QdqIPoVtcJXZMhm3yq7ftEdpKpfh9439V
SOIhZWxHEcXzy8OIbAJfaaZOySBToJ3GgkS0ud62hnDYfkf+8muxcnfbTjZDdjjspqrkJuC2NyO3
XhJjhI9+jtr/cwG4jyZk5xsyVTpSO8ik3b1NOrQwit/hfZbo1hqsajOZO+oBB9hb+gGeMw8J9y7+
onYC+09MRBBW68q3WL4OjKqj5cSYOe2Dn175w8M+uhgm+xkjE/t+Wnm7/2250JP0i5TtiN6LzcDp
C7aoptc4wXrZbyHiAXAjB6nzotHkia57phSay9OW4LR079INBaxzARHUlh07TnfTU7SaAENOps09
XmruHConOIYcr/VtComrhX2s7Ak8HJHkEMax69oD3nXUt71SliuqON3w2l6PFUTzrcoibE6QNnxb
AIjVdWD7AXqBQk//qXLUbXPJC9zIoOqxYVqYa0HQJlf+VbGiJn/tbw7Q+GFGGL0YWY+h+daNymUp
s3yt4aL1yEN8f8AvlTWo9VUIV/dwGQYLw9YPZdVqaxsp078YImWZ8nKBK3xI/f1J69xNTWbMLyY2
guQ+G5QYG3MetSzdx/9rhDih/LPz0F9W19U5xM9aV11VuBoLX2zrQxDs04u7+NeGcUNGoUQnEHAK
hVvTQV6rIIbantcNTasIHipGpd525LDZDFbQDxHxB3acF5U7BowHmhyA90hZWu1icIVe7juaWgLh
yC3C2YmO5LqN/lYQPcVmxNPe+LPj6nwnhM2OQzVQvOhvOMaoqbKzhGJll6JgRABn8ANqFYnea6Ib
q0oK5b73GBoY23DYqghFMpnaK3FryQryeklLXdcYrCa5Cf071OoX1iBehoflCNILRvPqHnkL8Xya
r4hhVmNonvPpGdBDh1cD69H0RYlOaZteizYoAbpy/lfVQMZpd/Q+0cLACEF/VEh9kdsMH01YQ+Kx
z5dG6jZOaqftDiVwAXL8F791/NmOCxe5PxgtOJBybgGYqxowZLKpjwkQc4iOavLqwD8jcjoTfBrl
WYfkn0Y9mUXXdjH9u/1ka+bgVyg+C493zE2otNvYZdFnMzXjuhFGFp+Kwq2BTTEY9+ciAD0vd+mV
ha2xTbnD1WF3C4QirieWWStpKLSoxye7t2yZQiBLIbeaGoRYgm9EfvZ+WAcTivuH+PVGSgAR2ogt
egeTIUfQuAENXAlMbWJ591a+0rAAW1xE8Pp2XlQgq+HlGuxiKdiBw8lsgTa37ZAJwLbv0B4H8z54
gMHo2IW8R+7Ua+752/AFCVlC7+hbNZfsPl50YWpT2ep0e42Dwg1TTxo9rhimPPhfJmLHBo0X189u
ipKdyw6jzWd3N1AZZX0PWHz6KWBJOVg0E8pUqzQlo/dJ+5l2v9MObVArA5VxQ18uTZCqKs8k+Fbv
v9FbQqzU9cRe8vrGe/FzgXyIo1J5VhbVdgivQPqMgCY3qY6ylxs5ap5r4KbBvdAqjsSyMISmNOho
CYuMAHqkIpcOHdzOBEZw4FFwn2G8JgPScQTqPstmvRFPTTFbH6trfgX4dHHoWM2WTBc3t6O+Sn9A
EXjKqkbq/kcd4lt9jTb09AlmNTkEZD9ZpvXJrPEvjLZ13D0fTyqglOsBqCs8sYmUrFnCQsE/oNpU
DcfjOLFQ0tIhCFtY8CkItxJnwDtd9w==
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
