----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:22:19 09/26/2014 
-- Design Name: 
-- Module Name:    X7seg - Behavioral 
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

entity X7seg is
    Port ( Sw : in  STD_LOGIC_VECTOR (3 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0));
end X7seg;

architecture Behavioral of X7seg is

begin


with sw select 
sevenseg <=
            "1000000" when x"0" ,
            "1111001" when x"1" ,
            "0100100" when x"2" ,
            "0110000" when x"3" ,
            "0011001" when x"4" ,
            "0010010" when x"5" ,
            "0000010" when x"6" ,
            "1111000" when x"7" ,
            "0000000" when x"8" ,
            "0010000" when x"9" ,
            "0001000" when x"A" ,
            "0000011" when x"B" ,
            "1000110" when x"C" ,
            "0100001" when x"D" ,
            "0000110" when x"E" ,
            "0001110" when others;
end Behavioral;

