----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:38 10/17/2014 
-- Design Name: 
-- Module Name:    decodeur3_8 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decodeur3_8 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           D : out  STD_LOGIC_VECTOR (7 downto 0));
end decodeur3_8;

architecture Behavioral of decodeur3_8 is
begin
with A(3 downto 1) select
      D <= "00000001" when "000",
          "00000010" when "001",
          "00000100" when "010",
          "00001000" when "011",
          "00010000" when "100",
          "00100000" when "101",
          "01000000" when "110",
          "10000000" when "111",
          "00000000" when others;
end Behavioral;