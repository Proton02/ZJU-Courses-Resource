// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Mar 19 22:33:20 2024
// Host        : BAMBOO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/COLab/OExp02-IP2SOC/OExp02-IP2SOC.gen/sources_1/ip/RAM_B/RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module RAM_B
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
  RAM_B_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27568)
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
