-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Jun 12 12:52:25 2024
-- Host        : BAMBOO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/COLab/Lab5/Pipeline_CPU/Pipeline_CPU.gen/sources_1/ip/Seg7_Dev_0/Seg7_Dev_0_stub.vhdl
-- Design      : Seg7_Dev_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Seg7_Dev_0 is
  Port ( 
    disp_num : in STD_LOGIC_VECTOR ( 31 downto 0 );
    point : in STD_LOGIC_VECTOR ( 7 downto 0 );
    les : in STD_LOGIC_VECTOR ( 7 downto 0 );
    scan : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    segment : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end Seg7_Dev_0;

architecture stub of Seg7_Dev_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "disp_num[31:0],point[7:0],les[7:0],scan[2:0],AN[7:0],segment[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Seg7_Dev,Vivado 2023.2";
begin
end;
