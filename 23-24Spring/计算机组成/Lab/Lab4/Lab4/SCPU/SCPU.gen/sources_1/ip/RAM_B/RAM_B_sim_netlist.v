// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Apr 27 19:44:27 2024
// Host        : BAMBOO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/COLab/Lab4/SCPU/SCPU.gen/sources_1/ip/RAM_B/RAM_B_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [3:0]wea;
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
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27552)
`pragma protect data_block
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
huHlPBysQwsnkqdw7LaxHeYSMxX1
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
