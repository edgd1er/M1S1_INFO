
-- VHDL Instantiation Created from source file rdm.vhd -- 10:48:58 10/17/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT rdm
	PORT(
		clk : IN std_logic;
		E : IN std_logic;          
		Q : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_rdm: rdm PORT MAP(
		clk =>clk100 ,
		E => rnvp,
		Q => random
	);


