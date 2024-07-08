// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Mar 19 22:33:20 2024
// Host        : BAMBOO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "RAM_B.mem" *) 
  (* C_INIT_FILE_NAME = "RAM_B.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27680)
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
