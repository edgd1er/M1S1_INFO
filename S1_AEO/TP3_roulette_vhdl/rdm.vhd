----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:42:13 10/17/2014 
-- Design Name: 
-- Module Name:    rdm - Behavioral 
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

entity rdm is
 Port ( clk : in STD_LOGIC;
         E : in STD_LOGIC;
         Q : out STD_LOGIC_VECTOR (3 downto 0));
end rdm;



architecture Behavioral of rdm is
signal count : std_logic_vector (3 downto 0):="0001";
signal LF : std_logic;
begin
     LF <= count(3) xor count(2);
     process (clk)
     begin
         if clk'event and clk='1' then
              if E='1' then
              count <= count(2) & count(1) & count(0) & LF;
              end if;
         end if;
     end process;
     Q<= count;
end Behavioral;



