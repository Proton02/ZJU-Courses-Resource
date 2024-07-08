--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : LampCtrl_drc.vhf
-- /___/   /\     Timestamp : 10/12/2023 04:33:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family kintex7 -flat -suppress -vhdl LampCtrl_drc.vhf -w /root/Xilinx_ISE_DS_Lin_14.7_1015_1/LampCtrl_sch/LampCtrl.sch
--Design Name: LampCtrl
--Device: kintex7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LampCtrl is
   port ( S1 : in    std_logic; 
          S2 : in    std_logic; 
          S3 : in    std_logic; 
          F  : out   std_logic);
end LampCtrl;

architecture BEHAVIORAL of LampCtrl is
   attribute BOX_TYPE   : string ;
   signal XLXN_19 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_35 : std_logic;
   signal XLXN_36 : std_logic;
   signal XLXN_37 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
begin
   XLXI_7 : INV
      port map (I=>S1,
                O=>XLXN_24);
   
   XLXI_8 : INV
      port map (I=>S2,
                O=>XLXN_22);
   
   XLXI_10 : INV
      port map (I=>S3,
                O=>XLXN_19);
   
   XLXI_14 : AND3
      port map (I0=>XLXN_19,
                I1=>XLXN_22,
                I2=>S1,
                O=>XLXN_30);
   
   XLXI_17 : AND3
      port map (I0=>XLXN_19,
                I1=>S2,
                I2=>XLXN_24,
                O=>XLXN_35);
   
   XLXI_18 : AND3
      port map (I0=>S3,
                I1=>XLXN_22,
                I2=>XLXN_24,
                O=>XLXN_36);
   
   XLXI_19 : AND3
      port map (I0=>S3,
                I1=>S2,
                I2=>S1,
                O=>XLXN_37);
   
   XLXI_20 : OR4
      port map (I0=>XLXN_37,
                I1=>XLXN_36,
                I2=>XLXN_35,
                I3=>XLXN_30,
                O=>F);
   
end BEHAVIORAL;


