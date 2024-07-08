// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Jun 12 12:52:43 2024
// Host        : BAMBOO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/RAM_B/RAM_B_sim_netlist.v
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
OUZTErC0E87Gjxbg0mOqfWQaeyPf
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
