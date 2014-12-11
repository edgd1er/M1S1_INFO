--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : RDM.vhf
-- /___/   /\     Timestamp : 10/03/2014 11:01:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/m1/xuc/Documents/AEO/TP1/X7seg/RDM.vhf -w /home/m1/xuc/Documents/AEO/TP1/RDM.sch
--Design Name: RDM
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

entity RDM is
   port ( CE  : in    std_logic; 
          clk : in    std_logic; 
          Q   : out   std_logic_vector (3 downto 0));
end RDM;

architecture BEHAVIORAL of RDM is
   attribute BOX_TYPE   : string ;
   signal XLXN_2  : std_logic;
   signal Q_DUMMY : std_logic_vector (3 downto 0);
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
   Q(3 downto 0) <= Q_DUMMY(3 downto 0);
   FDE_1 : FDE
   generic map( INIT => '1')
      port map (C=>clk,
                CE=>CE,
                D=>XLXN_2,
                Q=>Q_DUMMY(0));
   
   FDE_2 : FDE
      port map (C=>clk,
                CE=>CE,
                D=>Q_DUMMY(0),
                Q=>Q_DUMMY(1));
   
   FDE_3 : FDE
      port map (C=>clk,
                CE=>CE,
                D=>Q_DUMMY(1),
                Q=>Q_DUMMY(2));
   
   FDE_4 : FDE
      port map (C=>clk,
                CE=>CE,
                D=>Q_DUMMY(2),
                Q=>Q_DUMMY(3));
   
   myXOR2 : XOR2
      port map (I0=>Q_DUMMY(3),
                I1=>Q_DUMMY(2),
                O=>XLXN_2);
   
end BEHAVIORAL;


