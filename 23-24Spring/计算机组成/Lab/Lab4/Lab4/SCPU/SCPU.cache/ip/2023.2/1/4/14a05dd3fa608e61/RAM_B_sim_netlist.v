// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Apr 27 19:44:27 2024
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
isYMrF0a3p0GnYdIfsww27L+Aw==
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
