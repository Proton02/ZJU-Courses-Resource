// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Jun 12 12:52:43 2024
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27664)
`pragma protect data_block
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
1ryHfXYJFu9VG1hzqc2mxfZvBA==
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
