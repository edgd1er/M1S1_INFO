--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : toplevel.vhf
-- /___/   /\     Timestamp : 10/09/2014 07:53:31
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Romain/Desktop/ASE/Roulette/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Romain/Desktop/ASE/Roulette/toplevel.vhf -w C:/Users/Romain/Desktop/ASE/Roulette/toplevel.sch
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

----- CELL COMP8_HXILINX_toplevel -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP8_HXILINX_toplevel is
port(
    EQ  : out std_logic;

    A   : in std_logic_vector(7 downto 0);
    B   : in std_logic_vector(7 downto 0)
  );
end COMP8_HXILINX_toplevel;

architecture COMP8_HXILINX_toplevel_V of COMP8_HXILINX_toplevel is
begin
  EQ <= '1' when (A=B) else '0';
end COMP8_HXILINX_toplevel_V;
----- CELL ACC16_HXILINX_toplevel -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ACC16_HXILINX_toplevel is
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
end ACC16_HXILINX_toplevel;

architecture ACC16_HXILINX_toplevel_V of ACC16_HXILINX_toplevel is
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
end ACC16_HXILINX_toplevel_V;
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

----- CELL D3_8E_HXILINX_toplevel -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D3_8E_HXILINX_toplevel is
  
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
end D3_8E_HXILINX_toplevel;

architecture D3_8E_HXILINX_toplevel_V of D3_8E_HXILINX_toplevel is
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

end D3_8E_HXILINX_toplevel_V;
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
----- CELL FJKC_HXILINX_toplevel -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FJKC_HXILINX_toplevel is
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
end FJKC_HXILINX_toplevel;

architecture Behavioral of FJKC_HXILINX_toplevel is
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

----- CELL M2_1_HXILINX_toplevel -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_toplevel is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_toplevel;

architecture M2_1_HXILINX_toplevel_V of M2_1_HXILINX_toplevel is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_toplevel_V;
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

entity enable190_MUSER_toplevel is
   port ( clk       : in    std_logic; 
          enable190 : out   std_logic);
end enable190_MUSER_toplevel;

architecture BEHAVIORAL of enable190_MUSER_toplevel is
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
   signal sel                   : std_logic_vector (1 downto 0);
   signal XLXN_1                : std_logic_vector (3 downto 0);
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
                S(1 downto 0)=>sel(1 downto 0),
                O(3 downto 0)=>XLXN_1(3 downto 0));
   
   XLXI_2 : CB2CE_HXILINX_toplevel
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

entity mux2x8_MUSER_toplevel is
   port ( a   : in    std_logic_vector (7 downto 0); 
          b   : in    std_logic_vector (7 downto 0); 
          sel : in    std_logic; 
          c   : out   std_logic_vector (7 downto 0));
end mux2x8_MUSER_toplevel;

architecture BEHAVIORAL of mux2x8_MUSER_toplevel is
   attribute HU_SET     : string ;
   component M2_1_HXILINX_toplevel
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_7";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_8";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_9";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_10";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_11";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_12";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_13";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_14";
begin
   XLXI_1 : M2_1_HXILINX_toplevel
      port map (D0=>a(0),
                D1=>b(0),
                S0=>sel,
                O=>c(0));
   
   XLXI_2 : M2_1_HXILINX_toplevel
      port map (D0=>a(1),
                D1=>b(1),
                S0=>sel,
                O=>c(1));
   
   XLXI_3 : M2_1_HXILINX_toplevel
      port map (D0=>a(2),
                D1=>b(2),
                S0=>sel,
                O=>c(2));
   
   XLXI_4 : M2_1_HXILINX_toplevel
      port map (D0=>a(3),
                D1=>b(3),
                S0=>sel,
                O=>c(3));
   
   XLXI_5 : M2_1_HXILINX_toplevel
      port map (D0=>a(4),
                D1=>b(4),
                S0=>sel,
                O=>c(4));
   
   XLXI_6 : M2_1_HXILINX_toplevel
      port map (D0=>a(5),
                D1=>b(5),
                S0=>sel,
                O=>c(5));
   
   XLXI_7 : M2_1_HXILINX_toplevel
      port map (D0=>a(6),
                D1=>b(6),
                S0=>sel,
                O=>c(6));
   
   XLXI_8 : M2_1_HXILINX_toplevel
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

entity shiftled_MUSER_toplevel is
   port ( clk : in    std_logic; 
          E   : in    std_logic; 
          Q   : out   std_logic_vector (7 downto 0));
end shiftled_MUSER_toplevel;

architecture BEHAVIORAL of shiftled_MUSER_toplevel is
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
   XLXI_1 : FDE
   generic map( INIT => '1')
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(7),
                Q=>Q_DUMMY(0));
   
   XLXI_2 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(0),
                Q=>Q_DUMMY(1));
   
   XLXI_3 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(1),
                Q=>Q_DUMMY(2));
   
   XLXI_4 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(2),
                Q=>Q_DUMMY(3));
   
   XLXI_5 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(3),
                Q=>Q_DUMMY(4));
   
   XLXI_6 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(4),
                Q=>Q_DUMMY(5));
   
   XLXI_7 : FDE
      port map (C=>clk,
                CE=>E,
                D=>Q_DUMMY(5),
                Q=>Q_DUMMY(6));
   
   XLXI_8 : FDE
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
          btn1     : in    std_logic; 
          btn2     : in    std_logic; 
          clk      : in    std_logic; 
          SW       : in    std_logic_vector (7 downto 0); 
          anodes   : out   std_logic_vector (3 downto 0); 
          led      : out   std_logic_vector (7 downto 0); 
          sevenseg : out   std_logic_vector (6 downto 0));
end toplevel;

architecture BEHAVIORAL of toplevel is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal clk3                   : std_logic;
   signal clk100                 : std_logic;
   signal E190                   : std_logic;
   signal position               : std_logic_vector (7 downto 0);
   signal random                 : std_logic_vector (3 downto 0);
   signal state                  : std_logic;
   signal value                  : std_logic_vector (15 downto 0);
   signal XLXN_28                : std_logic;
   signal XLXN_46                : std_logic_vector (15 downto 0);
   signal XLXN_52                : std_logic;
   signal XLXN_53                : std_logic;
   signal XLXN_61                : std_logic;
   signal XLXN_64                : std_logic_vector (7 downto 0);
   signal XLXN_127               : std_logic_vector (15 downto 0);
   signal XLXN_136               : std_logic;
   signal XLXN_137               : std_logic;
   signal XLXN_140               : std_logic;
   signal XLXN_144               : std_logic;
   signal XLXN_146               : std_logic;
   signal XLXN_148               : std_logic_vector (7 downto 0);
   signal XLXN_149               : std_logic_vector (7 downto 0);
   signal XLXI_15_CLR_openSignal : std_logic;
   signal XLXI_37_R_openSignal   : std_logic;
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
   
   component COMP8_HXILINX_toplevel
      port ( A  : in    std_logic_vector (7 downto 0); 
             B  : in    std_logic_vector (7 downto 0); 
             EQ : out   std_logic);
   end component;
   
   component D3_8E_HXILINX_toplevel
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
   
   component FJKC_HXILINX_toplevel
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             J   : in    std_logic; 
             K   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component mux2x8_MUSER_toplevel
      port ( sel : in    std_logic; 
             b   : in    std_logic_vector (7 downto 0); 
             a   : in    std_logic_vector (7 downto 0); 
             c   : out   std_logic_vector (7 downto 0));
   end component;
   
   component shiftled_MUSER_toplevel
      port ( clk : in    std_logic; 
             E   : in    std_logic; 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component ACC16_HXILINX_toplevel
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
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_11 : label is "XLXI_11_15";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_16";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_17";
   attribute HU_SET of XLXI_37 : label is "XLXI_37_18";
begin
   XLXN_127(15 downto 0) <= x"0050";
   XLXN_148(7 downto 0) <= x"00";
   XLXN_149(7 downto 0) <= x"07";
   XLXI_1 : rdm_MUSER_toplevel
      port map (ce=>XLXN_53,
                clk=>clk100,
                q(3 downto 0)=>random(3 downto 0));
   
   XLXI_2 : afficheur_MUSER_toplevel
      port map (clk=>clk100,
                din(15 downto 0)=>XLXN_46(15 downto 0),
                anodes(3 downto 0)=>anodes(3 downto 0),
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
   XLXI_3 : timer
      port map (clk_in1=>clk,
                clk_out1=>clk100,
                clk_out2=>clk3);
   
   XLXI_4 : pulse_MUSER_toplevel
      port map (clk=>clk100,
                E=>E190,
                inp=>btn0,
                outp=>XLXN_53);
   
   XLXI_5 : enable190_MUSER_toplevel
      port map (clk=>clk100,
                enable190=>E190);
   
   XLXI_11 : COMP8_HXILINX_toplevel
      port map (A(7 downto 0)=>position(7 downto 0),
                B(7 downto 0)=>SW(7 downto 0),
                EQ=>XLXN_140);
   
   XLXI_12 : D3_8E_HXILINX_toplevel
      port map (A0=>random(1),
                A1=>random(2),
                A2=>random(3),
                E=>XLXN_28,
                D0=>position(0),
                D1=>position(1),
                D2=>position(2),
                D3=>position(3),
                D4=>position(4),
                D5=>position(5),
                D6=>position(6),
                D7=>position(7));
   
   XLXI_14 : VCC
      port map (P=>XLXN_28);
   
   XLXI_15 : FJKC_HXILINX_toplevel
      port map (C=>clk100,
                CLR=>XLXI_15_CLR_openSignal,
                J=>XLXN_53,
                K=>XLXN_52,
                Q=>state);
   
   XLXI_16 : pulse_MUSER_toplevel
      port map (clk=>clk100,
                E=>E190,
                inp=>btn1,
                outp=>XLXN_52);
   
   XLXI_17 : mux2x8_MUSER_toplevel
      port map (a(7 downto 0)=>XLXN_64(7 downto 0),
                b(7 downto 0)=>position(7 downto 0),
                sel=>state,
                c(7 downto 0)=>led(7 downto 0));
   
   XLXI_18 : shiftled_MUSER_toplevel
      port map (clk=>clk3,
                E=>XLXN_61,
                Q(7 downto 0)=>XLXN_64(7 downto 0));
   
   XLXI_19 : enable190_MUSER_toplevel
      port map (clk=>clk3,
                enable190=>XLXN_61);
   
   XLXI_35 : pulse_MUSER_toplevel
      port map (clk=>clk100,
                E=>E190,
                inp=>btn2,
                outp=>XLXN_136);
   
   XLXI_37 : ACC16_HXILINX_toplevel
      port map (ADD=>XLXN_140,
                B(15 downto 0)=>value(15 downto 0),
                C=>clk100,
                CE=>XLXN_137,
                CI=>XLXN_140,
                D(15 downto 0)=>XLXN_127(15 downto 0),
                L=>XLXN_136,
                R=>XLXI_37_R_openSignal,
                CO=>open,
                OFL=>open,
                Q(15 downto 0)=>XLXN_46(15 downto 0));
   
   XLXI_39 : mux2x8_MUSER_toplevel
      port map (a(7 downto 0)=>XLXN_148(7 downto 0),
                b(7 downto 0)=>XLXN_149(7 downto 0),
                sel=>XLXN_140,
                c(7 downto 0)=>value(7 downto 0));
   
   XLXI_45 : AND2
      port map (I0=>XLXN_144,
                I1=>state,
                O=>XLXN_137);
   
   XLXI_46 : INV
      port map (I=>XLXN_146,
                O=>XLXN_144);
   
   XLXI_47 : FD
      port map (C=>clk100,
                D=>state,
                Q=>XLXN_146);
   
end BEHAVIORAL;


