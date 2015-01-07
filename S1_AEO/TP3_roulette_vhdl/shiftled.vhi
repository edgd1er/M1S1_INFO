
-- VHDL Instantiation Created from source file shiftled.vhd -- 12:04:50 10/17/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT shiftled
	PORT(
		clk : IN std_logic;
		E : IN std_logic;          
		Q : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_shiftled: shiftled PORT MAP(
		clk => ,
		E => ,
		Q => 
	);


