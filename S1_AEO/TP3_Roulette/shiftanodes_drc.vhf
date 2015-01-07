--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : shiftanodes_drc.vhf
-- /___/   /\     Timestamp : 10/09/2014 07:38:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\12.4\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -sympath C:/Users/Romain/Desktop/ASE/Roulette/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl shiftanodes_drc.vhf -w C:/Users/Romain/Desktop/ASE/Roulette/shiftanodes.sch
--Design Name: shiftanodes
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

entity shiftanodes is
   port ( clk       : in    std_logic; 
          enable190 : in    std_logic; 
          anodes    : out   std_logic_vector (3 downto 0));
end shiftanodes;

architecture BEHAVIORAL of shiftanodes is
   attribute BOX_TYPE   : string ;
   signal anodes_DUMMY : std_logic_vector (3 downto 0);
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
begin
   anodes(3 downto 0) <= anodes_DUMMY(3 downto 0);
   XLXI_1 : FDE
      port map (C=>clk,
                CE=>enable190,
                D=>anodes_DUMMY(3),
                Q=>anodes_DUMMY(0));
   
   XLXI_2 : FDE
   generic map( INIT => '1')
      port map (C=>clk,
                CE=>enable190,
                D=>anodes_DUMMY(0),
                Q=>anodes_DUMMY(1));
   
   XLXI_3 : FDE
   generic map( INIT => '1')
      port map (C=>clk,
                CE=>enable190,
                D=>anodes_DUMMY(1),
                Q=>anodes_DUMMY(2));
   
   XLXI_4 : FDE
   generic map( INIT => '1')
      port map (C=>clk,
                CE=>enable190,
                D=>anodes_DUMMY(2),
                Q=>anodes_DUMMY(3));
   
end BEHAVIORAL;


