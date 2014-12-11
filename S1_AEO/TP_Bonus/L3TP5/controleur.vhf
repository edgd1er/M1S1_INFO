--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : controleur.vhf
-- /___/   /\     Timestamp : 10/06/2014 20:41:46
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP_Bonus/L3TP5/controleur.vhf -w F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP_Bonus/L3TP5/controleur.sch
--Design Name: controleur
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB4CE_HXILINX_controleur -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_controleur is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB4CE_HXILINX_controleur;

architecture Behavioral of CB4CE_HXILINX_controleur is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3 <= COUNT(3);
Q2 <= COUNT(2);
Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity controleur is
   port ( clk     : in    std_logic; 
          travaux : in    std_logic; 
          led     : out   std_logic_vector (7 downto 0));
end controleur;

architecture BEHAVIORAL of controleur is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal cpt     : std_logic_vector (3 downto 0);
   signal XLXN_20 : std_logic;
   signal XLXN_26 : std_logic;
   component CB4CE_HXILINX_controleur
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component fsm
      port ( clk       : in    std_logic; 
             travaux   : in    std_logic; 
             cpt       : in    std_logic_vector (3 downto 0); 
             reset_cpt : out   std_logic; 
             Led       : out   std_logic_vector (7 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
begin
   XLXI_1 : CB4CE_HXILINX_controleur
      port map (C=>clk,
                CE=>XLXN_26,
                CLR=>XLXN_20,
                CEO=>open,
                Q0=>cpt(0),
                Q1=>cpt(1),
                Q2=>cpt(2),
                Q3=>cpt(3),
                TC=>open);
   
   XLXI_2 : fsm
      port map (clk=>clk,
                cpt(3 downto 0)=>cpt(3 downto 0),
                travaux=>travaux,
                Led(7 downto 0)=>led(7 downto 0),
                reset_cpt=>XLXN_20);
   
   XLXI_4 : VCC
      port map (P=>XLXN_26);
   
end BEHAVIORAL;


