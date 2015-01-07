----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:51:38 10/17/2014 
-- Design Name: 
-- Module Name:    fsm - Behavioral 
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

entity fsm is
 Port ( clk : in STD_LOGIC;
         J : in STD_LOGIC;
			K : in STD_LOGIC;
         Q : out STD_LOGIC);
end fsm;


architecture Behavioral of fsm is
signal output : std_logic;
begin
process (clk)
begin
     if clk'event and clk='1' then
         if (J = '0' and K = '0') then
              output <= output;
         elsif (J = '1' and K = '0') then
              output <= '1';
         elsif (J = '0' and K = '1') then
              output <= '0';
         elsif (J = '1' and K = '1') then
              output <= not(output);
         end if;
     end if;
     Q <= output;
end process;
end Behavioral;