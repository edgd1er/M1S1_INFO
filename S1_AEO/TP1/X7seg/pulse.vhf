--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : pulse.vhf
-- /___/   /\     Timestamp : 10/03/2014 11:46:46
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/m1/xuc/Documents/AEO/TP1/X7seg/pulse.vhf -w /home/m1/xuc/Documents/AEO/TP1/pulse.sch
--Design Name: pulse
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity pulse is
   port ( clk  : in    std_logic; 
          E    : in    std_logic; 
          INP  : in    std_logic; 
          outp : out   std_logic);
end pulse;

architecture BEHAVIORAL of pulse is
   attribute BOX_TYPE   : string ;
   signal o1      : std_logic;
   signal q0      : std_logic;
   signal q1      : std_logic;
   signal q2      : std_logic;
   signal q3      : std_logic;
   signal q4      : std_logic;
   signal q5      : std_logic;
   signal XLXN_33 : std_logic;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
begin
   FD_4 : FD
      port map (C=>clk,
                D=>o1,
                Q=>q3);
   
   FD_5 : FD
      port map (C=>clk,
                D=>q3,
                Q=>q4);
   
   FD_6 : FD
      port map (C=>clk,
                D=>q4,
                Q=>q5);
   
   myAND3 : AND3
      port map (I0=>q2,
                I1=>q1,
                I2=>q0,
                O=>o1);
   
   myAND3a : AND3
      port map (I0=>XLXN_33,
                I1=>q4,
                I2=>q3,
                O=>outp);
   
   myINV : INV
      port map (I=>q5,
                O=>XLXN_33);
   
   XLXI_1 : FDE
      port map (C=>clk,
                CE=>E,
                D=>INP,
                Q=>q0);
   
   XLXI_2 : FDE
      port map (C=>clk,
                CE=>E,
                D=>q0,
                Q=>q1);
   
   XLXI_3 : FDE
      port map (C=>clk,
                CE=>E,
                D=>q1,
                Q=>q2);
   
end BEHAVIORAL;


