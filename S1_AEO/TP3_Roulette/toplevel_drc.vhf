--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : toplevel_drc.vhf
-- /___/   /\     Timestamp : 09/30/2014 18:39:44
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /usr/local/Xilinx/12.4/ISE_DS/ISE/bin/lin/unwrapped/sch2hdl -sympath /home/m1/sommerard/Documents/AEO/Roulette/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl toplevel_drc.vhf -w /home/m1/sommerard/Documents/AEO/Roulette/toplevel.sch
--Design Name: toplevel
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB4CE_HXILINX_toplevel -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_toplevel is
  
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
end CB4CE_HXILINX_toplevel;

architecture Behavioral of CB4CE_HXILINX_toplevel is

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

----- CELL CB16CE_HXILINX_toplevel -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_toplevel is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_toplevel;

architecture Behavioral of CB16CE_HXILINX_toplevel is

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

----- CELL M4_1E_HXILINX_toplevel -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_toplevel is
  
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
end M4_1E_HXILINX_toplevel;

architecture M4_1E_HXILINX_toplevel_V of M4_1E_HXILINX_toplevel is
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
end M4_1E_HXILINX_toplevel_V;
----- CELL CB2CE_HXILINX_toplevel -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_toplevel is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_toplevel;

architecture Behavioral of CB2CE_HXILINX_toplevel is

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

entity enable190_MUSER_toplevel is
   port ( clk       : in    std_logic; 
          enable190 : out   std_logic);
end enable190_MUSER_toplevel;

architecture BEHAVIORAL of enable190_MUSER_toplevel is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_1                : std_logic;
   signal XLXN_3                : std_logic;
   signal XLXN_6                : std_logic;
   signal XLXN_7                : std_logic;
   signal XLXN_8                : std_logic;
   signal XLXN_9                : std_logic;
   signal XLXI_2_CLR_openSignal : std_logic;
   signal XLXI_3_CLR_openSignal : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component CB16CE_HXILINX_toplevel
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component CB4CE_HXILINX_toplevel
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
   
   XLXI_2 : CB16CE_HXILINX_toplevel
      port map (C=>clk,
                CE=>XLXN_1,
                CLR=>XLXI_2_CLR_openSignal,
                CEO=>XLXN_3,
                Q=>open,
                TC=>open);
   
   XLXI_3 : CB4CE_HXILINX_toplevel
      port map (C=>clk,
                CE=>XLXN_3,
                CLR=>XLXI_3_CLR_openSignal,
                CEO=>open,
                Q0=>open,
                Q1=>open,
                Q2=>XLXN_6,
                Q3=>open,
                TC=>open);
   
   XLXI_4 : FD
      port map (C=>clk,
                D=>XLXN_6,
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

entity pulse_MUSER_toplevel is
   port ( clk  : in    std_logic; 
          E    : in    std_logic; 
          inp  : in    std_logic; 
          outp : out   std_logic);
end pulse_MUSER_toplevel;

architecture BEHAVIORAL of pulse_MUSER_toplevel is
   attribute BOX_TYPE   : string ;
   signal O1     : std_logic;
   signal q0     : std_logic;
   signal q1     : std_logic;
   signal q2     : std_logic;
   signal q3     : std_logic;
   signal q4     : std_logic;
   signal q5     : std_logic;
   signal XLXN_2 : std_logic;
   component FDE
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   attribute BOX_TYPE of FDE : component is "BLACK_BOX";
   
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
   
begin
   XLXI_1 : FDE
      port map (C=>clk,
                CE=>E,
                D=>inp,
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
   
   XLXI_4 : FD
      port map (C=>clk,
                D=>O1,
                Q=>q3);
   
   XLXI_5 : FD
      port map (C=>clk,
                D=>q3,
                Q=>q4);
   
   XLXI_6 : FD
      port map (C=>clk,
                D=>q4,
                Q=>q5);
   
   XLXI_7 : AND3
      port map (I0=>q2,
                I1=>q1,
                I2=>q0,
                O=>O1);
   
   XLXI_8 : AND3
      port map (I0=>XLXN_2,
                I1=>q4,
                I2=>q3,
                O=>outp);
   
   XLXI_9 : INV
      port map (I=>q5,
                O=>XLXN_2);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity shiftanodes_MUSER_toplevel is
   port ( clk       : in    std_logic; 
          enable190 : in    std_logic; 
          anodes    : out   std_logic_vector (3 downto 0));
end shiftanodes_MUSER_toplevel;

architecture BEHAVIORAL of shiftanodes_MUSER_toplevel is
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

entity Mux4x4_MUSER_toplevel is
   port ( I0 : in    std_logic_vector (3 downto 0); 
          I1 : in    std_logic_vector (3 downto 0); 
          I2 : in    std_logic_vector (3 downto 0); 
          I3 : in    std_logic_vector (3 downto 0); 
          S  : in    std_logic_vector (1 downto 0); 
          O  : out   std_logic_vector (3 downto 0));
end Mux4x4_MUSER_toplevel;

architecture BEHAVIORAL of Mux4x4_MUSER_toplevel is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_47 : std_logic;
   component M4_1E_HXILINX_toplevel
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
   XLXI_1 : M4_1E_HXILINX_toplevel
      port map (D0=>I0(3),
                D1=>I1(3),
                D2=>I2(3),
                D3=>I3(3),
                E=>XLXN_47,
                S0=>S(0),
                S1=>S(1),
                O=>O(3));
   
   XLXI_2 : M4_1E_HXILINX_toplevel
      port map (D0=>I0(2),
                D1=>I1(2),
                D2=>I2(2),
                D3=>I3(2),
                E=>XLXN_47,
                S0=>S(0),
                S1=>S(1),
                O=>O(2));
   
   XLXI_3 : M4_1E_HXILINX_toplevel
      port map (D0=>I0(1),
                D1=>I1(1),
                D2=>I2(1),
                D3=>I3(1),
                E=>XLXN_47,
                S0=>S(0),
                S1=>S(1),
                O=>O(1));
   
   XLXI_4 : M4_1E_HXILINX_toplevel
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

entity afficheur_MUSER_toplevel is
   port ( clk      : in    std_logic; 
          din      : in    std_logic_vector (15 downto 0); 
          anodes   : out   std_logic_vector (3 downto 0); 
          sevenseg : out   std_logic_vector (6 downto 0));
end afficheur_MUSER_toplevel;

architecture BEHAVIORAL of afficheur_MUSER_toplevel is
   attribute HU_SET     : string ;
   signal sel(1)                : std_logic;
   signal XLXN_1                : std_logic_vector (3 downto 0);
   signal XLXN_8                : std_logic_vector (1 downto 0);
   signal XLXN_11               : std_logic;
   signal XLXI_2_CLR_openSignal : std_logic;
   component Mux4x4_MUSER_toplevel
      port ( I0 : in    std_logic_vector (3 downto 0); 
             I2 : in    std_logic_vector (3 downto 0); 
             I1 : in    std_logic_vector (3 downto 0); 
             I3 : in    std_logic_vector (3 downto 0); 
             S  : in    std_logic_vector (1 downto 0); 
             O  : out   std_logic_vector (3 downto 0));
   end component;
   
   component CB2CE_HXILINX_toplevel
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
   
   component enable190_MUSER_toplevel
      port ( clk       : in    std_logic; 
             enable190 : out   std_logic);
   end component;
   
   component shiftanodes_MUSER_toplevel
      port ( clk       : in    std_logic; 
             enable190 : in    std_logic; 
             anodes    : out   std_logic_vector (3 downto 0));
   end component;
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_6";
begin
   XLXI_1 : Mux4x4_MUSER_toplevel
      port map (I0(3 downto 0)=>din(3 downto 0),
                I1(3 downto 0)=>din(11 downto 8),
                I2(3 downto 0)=>din(7 downto 4),
                I3(3 downto 0)=>din(15 downto 12),
                S(1 downto 0)=>XLXN_8(1 downto 0),
                O(3 downto 0)=>XLXN_1(3 downto 0));
   
   XLXI_2 : CB2CE_HXILINX_toplevel
      port map (C=>clk,
                CE=>XLXN_11,
                CLR=>XLXI_2_CLR_openSignal,
                CEO=>open,
                Q0=>open,
                Q1=>sel(1),
                TC=>open);
   
   XLXI_3 : X7seg
      port map (sw(3 downto 0)=>XLXN_1(3 downto 0),
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
   XLXI_4 : enable190_MUSER_toplevel
      port map (clk=>clk,
                enable190=>XLXN_11);
   
   XLXI_5 : shiftanodes_MUSER_toplevel
      port map (clk=>clk,
                enable190=>XLXN_11,
                anodes(3 downto 0)=>anodes(3 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity rdm_MUSER_toplevel is
   port ( ce  : in    std_logic; 
          clk : in    std_logic; 
          q   : out   std_logic_vector (3 downto 0));
end rdm_MUSER_toplevel;

architecture BEHAVIORAL of rdm_MUSER_toplevel is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity toplevel is
   port ( btn0     : in    std_logic; 
          clk      : in    std_logic; 
          anodes   : out   std_logic_vector (3 downto 0); 
          sevenseg : out   std_logic_vector (6 downto 0));
end toplevel;

architecture BEHAVIORAL of toplevel is
   signal clk3     : std_logic;
   signal clk100   : std_logic;
   signal din      : std_logic_vector (15 downto 0);
   signal E190     : std_logic;
   signal XLXN_11  : std_logic;
   component rdm_MUSER_toplevel
      port ( clk : in    std_logic; 
             ce  : in    std_logic; 
             q   : out   std_logic_vector (3 downto 0));
   end component;
   
   component afficheur_MUSER_toplevel
      port ( clk      : in    std_logic; 
             din      : in    std_logic_vector (15 downto 0); 
             sevenseg : out   std_logic_vector (6 downto 0); 
             anodes   : out   std_logic_vector (3 downto 0));
   end component;
   
   component timer
      port ( clk_in1  : in    std_logic; 
             clk_out1 : out   std_logic; 
             clk_out2 : out   std_logic);
   end component;
   
   component pulse_MUSER_toplevel
      port ( inp  : in    std_logic; 
             clk  : in    std_logic; 
             E    : in    std_logic; 
             outp : out   std_logic);
   end component;
   
   component enable190_MUSER_toplevel
      port ( clk       : in    std_logic; 
             enable190 : out   std_logic);
   end component;
   
begin
   XLXI_1 : rdm_MUSER_toplevel
      port map (ce=>XLXN_11,
                clk=>clk100,
                q(3 downto 0)=>din(3 downto 0));
   
   XLXI_2 : afficheur_MUSER_toplevel
      port map (clk=>clk100,
                din(15 downto 0)=>din(15 downto 0),
                anodes(3 downto 0)=>anodes(3 downto 0),
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
   XLXI_3 : timer
      port map (clk_in1=>clk,
                clk_out1=>clk100,
                clk_out2=>clk3);
   
   XLXI_4 : pulse_MUSER_toplevel
      port map (clk=>btn0,
                E=>E190,
                inp=>clk100,
                outp=>XLXN_11);
   
   XLXI_5 : enable190_MUSER_toplevel
      port map (clk=>clk100,
                enable190=>E190);
   
end BEHAVIORAL;


