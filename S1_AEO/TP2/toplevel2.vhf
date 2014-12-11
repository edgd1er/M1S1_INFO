--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : toplevel2.vhf
-- /___/   /\     Timestamp : 10/16/2014 12:02:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP2/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP2/toplevel2.vhf -w F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP2/toplevel2.sch
--Design Name: toplevel2
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB4CE_HXILINX_toplevel2 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_toplevel2 is
  
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
end CB4CE_HXILINX_toplevel2;

architecture Behavioral of CB4CE_HXILINX_toplevel2 is

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

----- CELL COMP8_HXILINX_toplevel2 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP8_HXILINX_toplevel2 is
port(
    EQ  : out std_logic;

    A   : in std_logic_vector(7 downto 0);
    B   : in std_logic_vector(7 downto 0)
  );
end COMP8_HXILINX_toplevel2;

architecture COMP8_HXILINX_toplevel2_V of COMP8_HXILINX_toplevel2 is
begin
  EQ <= '1' when (A=B) else '0';
end COMP8_HXILINX_toplevel2_V;
----- CELL ACC16_HXILINX_toplevel2 -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ACC16_HXILINX_toplevel2 is
port (
    CO   : out STD_LOGIC;
    OFL  : out STD_LOGIC;
    Q    : out STD_LOGIC_VECTOR(15 downto 0);

    ADD  : in STD_LOGIC;
    B    : in STD_LOGIC_VECTOR(15 downto 0);
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CI   : in STD_LOGIC;
    D    : in STD_LOGIC_VECTOR(15 downto 0);
    L    : in STD_LOGIC;
    R    : in STD_LOGIC
    );
end ACC16_HXILINX_toplevel2;

architecture ACC16_HXILINX_toplevel2_V of ACC16_HXILINX_toplevel2 is
begin

   process(C)
   variable adsu_tmp : STD_LOGIC_VECTOR(16 downto 0);
   variable q_tmp    : STD_LOGIC;
   begin
     if (C'event and C ='1') then
       if (R='1') then
        adsu_tmp := (others => '0');
        q_tmp := '0';
       elsif (L='1') then
         adsu_tmp(15 downto 0) := D;
       elsif (CE='1') then 
         q_tmp := adsu_tmp(15);
         if(ADD = '1') then
           adsu_tmp := conv_std_logic_vector((conv_integer(adsu_tmp(15 downto 0)) + conv_integer(B) + conv_integer(CI)),17);
         else
           adsu_tmp := conv_std_logic_vector((conv_integer(adsu_tmp(15 downto 0)) - conv_integer(not CI) - conv_integer(B)),17);
         end if;
       end if;
     end if;

   Q <= adsu_tmp(15 downto 0);

   if (ADD='1') then
     CO <= adsu_tmp(16);
     OFL <=  ( q_tmp and B(15) and (not adsu_tmp(15)) ) or ( (not q_tmp) and (not B(15)) and adsu_tmp(15) );  
   else
     CO <= not adsu_tmp(16);
     OFL <=  ( q_tmp and (not B(15)) and (not adsu_tmp(15)) ) or ( (not q_tmp) and B(15) and adsu_tmp(15) );  
   end if;

   end process;
end ACC16_HXILINX_toplevel2_V;
----- CELL CB16CE_HXILINX_toplevel2 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_toplevel2 is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_toplevel2;

architecture Behavioral of CB16CE_HXILINX_toplevel2 is

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

----- CELL D3_8E_HXILINX_toplevel2 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_toplevel2 is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;
    D4  : out std_logic;
    D5  : out std_logic;
    D6  : out std_logic;
    D7  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    E   : in std_logic
  );
end D3_8E_HXILINX_toplevel2;

architecture D3_8E_HXILINX_toplevel2_V of D3_8E_HXILINX_toplevel2 is
  signal d_tmp : std_logic_vector(7 downto 0);
begin
  process (A0, A1, A2, E)
  variable sel   : std_logic_vector(2 downto 0);
  begin
    sel := A2&A1&A0;
    if( E = '0') then
    d_tmp <= "00000000";
    else
      case sel is
      when "000" => d_tmp <= "00000001";
      when "001" => d_tmp <= "00000010";
      when "010" => d_tmp <= "00000100";
      when "011" => d_tmp <= "00001000";
      when "100" => d_tmp <= "00010000";
      when "101" => d_tmp <= "00100000";
      when "110" => d_tmp <= "01000000";
      when "111" => d_tmp <= "10000000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D7 <= d_tmp(7);
    D6 <= d_tmp(6);
    D5 <= d_tmp(5);
    D4 <= d_tmp(4);
    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D3_8E_HXILINX_toplevel2_V;
----- CELL M4_1E_HXILINX_toplevel2 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_toplevel2 is
  
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
end M4_1E_HXILINX_toplevel2;

architecture M4_1E_HXILINX_toplevel2_V of M4_1E_HXILINX_toplevel2 is
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
end M4_1E_HXILINX_toplevel2_V;
----- CELL FJKC_HXILINX_toplevel2 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKC_HXILINX_toplevel2 is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    J   : in STD_LOGIC;
    K   : in STD_LOGIC
    );
end FJKC_HXILINX_toplevel2;

architecture Behavioral of FJKC_HXILINX_toplevel2 is
signal q_tmp : std_logic := TO_X01(INIT);

begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(J='0') then
      if(K='1') then
      q_tmp <= '0';
    end if;
    else
      if(K='0') then
      q_tmp <= '1';
      else
      q_tmp <= not q_tmp;
      end if;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;

----- CELL M2_1_HXILINX_toplevel2 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_toplevel2 is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_toplevel2;

architecture M2_1_HXILINX_toplevel2_V of M2_1_HXILINX_toplevel2 is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_toplevel2_V;
----- CELL CB2CE_HXILINX_toplevel2 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_toplevel2 is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_toplevel2;

architecture Behavioral of CB2CE_HXILINX_toplevel2 is

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

entity mux2x8_MUSER_toplevel2 is
   port ( a   : in    std_logic_vector (7 downto 0); 
          b   : in    std_logic_vector (7 downto 0); 
          sel : in    std_logic; 
          c   : out   std_logic_vector (7 downto 0));
end mux2x8_MUSER_toplevel2;

architecture BEHAVIORAL of mux2x8_MUSER_toplevel2 is
   attribute HU_SET     : string ;
   component M2_1_HXILINX_toplevel2
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_2";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_3";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_4";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_5";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_6";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_7";
begin
   XLXI_1 : M2_1_HXILINX_toplevel2
      port map (D0=>a(0),
                D1=>b(0),
                S0=>sel,
                O=>c(0));
   
   XLXI_2 : M2_1_HXILINX_toplevel2
      port map (D0=>a(1),
                D1=>b(1),
                S0=>sel,
                O=>c(1));
   
   XLXI_3 : M2_1_HXILINX_toplevel2
      port map (D0=>a(2),
                D1=>b(2),
                S0=>sel,
                O=>c(2));
   
   XLXI_4 : M2_1_HXILINX_toplevel2
      port map (D0=>a(3),
                D1=>b(3),
                S0=>sel,
                O=>c(3));
   
   XLXI_5 : M2_1_HXILINX_toplevel2
      port map (D0=>a(4),
                D1=>b(4),
                S0=>sel,
                O=>c(4));
   
   XLXI_6 : M2_1_HXILINX_toplevel2
      port map (D0=>a(5),
                D1=>b(5),
                S0=>sel,
                O=>c(5));
   
   XLXI_7 : M2_1_HXILINX_toplevel2
      port map (D0=>a(6),
                D1=>b(6),
                S0=>sel,
                O=>c(6));
   
   XLXI_8 : M2_1_HXILINX_toplevel2
      port map (D0=>a(7),
                D1=>b(7),
                S0=>sel,
                O=>c(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity pulse_MUSER_toplevel2 is
   port ( clk  : in    std_logic; 
          E    : in    std_logic; 
          inp  : in    std_logic; 
          outp : out   std_logic);
end pulse_MUSER_toplevel2;

architecture BEHAVIORAL of pulse_MUSER_toplevel2 is
   attribute BOX_TYPE   : string ;
   signal o1      : std_logic;
   signal q0      : std_logic;
   signal q1      : std_logic;
   signal q2      : std_logic;
   signal q3      : std_logic;
   signal q4      : std_logic;
   signal q5      : std_logic;
   signal XLXN_48 : std_logic;
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
   XLXI_5 : FDE
      port map (C=>clk,
                CE=>E,
                D=>inp,
                Q=>q0);
   
   XLXI_6 : FDE
      port map (C=>clk,
                CE=>E,
                D=>q0,
                Q=>q1);
   
   XLXI_8 : FDE
      port map (C=>clk,
                CE=>E,
                D=>q1,
                Q=>q2);
   
   XLXI_9 : FD
      port map (C=>clk,
                D=>o1,
                Q=>q3);
   
   XLXI_10 : FD
      port map (C=>clk,
                D=>q3,
                Q=>q4);
   
   XLXI_11 : FD
      port map (C=>clk,
                D=>q4,
                Q=>q5);
   
   XLXI_12 : AND3
      port map (I0=>q2,
                I1=>q1,
                I2=>q0,
                O=>o1);
   
   XLXI_13 : AND3
      port map (I0=>XLXN_48,
                I1=>q4,
                I2=>q3,
                O=>outp);
   
   XLXI_14 : INV
      port map (I=>q5,
                O=>XLXN_48);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity shiftanodes_MUSER_toplevel2 is
   port ( clk       : in    std_logic; 
          Enable190 : in    std_logic; 
          anodes    : out   std_logic_vector (3 downto 0));
end shiftanodes_MUSER_toplevel2;

architecture BEHAVIORAL of shiftanodes_MUSER_toplevel2 is
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
                CE=>Enable190,
                D=>anodes_DUMMY(3),
                Q=>anodes_DUMMY(0));
   
   XLXI_2 : FDE
   generic map( INIT => '1')
      port map (C=>clk,
                CE=>Enable190,
                D=>anodes_DUMMY(0),
                Q=>anodes_DUMMY(1));
   
   XLXI_3 : FDE
   generic map( INIT => '1')
      port map (C=>clk,
                CE=>Enable190,
                D=>anodes_DUMMY(1),
                Q=>anodes_DUMMY(2));
   
   XLXI_4 : FDE
   generic map( INIT => '1')
      port map (C=>clk,
                CE=>Enable190,
                D=>anodes_DUMMY(2),
                Q=>anodes_DUMMY(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mux4x4_MUSER_toplevel2 is
   port ( I0 : in    std_logic_vector (3 downto 0); 
          I1 : in    std_logic_vector (3 downto 0); 
          I2 : in    std_logic_vector (3 downto 0); 
          I3 : in    std_logic_vector (3 downto 0); 
          s  : in    std_logic_vector (1 downto 0); 
          O  : out   std_logic_vector (3 downto 0));
end Mux4x4_MUSER_toplevel2;

architecture BEHAVIORAL of Mux4x4_MUSER_toplevel2 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_28 : std_logic;
   component M4_1E_HXILINX_toplevel2
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_8";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_9";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_10";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_11";
begin
   XLXI_1 : M4_1E_HXILINX_toplevel2
      port map (D0=>I0(3),
                D1=>I1(3),
                D2=>I2(3),
                D3=>I3(3),
                E=>XLXN_28,
                S0=>s(0),
                S1=>s(1),
                O=>O(3));
   
   XLXI_2 : M4_1E_HXILINX_toplevel2
      port map (D0=>I0(2),
                D1=>I1(2),
                D2=>I2(2),
                D3=>I3(2),
                E=>XLXN_28,
                S0=>s(0),
                S1=>s(1),
                O=>O(2));
   
   XLXI_3 : M4_1E_HXILINX_toplevel2
      port map (D0=>I0(0),
                D1=>I1(0),
                D2=>I2(0),
                D3=>I3(0),
                E=>XLXN_28,
                S0=>s(0),
                S1=>s(1),
                O=>O(0));
   
   XLXI_4 : VCC
      port map (P=>XLXN_28);
   
   XLXI_5 : M4_1E_HXILINX_toplevel2
      port map (D0=>I0(1),
                D1=>I1(1),
                D2=>I2(1),
                D3=>I3(1),
                E=>XLXN_28,
                S0=>s(0),
                S1=>s(1),
                O=>O(1));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Enable190_MUSER_toplevel2 is
   port ( clk       : in    std_logic; 
          Enable190 : out   std_logic);
end Enable190_MUSER_toplevel2;

architecture BEHAVIORAL of Enable190_MUSER_toplevel2 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal clk190                : std_logic;
   signal XLXN_1                : std_logic;
   signal XLXN_9                : std_logic;
   signal XLXN_13               : std_logic;
   signal XLXN_14               : std_logic;
   signal XLXN_15               : std_logic;
   signal XLXI_1_CLR_openSignal : std_logic;
   signal XLXI_2_CLR_openSignal : std_logic;
   component CB4CE_HXILINX_toplevel2
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
   
   component CB16CE_HXILINX_toplevel2
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_12";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_13";
begin
   XLXI_1 : CB4CE_HXILINX_toplevel2
      port map (C=>clk,
                CE=>XLXN_9,
                CLR=>XLXI_1_CLR_openSignal,
                CEO=>open,
                Q0=>open,
                Q1=>open,
                Q2=>clk190,
                Q3=>open,
                TC=>open);
   
   XLXI_2 : CB16CE_HXILINX_toplevel2
      port map (C=>clk,
                CE=>XLXN_1,
                CLR=>XLXI_2_CLR_openSignal,
                CEO=>XLXN_9,
                Q=>open,
                TC=>open);
   
   XLXI_3 : FD
      port map (C=>clk,
                D=>clk190,
                Q=>XLXN_13);
   
   XLXI_4 : FD
      port map (C=>clk,
                D=>XLXN_13,
                Q=>XLXN_15);
   
   XLXI_5 : VCC
      port map (P=>XLXN_1);
   
   XLXI_6 : INV
      port map (I=>XLXN_13,
                O=>XLXN_14);
   
   XLXI_7 : NOR2
      port map (I0=>XLXN_15,
                I1=>XLXN_14,
                O=>Enable190);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity afficheur_MUSER_toplevel2 is
   port ( clk      : in    std_logic; 
          din      : in    std_logic_vector (15 downto 0); 
          anodes   : out   std_logic_vector (3 downto 0); 
          sevenseg : out   std_logic_vector (6 downto 0));
end afficheur_MUSER_toplevel2;

architecture BEHAVIORAL of afficheur_MUSER_toplevel2 is
   attribute HU_SET     : string ;
   signal sel                   : std_logic_vector (1 downto 0);
   signal XLXN_14               : std_logic_vector (3 downto 0);
   signal XLXN_29               : std_logic;
   signal XLXI_8_CLR_openSignal : std_logic;
   component Mux4x4_MUSER_toplevel2
      port ( I0 : in    std_logic_vector (3 downto 0); 
             I2 : in    std_logic_vector (3 downto 0); 
             I3 : in    std_logic_vector (3 downto 0); 
             s  : in    std_logic_vector (1 downto 0); 
             I1 : in    std_logic_vector (3 downto 0); 
             O  : out   std_logic_vector (3 downto 0));
   end component;
   
   component X7seg
      port ( Sw       : in    std_logic_vector (3 downto 0); 
             sevenseg : out   std_logic_vector (6 downto 0));
   end component;
   
   component CB2CE_HXILINX_toplevel2
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component Enable190_MUSER_toplevel2
      port ( clk       : in    std_logic; 
             Enable190 : out   std_logic);
   end component;
   
   component shiftanodes_MUSER_toplevel2
      port ( clk       : in    std_logic; 
             Enable190 : in    std_logic; 
             anodes    : out   std_logic_vector (3 downto 0));
   end component;
   
   attribute HU_SET of XLXI_8 : label is "XLXI_8_14";
begin
   XLXI_6 : Mux4x4_MUSER_toplevel2
      port map (I0(3 downto 0)=>din(3 downto 0),
                I1(3 downto 0)=>din(7 downto 4),
                I2(3 downto 0)=>din(11 downto 8),
                I3(3 downto 0)=>din(15 downto 12),
                s(1 downto 0)=>sel(1 downto 0),
                O(3 downto 0)=>XLXN_14(3 downto 0));
   
   XLXI_7 : X7seg
      port map (Sw(3 downto 0)=>XLXN_14(3 downto 0),
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
   XLXI_8 : CB2CE_HXILINX_toplevel2
      port map (C=>clk,
                CE=>XLXN_29,
                CLR=>XLXI_8_CLR_openSignal,
                CEO=>open,
                Q0=>sel(0),
                Q1=>sel(1),
                TC=>open);
   
   XLXI_9 : Enable190_MUSER_toplevel2
      port map (clk=>clk,
                Enable190=>XLXN_29);
   
   XLXI_15 : shiftanodes_MUSER_toplevel2
      port map (clk=>clk,
                Enable190=>XLXN_29,
                anodes(3 downto 0)=>anodes(3 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity shiftled_MUSER_toplevel2 is
   port ( clk : in    std_logic; 
          E   : in    std_logic; 
          Q   : out   std_logic_vector (7 downto 0));
end shiftled_MUSER_toplevel2;

architecture BEHAVIORAL of shiftled_MUSER_toplevel2 is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity RDM_MUSER_toplevel2 is
   port ( CE  : in    std_logic; 
          clk : in    std_logic; 
          Q   : out   std_logic_vector (3 downto 0));
end RDM_MUSER_toplevel2;

architecture BEHAVIORAL of RDM_MUSER_toplevel2 is
   attribute BOX_TYPE   : string ;
   signal XLXN_10 : std_logic;
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
   XLXI_1 : FDE
   generic map( INIT => '1')
      port map (C=>clk,
                CE=>CE,
                D=>XLXN_10,
                Q=>Q_DUMMY(0));
   
   XLXI_2 : FDE
      port map (C=>clk,
                CE=>CE,
                D=>Q_DUMMY(0),
                Q=>Q_DUMMY(1));
   
   XLXI_3 : FDE
      port map (C=>clk,
                CE=>CE,
                D=>Q_DUMMY(1),
                Q=>Q_DUMMY(2));
   
   XLXI_4 : FDE
      port map (C=>clk,
                CE=>CE,
                D=>Q_DUMMY(2),
                Q=>Q_DUMMY(3));
   
   XLXI_5 : XOR2
      port map (I0=>Q_DUMMY(3),
                I1=>Q_DUMMY(2),
                O=>XLXN_10);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity toplevel2 is
   port ( btn0     : in    std_logic; 
          btn1     : in    std_logic; 
          btn2     : in    std_logic; 
          clk      : in    std_logic; 
          switches : in    std_logic_vector (7 downto 0); 
          anodes   : out   std_logic_vector (3 downto 0); 
          led      : out   std_logic_vector (7 downto 0); 
          sevenseg : out   std_logic_vector (6 downto 0));
end toplevel2;

architecture BEHAVIORAL of toplevel2 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal clk3                   : std_logic;
   signal clk100                 : std_logic;
   signal E190                   : std_logic;
   signal position               : std_logic_vector (7 downto 0);
   signal random                 : std_logic_vector (3 downto 0);
   signal state                  : std_logic;
   signal value                  : std_logic_vector (15 downto 0);
   signal XLXN_7                 : std_logic;
   signal XLXN_10                : std_logic;
   signal XLXN_19                : std_logic;
   signal XLXN_37                : std_logic;
   signal XLXN_119               : std_logic_vector (7 downto 0);
   signal XLXN_140               : std_logic;
   signal XLXN_143               : std_logic_vector (15 downto 0);
   signal XLXN_148               : std_logic_vector (7 downto 0);
   signal XLXN_150               : std_logic_vector (7 downto 0);
   signal XLXN_154               : std_logic;
   signal XLXN_173               : std_logic;
   signal XLXN_175               : std_logic;
   signal XLXN_178               : std_logic;
   signal XLXN_179               : std_logic;
   signal XLXN_184               : std_logic;
   signal XLXN_185               : std_logic_vector (15 downto 0);
   signal XLXI_15_CLR_openSignal : std_logic;
   signal XLXI_39_R_openSignal   : std_logic;
   component timer
      port ( clk_in1  : in    std_logic; 
             clk_out1 : out   std_logic; 
             clk_out2 : out   std_logic);
   end component;
   
   component Enable190_MUSER_toplevel2
      port ( clk       : in    std_logic; 
             Enable190 : out   std_logic);
   end component;
   
   component pulse_MUSER_toplevel2
      port ( inp  : in    std_logic; 
             E    : in    std_logic; 
             clk  : in    std_logic; 
             outp : out   std_logic);
   end component;
   
   component RDM_MUSER_toplevel2
      port ( clk : in    std_logic; 
             CE  : in    std_logic; 
             Q   : out   std_logic_vector (3 downto 0));
   end component;
   
   component afficheur_MUSER_toplevel2
      port ( clk      : in    std_logic; 
             din      : in    std_logic_vector (15 downto 0); 
             sevenseg : out   std_logic_vector (6 downto 0); 
             anodes   : out   std_logic_vector (3 downto 0));
   end component;
   
   component D3_8E_HXILINX_toplevel2
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic; 
             D4 : out   std_logic; 
             D5 : out   std_logic; 
             D6 : out   std_logic; 
             D7 : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component COMP8_HXILINX_toplevel2
      port ( A  : in    std_logic_vector (7 downto 0); 
             B  : in    std_logic_vector (7 downto 0); 
             EQ : out   std_logic);
   end component;
   
   component FJKC_HXILINX_toplevel2
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component shiftled_MUSER_toplevel2
      port ( E   : in    std_logic; 
             clk : in    std_logic; 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component mux2x8_MUSER_toplevel2
      port ( sel : in    std_logic; 
             a   : in    std_logic_vector (7 downto 0); 
             b   : in    std_logic_vector (7 downto 0); 
             c   : out   std_logic_vector (7 downto 0));
   end component;
   
   component ACC16_HXILINX_toplevel2
      port ( ADD : in    std_logic; 
             B   : in    std_logic_vector (15 downto 0); 
             C   : in    std_logic; 
             CE  : in    std_logic; 
             CI  : in    std_logic; 
             D   : in    std_logic_vector (15 downto 0); 
             L   : in    std_logic; 
             R   : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0));
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_6 : label is "XLXI_6_17";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_15";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_16";
   attribute HU_SET of XLXI_39 : label is "XLXI_39_18";
begin
   XLXN_148(7 downto 0) <= x"00";
   XLXN_150(7 downto 0) <= x"07";
   XLXN_185(15 downto 0) <= x"0050";
   XLXI_1 : timer
      port map (clk_in1=>clk,
                clk_out1=>clk100,
                clk_out2=>clk3);
   
   XLXI_2 : Enable190_MUSER_toplevel2
      port map (clk=>clk100,
                Enable190=>XLXN_7);
   
   XLXI_3 : pulse_MUSER_toplevel2
      port map (clk=>clk100,
                E=>XLXN_7,
                inp=>btn0,
                outp=>XLXN_10);
   
   XLXI_4 : RDM_MUSER_toplevel2
      port map (CE=>XLXN_10,
                clk=>clk100,
                Q(3 downto 0)=>random(3 downto 0));
   
   XLXI_5 : afficheur_MUSER_toplevel2
      port map (clk=>clk100,
                din(15 downto 0)=>XLXN_143(15 downto 0),
                anodes(3 downto 0)=>anodes(3 downto 0),
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
   XLXI_6 : D3_8E_HXILINX_toplevel2
      port map (A0=>random(1),
                A1=>random(2),
                A2=>random(3),
                E=>XLXN_19,
                D0=>position(0),
                D1=>position(1),
                D2=>position(2),
                D3=>position(3),
                D4=>position(4),
                D5=>position(5),
                D6=>position(6),
                D7=>position(7));
   
   XLXI_7 : VCC
      port map (P=>XLXN_19);
   
   XLXI_8 : COMP8_HXILINX_toplevel2
      port map (A(7 downto 0)=>position(7 downto 0),
                B(7 downto 0)=>switches(7 downto 0),
                EQ=>XLXN_154);
   
   XLXI_14 : pulse_MUSER_toplevel2
      port map (clk=>E190,
                E=>btn1,
                inp=>clk100,
                outp=>XLXN_37);
   
   XLXI_15 : FJKC_HXILINX_toplevel2
      port map (C=>clk100,
                CLR=>XLXI_15_CLR_openSignal,
                J=>XLXN_10,
                K=>XLXN_37,
                Q=>XLXN_184);
   
   XLXI_17 : shiftled_MUSER_toplevel2
      port map (clk=>clk3,
                E=>XLXN_140,
                Q(7 downto 0)=>XLXN_119(7 downto 0));
   
   XLXI_18 : mux2x8_MUSER_toplevel2
      port map (a(7 downto 0)=>XLXN_119(7 downto 0),
                b(7 downto 0)=>position(7 downto 0),
                sel=>state,
                c(7 downto 0)=>led(7 downto 0));
   
   XLXI_38 : Enable190_MUSER_toplevel2
      port map (clk=>clk3,
                Enable190=>XLXN_140);
   
   XLXI_39 : ACC16_HXILINX_toplevel2
      port map (ADD=>XLXN_154,
                B(15 downto 0)=>value(15 downto 0),
                C=>clk100,
                CE=>XLXN_175,
                CI=>XLXN_154,
                D(15 downto 0)=>XLXN_185(15 downto 0),
                L=>XLXN_173,
                R=>XLXI_39_R_openSignal,
                CO=>clk100,
                OFL=>open,
                Q(15 downto 0)=>XLXN_143(15 downto 0));
   
   XLXI_41 : mux2x8_MUSER_toplevel2
      port map (a(7 downto 0)=>XLXN_148(7 downto 0),
                b(7 downto 0)=>XLXN_150(7 downto 0),
                sel=>XLXN_154,
                c(7 downto 0)=>value(7 downto 0));
   
   XLXI_45 : pulse_MUSER_toplevel2
      port map (clk=>E190,
                E=>btn2,
                inp=>clk100,
                outp=>XLXN_173);
   
   XLXI_46 : FD
      port map (C=>clk100,
                D=>XLXN_184,
                Q=>XLXN_178);
   
   XLXI_47 : AND2
      port map (I0=>XLXN_179,
                I1=>XLXN_184,
                O=>XLXN_175);
   
   XLXI_48 : INV
      port map (I=>XLXN_178,
                O=>XLXN_179);
   
end BEHAVIORAL;


