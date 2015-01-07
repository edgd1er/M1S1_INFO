--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : enable190.vhf
-- /___/   /\     Timestamp : 10/17/2014 11:26:20
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/m1/dubiez/Documents/AEO_TP/roulette_vhdl/enable190.vhf -w /home/m1/dubiez/Documents/AEO_TP/roulette_vhdl/enable190.sch
--Design Name: enable190
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB4CE_HXILINX_enable190 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_enable190 is
  
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
end CB4CE_HXILINX_enable190;

architecture Behavioral of CB4CE_HXILINX_enable190 is

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

TC   <=  '0' when (CLR = '1') else
         '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3 <= COUNT(3);
Q2 <= COUNT(2);
Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;

----- CELL CB16CE_HXILINX_enable190 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_enable190 is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_enable190;

architecture Behavioral of CB16CE_HXILINX_enable190 is

  signal COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '1');
  
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

TC  <=  '0' when (CLR = '1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q   <= COUNT;

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity enable190 is
   port ( clk       : in    std_logic; 
          enable190 : out   std_logic);
end enable190;

architecture BEHAVIORAL of enable190 is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal clk190                : std_logic;
   signal XLXN_1                : std_logic;
   signal XLXN_3                : std_logic;
   signal XLXN_7                : std_logic;
   signal XLXN_8                : std_logic;
   signal XLXN_9                : std_logic;
   signal XLXI_2_CLR_openSignal : std_logic;
   signal XLXI_3_CLR_openSignal : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component CB16CE_HXILINX_enable190
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component CB4CE_HXILINX_enable190
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
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_11";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_12";
begin
   XLXI_1 : VCC
      port map (P=>XLXN_1);
   
   XLXI_2 : CB16CE_HXILINX_enable190
      port map (C=>clk,
                CE=>XLXN_1,
                CLR=>XLXI_2_CLR_openSignal,
                CEO=>XLXN_3,
                Q=>open,
                TC=>open);
   
   XLXI_3 : CB4CE_HXILINX_enable190
      port map (C=>clk,
                CE=>XLXN_3,
                CLR=>XLXI_3_CLR_openSignal,
                CEO=>open,
                Q0=>open,
                Q1=>open,
                Q2=>clk190,
                Q3=>open,
                TC=>open);
   
   XLXI_4 : FD
      port map (C=>clk,
                D=>clk190,
                Q=>XLXN_7);
   
   XLXI_5 : FD
      port map (C=>clk,
                D=>XLXN_7,
                Q=>XLXN_9);
   
   XLXI_6 : INV
      port map (I=>XLXN_7,
                O=>XLXN_8);
   
   XLXI_7 : NOR2
      port map (I0=>XLXN_9,
                I1=>XLXN_8,
                O=>enable190);
   
end BEHAVIORAL;


