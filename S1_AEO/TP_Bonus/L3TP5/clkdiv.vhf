--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : clkdiv.vhf
-- /___/   /\     Timestamp : 10/06/2014 20:41:46
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP_Bonus/L3TP5/clkdiv.vhf -w F:/Documents_utilisateurs/Francois/_Hubic/Documents/Formation/S1_AEO/AEO_TP/TP_Bonus/L3TP5/clkdiv.sch
--Design Name: clkdiv
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

entity clkdiv is
   port ( clk    : in    std_logic; 
          clksec : out   std_logic; 
          clk190 : out   std_logic);
end clkdiv;

architecture BEHAVIORAL of clkdiv is
   attribute BOX_TYPE   : string ;
   signal XLXN_1       : std_logic;
   signal XLXN_4       : std_logic;
   signal XLXN_5       : std_logic;
   signal XLXN_6       : std_logic;
   signal XLXN_7       : std_logic;
   signal XLXN_8       : std_logic;
   signal XLXN_9       : std_logic;
   signal XLXN_10      : std_logic;
   signal XLXN_11      : std_logic;
   signal XLXN_13      : std_logic;
   signal XLXN_14      : std_logic;
   signal XLXN_19      : std_logic;
   signal XLXN_22      : std_logic;
   signal XLXN_23      : std_logic;
   signal XLXN_28      : std_logic;
   signal XLXN_29      : std_logic;
   signal XLXN_30      : std_logic;
   signal XLXN_31      : std_logic;
   signal XLXN_32      : std_logic;
   signal XLXN_34      : std_logic;
   signal XLXN_35      : std_logic;
   signal XLXN_36      : std_logic;
   signal XLXN_37      : std_logic;
   signal XLXN_38      : std_logic;
   signal XLXN_39      : std_logic;
   signal XLXN_40      : std_logic;
   signal XLXN_41      : std_logic;
   signal XLXN_42      : std_logic;
   signal XLXN_44      : std_logic;
   signal XLXN_45      : std_logic;
   signal XLXN_46      : std_logic;
   signal XLXN_47      : std_logic;
   signal XLXN_48      : std_logic;
   signal XLXN_50      : std_logic;
   signal XLXN_51      : std_logic;
   signal XLXN_53      : std_logic;
   signal XLXN_54      : std_logic;
   signal XLXN_55      : std_logic;
   signal XLXN_56      : std_logic;
   signal XLXN_57      : std_logic;
   signal XLXN_58      : std_logic;
   signal XLXN_60      : std_logic;
   signal XLXN_61      : std_logic;
   signal XLXN_62      : std_logic;
   signal XLXN_63      : std_logic;
   signal XLXN_64      : std_logic;
   signal XLXN_66      : std_logic;
   signal XLXN_67      : std_logic;
   signal XLXN_68      : std_logic;
   signal XLXN_72      : std_logic;
   signal XLXN_73      : std_logic;
   signal XLXN_74      : std_logic;
   signal clk190_DUMMY : std_logic;
   signal clksec_DUMMY : std_logic;
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
   
begin
   clksec <= clksec_DUMMY;
   clk190 <= clk190_DUMMY;
   FD1 : FD
      port map (C=>clk,
                D=>XLXN_1,
                Q=>XLXN_23);
   
   FD2 : FD
      port map (C=>XLXN_23,
                D=>XLXN_22,
                Q=>XLXN_4);
   
   FD3 : FD
      port map (C=>XLXN_4,
                D=>XLXN_5,
                Q=>XLXN_6);
   
   FD4 : FD
      port map (C=>XLXN_6,
                D=>XLXN_7,
                Q=>XLXN_8);
   
   FD5 : FD
      port map (C=>XLXN_8,
                D=>XLXN_9,
                Q=>XLXN_10);
   
   FD6 : FD
      port map (C=>XLXN_10,
                D=>XLXN_11,
                Q=>XLXN_19);
   
   FD7 : FD
      port map (C=>XLXN_19,
                D=>XLXN_13,
                Q=>XLXN_14);
   
   XLXI_2 : INV
      port map (I=>XLXN_23,
                O=>XLXN_1);
   
   XLXI_4 : INV
      port map (I=>XLXN_4,
                O=>XLXN_22);
   
   XLXI_6 : INV
      port map (I=>XLXN_6,
                O=>XLXN_5);
   
   XLXI_8 : INV
      port map (I=>XLXN_8,
                O=>XLXN_7);
   
   XLXI_10 : INV
      port map (I=>XLXN_10,
                O=>XLXN_9);
   
   XLXI_12 : INV
      port map (I=>XLXN_19,
                O=>XLXN_11);
   
   XLXI_14 : INV
      port map (I=>XLXN_14,
                O=>XLXN_13);
   
   XLXI_16 : INV
      port map (I=>XLXN_41,
                O=>XLXN_28);
   
   XLXI_17 : INV
      port map (I=>XLXN_29,
                O=>XLXN_40);
   
   XLXI_18 : FD
      port map (C=>XLXN_29,
                D=>XLXN_30,
                Q=>XLXN_31);
   
   XLXI_19 : INV
      port map (I=>XLXN_31,
                O=>XLXN_30);
   
   XLXI_20 : FD
      port map (C=>XLXN_31,
                D=>XLXN_32,
                Q=>XLXN_34);
   
   XLXI_21 : INV
      port map (I=>XLXN_34,
                O=>XLXN_32);
   
   XLXI_22 : FD
      port map (C=>XLXN_34,
                D=>XLXN_35,
                Q=>XLXN_36);
   
   XLXI_23 : INV
      port map (I=>XLXN_36,
                O=>XLXN_35);
   
   XLXI_24 : INV
      port map (I=>XLXN_39,
                O=>XLXN_42);
   
   XLXI_25 : FD
      port map (C=>XLXN_39,
                D=>XLXN_37,
                Q=>XLXN_38);
   
   XLXI_26 : INV
      port map (I=>XLXN_38,
                O=>XLXN_37);
   
   XLXI_27 : FD
      port map (C=>XLXN_14,
                D=>XLXN_28,
                Q=>XLXN_41);
   
   XLXI_28 : FD
      port map (C=>XLXN_41,
                D=>XLXN_40,
                Q=>XLXN_29);
   
   XLXI_29 : FD
      port map (C=>XLXN_36,
                D=>XLXN_42,
                Q=>XLXN_39);
   
   XLXI_30 : INV
      port map (I=>XLXN_57,
                O=>XLXN_44);
   
   XLXI_31 : INV
      port map (I=>XLXN_45,
                O=>XLXN_56);
   
   XLXI_32 : FD
      port map (C=>XLXN_45,
                D=>XLXN_46,
                Q=>XLXN_47);
   
   XLXI_33 : INV
      port map (I=>XLXN_47,
                O=>XLXN_46);
   
   XLXI_34 : FD
      port map (C=>XLXN_47,
                D=>XLXN_48,
                Q=>XLXN_50);
   
   XLXI_35 : INV
      port map (I=>XLXN_50,
                O=>XLXN_48);
   
   XLXI_36 : FD
      port map (C=>XLXN_50,
                D=>XLXN_51,
                Q=>clk190_DUMMY);
   
   XLXI_37 : INV
      port map (I=>clk190_DUMMY,
                O=>XLXN_51);
   
   XLXI_38 : INV
      port map (I=>XLXN_55,
                O=>XLXN_58);
   
   XLXI_39 : FD
      port map (C=>XLXN_55,
                D=>XLXN_53,
                Q=>XLXN_54);
   
   XLXI_40 : INV
      port map (I=>XLXN_54,
                O=>XLXN_53);
   
   XLXI_41 : FD
      port map (C=>XLXN_38,
                D=>XLXN_44,
                Q=>XLXN_57);
   
   XLXI_42 : FD
      port map (C=>XLXN_57,
                D=>XLXN_56,
                Q=>XLXN_45);
   
   XLXI_43 : FD
      port map (C=>clk190_DUMMY,
                D=>XLXN_58,
                Q=>XLXN_55);
   
   XLXI_44 : INV
      port map (I=>XLXN_73,
                O=>XLXN_60);
   
   XLXI_45 : INV
      port map (I=>XLXN_61,
                O=>XLXN_72);
   
   XLXI_46 : FD
      port map (C=>XLXN_61,
                D=>XLXN_62,
                Q=>XLXN_63);
   
   XLXI_47 : INV
      port map (I=>XLXN_63,
                O=>XLXN_62);
   
   XLXI_48 : FD
      port map (C=>XLXN_63,
                D=>XLXN_64,
                Q=>XLXN_66);
   
   XLXI_49 : INV
      port map (I=>XLXN_66,
                O=>XLXN_64);
   
   XLXI_50 : FD
      port map (C=>XLXN_66,
                D=>XLXN_67,
                Q=>XLXN_68);
   
   XLXI_51 : INV
      port map (I=>XLXN_68,
                O=>XLXN_67);
   
   XLXI_52 : INV
      port map (I=>clksec_DUMMY,
                O=>XLXN_74);
   
   XLXI_55 : FD
      port map (C=>XLXN_54,
                D=>XLXN_60,
                Q=>XLXN_73);
   
   XLXI_56 : FD
      port map (C=>XLXN_73,
                D=>XLXN_72,
                Q=>XLXN_61);
   
   XLXI_57 : FD
      port map (C=>XLXN_68,
                D=>XLXN_74,
                Q=>clksec_DUMMY);
   
end BEHAVIORAL;


