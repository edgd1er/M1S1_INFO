--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : toplevel.vhf
-- /___/   /\     Timestamp : 10/10/2014 10:32:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath /home/m1/dubiez/Documents/AEO_TP/TP2/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl /home/m1/dubiez/Documents/AEO_TP/TP2/toplevel.vhf -w /home/m1/dubiez/Documents/AEO_TP/TP2/toplevel.sch
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

entity shiftanodes_MUSER_toplevel is
   port ( clk       : in    std_logic; 
          Enable190 : in    std_logic; 
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

entity Mux4x4_MUSER_toplevel is
   port ( I0 : in    std_logic_vector (3 downto 0); 
          I1 : in    std_logic_vector (3 downto 0); 
          I2 : in    std_logic_vector (3 downto 0); 
          I3 : in    std_logic_vector (3 downto 0); 
          s  : in    std_logic_vector (1 downto 0); 
          O  : out   std_logic_vector (3 downto 0));
end Mux4x4_MUSER_toplevel;

architecture BEHAVIORAL of Mux4x4_MUSER_toplevel is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_28 : std_logic;
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_13";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_14";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_15";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_16";
begin
   XLXI_1 : M4_1E_HXILINX_toplevel
      port map (D0=>I0(3),
                D1=>I1(3),
                D2=>I2(3),
                D3=>I3(3),
                E=>XLXN_28,
                S0=>s(0),
                S1=>s(1),
                O=>O(3));
   
   XLXI_2 : M4_1E_HXILINX_toplevel
      port map (D0=>I0(2),
                D1=>I1(2),
                D2=>I2(2),
                D3=>I3(2),
                E=>XLXN_28,
                S0=>s(0),
                S1=>s(1),
                O=>O(2));
   
   XLXI_3 : M4_1E_HXILINX_toplevel
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
   
   XLXI_5 : M4_1E_HXILINX_toplevel
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

entity Enable190_MUSER_toplevel is
   port ( clk       : in    std_logic; 
          Enable190 : out   std_logic);
end Enable190_MUSER_toplevel;

architecture BEHAVIORAL of Enable190_MUSER_toplevel is
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
   
   component CB16CE_HXILINX_toplevel
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_17";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_18";
begin
   XLXI_1 : CB4CE_HXILINX_toplevel
      port map (C=>clk,
                CE=>XLXN_9,
                CLR=>XLXI_1_CLR_openSignal,
                CEO=>open,
                Q0=>open,
                Q1=>open,
                Q2=>clk190,
                Q3=>open,
                TC=>open);
   
   XLXI_2 : CB16CE_HXILINX_toplevel
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

entity afficheur_MUSER_toplevel is
   port ( clk      : in    std_logic; 
          din      : in    std_logic_vector (15 downto 0); 
          anodes   : out   std_logic_vector (3 downto 0); 
          sevenseg : out   std_logic_vector (6 downto 0));
end afficheur_MUSER_toplevel;

architecture BEHAVIORAL of afficheur_MUSER_toplevel is
   attribute HU_SET     : string ;
   signal sel                   : std_logic_vector (1 downto 0);
   signal XLXN_14               : std_logic_vector (3 downto 0);
   signal XLXN_29               : std_logic;
   signal XLXI_8_CLR_openSignal : std_logic;
   component Mux4x4_MUSER_toplevel
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
   
   component CB2CE_HXILINX_toplevel
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component Enable190_MUSER_toplevel
      port ( clk       : in    std_logic; 
             Enable190 : out   std_logic);
   end component;
   
   component shiftanodes_MUSER_toplevel
      port ( clk       : in    std_logic; 
             Enable190 : in    std_logic; 
             anodes    : out   std_logic_vector (3 downto 0));
   end component;
   
   attribute HU_SET of XLXI_8 : label is "XLXI_8_19";
begin
   XLXI_6 : Mux4x4_MUSER_toplevel
      port map (I0(3 downto 0)=>din(3 downto 0),
                I1(3 downto 0)=>din(7 downto 4),
                I2(3 downto 0)=>din(11 downto 8),
                I3(3 downto 0)=>din(15 downto 12),
                s(1 downto 0)=>sel(1 downto 0),
                O(3 downto 0)=>XLXN_14(3 downto 0));
   
   XLXI_7 : X7seg
      port map (Sw(3 downto 0)=>XLXN_14(3 downto 0),
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
   XLXI_8 : CB2CE_HXILINX_toplevel
      port map (C=>clk,
                CE=>XLXN_29,
                CLR=>XLXI_8_CLR_openSignal,
                CEO=>open,
                Q0=>sel(0),
                Q1=>sel(1),
                TC=>open);
   
   XLXI_9 : Enable190_MUSER_toplevel
      port map (clk=>clk,
                Enable190=>XLXN_29);
   
   XLXI_15 : shiftanodes_MUSER_toplevel
      port map (clk=>clk,
                Enable190=>XLXN_29,
                anodes(3 downto 0)=>anodes(3 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity RDM_MUSER_toplevel is
   port ( CE  : in    std_logic; 
          clk : in    std_logic; 
          Q   : out   std_logic_vector (3 downto 0));
end RDM_MUSER_toplevel;

architecture BEHAVIORAL of RDM_MUSER_toplevel is
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

entity pulse_MUSER_toplevel is
   port ( clk  : in    std_logic; 
          E    : in    std_logic; 
          inp  : in    std_logic; 
          outp : out   std_logic);
end pulse_MUSER_toplevel;

architecture BEHAVIORAL of pulse_MUSER_toplevel is
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
   signal XLXN_7   : std_logic;
   signal XLXN_10  : std_logic;
   component timer
      port ( clk_in1  : in    std_logic; 
             clk_out1 : out   std_logic; 
             clk_out2 : out   std_logic);
   end component;
   
   component Enable190_MUSER_toplevel
      port ( clk       : in    std_logic; 
             Enable190 : out   std_logic);
   end component;
   
   component pulse_MUSER_toplevel
      port ( inp  : in    std_logic; 
             E    : in    std_logic; 
             clk  : in    std_logic; 
             outp : out   std_logic);
   end component;
   
   component RDM_MUSER_toplevel
      port ( clk : in    std_logic; 
             CE  : in    std_logic; 
             Q   : out   std_logic_vector (3 downto 0));
   end component;
   
   component afficheur_MUSER_toplevel
      port ( clk      : in    std_logic; 
             din      : in    std_logic_vector (15 downto 0); 
             sevenseg : out   std_logic_vector (6 downto 0); 
             anodes   : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : timer
      port map (clk_in1=>clk,
                clk_out1=>clk100,
                clk_out2=>clk3);
   
   XLXI_2 : Enable190_MUSER_toplevel
      port map (clk=>clk100,
                Enable190=>XLXN_7);
   
   XLXI_3 : pulse_MUSER_toplevel
      port map (clk=>clk100,
                E=>XLXN_7,
                inp=>btn0,
                outp=>XLXN_10);
   
   XLXI_4 : RDM_MUSER_toplevel
      port map (CE=>XLXN_10,
                clk=>clk100,
                Q(3 downto 0)=>din(3 downto 0));
   
   XLXI_5 : afficheur_MUSER_toplevel
      port map (clk=>clk100,
                din(15 downto 0)=>din(15 downto 0),
                anodes(3 downto 0)=>anodes(3 downto 0),
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
end BEHAVIORAL;


