--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : Mux4x4_drc.vhf
-- /___/   /\     Timestamp : 10/09/2014 07:36:12
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\12.4\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -sympath C:/Users/Romain/Desktop/ASE/Roulette/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl Mux4x4_drc.vhf -w C:/Users/Romain/Desktop/ASE/Roulette/Mux4x4.sch
--Design Name: Mux4x4
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M4_1E_HXILINX_Mux4x4 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_Mux4x4 is
  
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
end M4_1E_HXILINX_Mux4x4;

architecture M4_1E_HXILINX_Mux4x4_V of M4_1E_HXILINX_Mux4x4 is
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
end M4_1E_HXILINX_Mux4x4_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mux4x4 is
   port ( I0 : in    std_logic_vector (3 downto 0); 
          I1 : in    std_logic_vector (3 downto 0); 
          I2 : in    std_logic_vector (3 downto 0); 
          I3 : in    std_logic_vector (3 downto 0); 
          S  : in    std_logic_vector (1 downto 0); 
          O  : out   std_logic_vector (3 downto 0));
end Mux4x4;

architecture BEHAVIORAL of Mux4x4 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_47 : std_logic;
   component M4_1E_HXILINX_Mux4x4
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_2";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_3";
begin
   XLXI_1 : M4_1E_HXILINX_Mux4x4
      port map (D0=>I0(3),
                D1=>I1(3),
                D2=>I2(3),
                D3=>I3(3),
                E=>XLXN_47,
                S0=>S(0),
                S1=>S(1),
                O=>O(3));
   
   XLXI_2 : M4_1E_HXILINX_Mux4x4
      port map (D0=>I0(2),
                D1=>I1(2),
                D2=>I2(2),
                D3=>I3(2),
                E=>XLXN_47,
                S0=>S(0),
                S1=>S(1),
                O=>O(2));
   
   XLXI_3 : M4_1E_HXILINX_Mux4x4
      port map (D0=>I0(1),
                D1=>I1(1),
                D2=>I2(1),
                D3=>I3(1),
                E=>XLXN_47,
                S0=>S(0),
                S1=>S(1),
                O=>O(1));
   
   XLXI_4 : M4_1E_HXILINX_Mux4x4
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


