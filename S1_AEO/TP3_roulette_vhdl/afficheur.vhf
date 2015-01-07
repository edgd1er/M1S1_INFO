--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : afficheur.vhf
-- /___/   /\     Timestamp : 10/17/2014 11:26:20
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/m1/dubiez/Documents/AEO_TP/roulette_vhdl/afficheur.vhf -w /home/m1/dubiez/Documents/AEO_TP/roulette_vhdl/afficheur.sch
--Design Name: afficheur
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB4CE_HXILINX_afficheur -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_afficheur is
  
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
end CB4CE_HXILINX_afficheur;

architecture Behavioral of CB4CE_HXILINX_afficheur is

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

----- CELL CB16CE_HXILINX_afficheur -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_afficheur is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_afficheur;

architecture Behavioral of CB16CE_HXILINX_afficheur is

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

----- CELL M4_1E_HXILINX_afficheur -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_afficheur is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_afficheur;

architecture M4_1E_HXILINX_afficheur_V of M4_1E_HXILINX_afficheur is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_afficheur_V;
----- CELL CB2CE_HXILINX_afficheur -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_afficheur is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_afficheur;

architecture Behavioral of CB2CE_HXILINX_afficheur is

  signal COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '1');
  
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

TC   <= '0' when (CLR = '1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity shiftanodes_MUSER_afficheur is
   port ( clk       : in    std_logic; 
          enable190 : in    std_logic; 
          anodes    : out   std_logic_vector (3 downto 0));
end shiftanodes_MUSER_afficheur;

architecture BEHAVIORAL of shiftanodes_MUSER_afficheur is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity enable190_MUSER_afficheur is
   port ( clk       : in    std_logic; 
          enable190 : out   std_logic);
end enable190_MUSER_afficheur;

architecture BEHAVIORAL of enable190_MUSER_afficheur is
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
   
   component CB16CE_HXILINX_afficheur
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component CB4CE_HXILINX_afficheur
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
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_0";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_1";
begin
   XLXI_1 : VCC
      port map (P=>XLXN_1);
   
   XLXI_2 : CB16CE_HXILINX_afficheur
      port map (C=>clk,
                CE=>XLXN_1,
                CLR=>XLXI_2_CLR_openSignal,
                CEO=>XLXN_3,
                Q=>open,
                TC=>open);
   
   XLXI_3 : CB4CE_HXILINX_afficheur
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mux4x4_MUSER_afficheur is
   port ( I0 : in    std_logic_vector (3 downto 0); 
          I1 : in    std_logic_vector (3 downto 0); 
          I2 : in    std_logic_vector (3 downto 0); 
          I3 : in    std_logic_vector (3 downto 0); 
          S  : in    std_logic_vector (1 downto 0); 
          O  : out   std_logic_vector (3 downto 0));
end Mux4x4_MUSER_afficheur;

architecture BEHAVIORAL of Mux4x4_MUSER_afficheur is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_47 : std_logic;
   component M4_1E_HXILINX_afficheur
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_2";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_3";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_4";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_5";
begin
   XLXI_1 : M4_1E_HXILINX_afficheur
      port map (D0=>I0(3),
                D1=>I1(3),
                D2=>I2(3),
                D3=>I3(3),
                E=>XLXN_47,
                S0=>S(0),
                S1=>S(1),
                O=>O(3));
   
   XLXI_2 : M4_1E_HXILINX_afficheur
      port map (D0=>I0(2),
                D1=>I1(2),
                D2=>I2(2),
                D3=>I3(2),
                E=>XLXN_47,
                S0=>S(0),
                S1=>S(1),
                O=>O(2));
   
   XLXI_3 : M4_1E_HXILINX_afficheur
      port map (D0=>I0(1),
                D1=>I1(1),
                D2=>I2(1),
                D3=>I3(1),
                E=>XLXN_47,
                S0=>S(0),
                S1=>S(1),
                O=>O(1));
   
   XLXI_4 : M4_1E_HXILINX_afficheur
      port map (D0=>I0(0),
                D1=>I1(0),
                D2=>I2(0),
                D3=>I3(0),
                E=>XLXN_47,
                S0=>S(0),
                S1=>S(1),
                O=>O(0));
   
   XLXI_10 : VCC
      port map (P=>XLXN_47);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity afficheur is
   port ( clk      : in    std_logic; 
          din      : in    std_logic_vector (15 downto 0); 
          anodes   : out   std_logic_vector (3 downto 0); 
          sevenseg : out   std_logic_vector (6 downto 0));
end afficheur;

architecture BEHAVIORAL of afficheur is
   attribute HU_SET     : string ;
   signal sel                   : std_logic_vector (1 downto 0);
   signal XLXN_1                : std_logic_vector (3 downto 0);
   signal XLXN_11               : std_logic;
   signal XLXI_2_CLR_openSignal : std_logic;
   component Mux4x4_MUSER_afficheur
      port ( I0 : in    std_logic_vector (3 downto 0); 
             I2 : in    std_logic_vector (3 downto 0); 
             I1 : in    std_logic_vector (3 downto 0); 
             I3 : in    std_logic_vector (3 downto 0); 
             S  : in    std_logic_vector (1 downto 0); 
             O  : out   std_logic_vector (3 downto 0));
   end component;
   
   component CB2CE_HXILINX_afficheur
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component X7seg
      port ( sw       : in    std_logic_vector (3 downto 0); 
             sevenseg : out   std_logic_vector (6 downto 0));
   end component;
   
   component enable190_MUSER_afficheur
      port ( clk       : in    std_logic; 
             enable190 : out   std_logic);
   end component;
   
   component shiftanodes_MUSER_afficheur
      port ( clk       : in    std_logic; 
             enable190 : in    std_logic; 
             anodes    : out   std_logic_vector (3 downto 0));
   end component;
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_6";
begin
   XLXI_1 : Mux4x4_MUSER_afficheur
      port map (I0(3 downto 0)=>din(3 downto 0),
                I1(3 downto 0)=>din(11 downto 8),
                I2(3 downto 0)=>din(7 downto 4),
                I3(3 downto 0)=>din(15 downto 12),
                S(1 downto 0)=>sel(1 downto 0),
                O(3 downto 0)=>XLXN_1(3 downto 0));
   
   XLXI_2 : CB2CE_HXILINX_afficheur
      port map (C=>clk,
                CE=>XLXN_11,
                CLR=>XLXI_2_CLR_openSignal,
                CEO=>open,
                Q0=>sel(0),
                Q1=>sel(1),
                TC=>open);
   
   XLXI_3 : X7seg
      port map (sw(3 downto 0)=>XLXN_1(3 downto 0),
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
   XLXI_4 : enable190_MUSER_afficheur
      port map (clk=>clk,
                enable190=>XLXN_11);
   
   XLXI_5 : shiftanodes_MUSER_afficheur
      port map (clk=>clk,
                enable190=>XLXN_11,
                anodes(3 downto 0)=>anodes(3 downto 0));
   
end BEHAVIORAL;


