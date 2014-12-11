--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : shiftled.vhf
-- /___/   /\     Timestamp : 10/16/2014 12:05:12
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP2/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP2/shiftled.vhf -w F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP2/shiftled.sch
--Design Name: shiftled
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

entity shiftled is
   port ( clk : in    std_logic; 
          E   : in    std_logic; 
          Q   : out   std_logic_vector (7 downto 0));
end shiftled;

architecture BEHAVIORAL of shiftled is
   attribute BOX_TYPE   : string ;
   signal Q_DUMMY : std_logic_vector (7 downto 0);
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
begin
   Q(7 downto 0) <= Q_DUMMY(7 downto 0);
   XLXI_9 : FDE
   generic map( INIT => '1')
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(7),
                Q=>Q_DUMMY(0));
   
   XLXI_10 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(0),
                Q=>Q_DUMMY(1));
   
   XLXI_11 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(1),
                Q=>Q_DUMMY(2));
   
   XLXI_12 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(2),
                Q=>Q_DUMMY(3));
   
   XLXI_13 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(3),
                Q=>Q_DUMMY(4));
   
   XLXI_14 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(4),
                Q=>Q_DUMMY(5));
   
   XLXI_15 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(5),
                Q=>Q_DUMMY(6));
   
   XLXI_16 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(6),
                Q=>Q_DUMMY(7));
   
end BEHAVIORAL;


