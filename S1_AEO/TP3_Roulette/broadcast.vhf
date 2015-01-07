--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : broadcast.vhf
-- /___/   /\     Timestamp : 10/07/2014 17:34:01
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath /home/m1/sommerard/Documents/AEO/Roulette/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl /home/m1/sommerard/Documents/AEO/Roulette/broadcast.vhf -w /home/m1/sommerard/Documents/AEO/Roulette/broadcast.sch
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
   XLXI_12 : BUF
      port map (I=>din,
                O=>dout(0));
   
   XLXI_13 : BUF
      port map (I=>din,
                O=>dout(1));
   
   XLXI_14 : BUF
      port map (I=>din,
                O=>dout(2));
   
   XLXI_15 : BUF
      port map (I=>din,
                O=>dout(3));
   
   XLXI_16 : BUF
      port map (I=>din,
                O=>dout(4));
   
   XLXI_17 : BUF
      port map (I=>din,
                O=>dout(5));
   
   XLXI_18 : BUF
      port map (I=>din,
                O=>dout(6));
   
   XLXI_19 : BUF
      port map (I=>din,
                O=>dout(7));
   
   XLXI_20 : BUF
      port map (I=>din,
                O=>dout(8));
   
   XLXI_21 : BUF
      port map (I=>din,
                O=>dout(9));
   
   XLXI_22 : BUF
      port map (I=>din,
                O=>dout(10));
   
   XLXI_23 : BUF
      port map (I=>din,
                O=>dout(11));
   
   XLXI_24 : BUF
      port map (I=>din,
                O=>dout(12));
   
   XLXI_25 : BUF
      port map (I=>din,
                O=>dout(13));
   
   XLXI_26 : BUF
      port map (I=>din,
                O=>dout(14));
   
   XLXI_27 : BUF
      port map (I=>din,
                O=>dout(15));
   
end BEHAVIORAL;


