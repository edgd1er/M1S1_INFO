--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : broadcast.vhf
-- /___/   /\     Timestamp : 10/16/2014 10:38:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP2/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP2/broadcast.vhf -w F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP2/broadcast.sch
--Design Name: broadcast
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

entity broadcast is
   port ( din  : in    std_logic; 
          dout : out   std_logic_vector (15 downto 0));
end broadcast;

architecture BEHAVIORAL of broadcast is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>din,
                O=>dout(0));
   
   XLXI_2 : BUF
      port map (I=>din,
                O=>dout(1));
   
   XLXI_3 : BUF
      port map (I=>din,
                O=>dout(2));
   
   XLXI_4 : BUF
      port map (I=>din,
                O=>dout(3));
   
   XLXI_5 : BUF
      port map (I=>din,
                O=>dout(4));
   
   XLXI_6 : BUF
      port map (I=>din,
                O=>dout(5));
   
   XLXI_7 : BUF
      port map (I=>din,
                O=>dout(6));
   
   XLXI_8 : BUF
      port map (I=>din,
                O=>dout(7));
   
   XLXI_9 : BUF
      port map (I=>din,
                O=>dout(8));
   
   XLXI_10 : BUF
      port map (I=>din,
                O=>dout(9));
   
   XLXI_11 : BUF
      port map (I=>din,
                O=>dout(10));
   
   XLXI_12 : BUF
      port map (I=>din,
                O=>dout(11));
   
   XLXI_13 : BUF
      port map (I=>din,
                O=>dout(12));
   
   XLXI_14 : BUF
      port map (I=>din,
                O=>dout(13));
   
   XLXI_15 : BUF
      port map (I=>din,
                O=>dout(14));
   
   XLXI_16 : BUF
      port map (I=>din,
                O=>dout(15));
   
end BEHAVIORAL;


