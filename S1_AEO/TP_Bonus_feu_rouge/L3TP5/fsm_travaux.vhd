----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:38:51 10/03/2014 
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
    Port ( clk : in  STD_LOGIC;
				cpt : in  STD_LOGIC_VECTOR (3 downto 0);
			 travaux : in  STD_LOGIC;
			 reset_cpt : out  STD_LOGIC;
           Led : out  STD_LOGIC_VECTOR (7 downto 0));
end fsm;

architecture Behavioral of fsm is
signal Led_i : STD_LOGIC_VECTOR (7 downto 0);
signal cpt : STD_LOGIC_VECTOR (3 downto 0);
signal reset_cpt_i : STD_LOGIC;
type state_type is (RV, RO, VR, ORE,ORANGE_ON, ORANGE_OFF);
signal state, next_state: state_type;
begin
Next_ouptut : process (state)
begin
-- init des tous les signaux inter..
Led_i <="11111111";
reset_cpt <='0';
case state is 
	when RV =>
		Led_i<="10000001";
	when RO =>
		reset_cpt <='1';
		Led_i<="10000010";
	when VR =>
		Led_i<="00100100";
	when ORE =>
		Led_i <="01000001";
	when ORANGE_ON =>
		Led_i<="01000010";
	when ORANGE_OFF =>
		Led_i<="00000000";
	when others =>
		Led_i<="10100101";
	end case;
end process;

synchro : process (clk)
begin
	if clk'event and clk='1' then 
	-- changement d etat
		state <=next_state;
	-- mise a jour des ports de sortie
		Led <=Led_i;
		reset_cpt<=reset_cpt_i;
	end if;
end process;



next_node : process (state)
begin
next_state<=state;
case state is 
	when RV =>
		if travaux ='1' then 
			next_state<= ORANGE_ON;
			else
		next_state<=RO;
		end if;
	when RO =>
		next_state<=VR;
	when VR =>
		if cpt='0110' then 
		next_state<=ORE;
			else 
		next_state<=VR;
		end if;
	when ORE =>
		next_state<=RV;
	when ORANGE_ON =>
		if travaux = '0' then 
			next_state<=RO;
		else 
			next_state<=ORANGE_OFF;
		end if;
	when ORANGE_OFF =>
		next_state<=ORANGE_ON;
 when others =>
		next_state<=RV;
end case;
end process;

end Behavioral;