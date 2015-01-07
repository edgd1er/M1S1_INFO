--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : rdm.vhf
-- /___/   /\     Timestamp : 10/09/2014 07:15:03
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Romain/Desktop/ASE/Roulette/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Romain/Desktop/ASE/Roulette/rdm.vhf -w C:/Users/Romain/Desktop/ASE/Roulette/rdm.sch
--Design Name: rdm
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

entity rdm is
   port ( ce  : in    std_logic; 
          clk : in    std_logic; 
          q   : out   std_logic_vector (3 downto 0));
end rdm;

architecture BEHAVIORAL of rdm is
   attribute BOX_TYPE   : string ;
   signal XLXN_17 : std_logic;
   signal q_DUMMY : std_logic_vector (3 downto 0);
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   q(3 downto 0) <= q_DUMMY(3 downto 0);
   XLXI_1 : FDE
   generic map( INIT => '1')
      port map (C=>clk,
                CE=>ce,
                D=>XLXN_17,
                Q=>q_DUMMY(0));
   
   XLXI_2 : FDE
      port map (C=>clk,
                CE=>ce,
                D=>q_DUMMY(0),
                Q=>q_DUMMY(1));
   
   XLXI_3 : FDE
      port map (C=>clk,
                CE=>ce,
                D=>q_DUMMY(1),
                Q=>q_DUMMY(2));
   
   XLXI_4 : FDE
      port map (C=>clk,
                CE=>ce,
                D=>q_DUMMY(2),
                Q=>q_DUMMY(3));
   
   XLXI_5 : XOR2
      port map (I0=>q_DUMMY(2),
                I1=>q_DUMMY(3),
                O=>XLXN_17);
   
end BEHAVIORAL;


