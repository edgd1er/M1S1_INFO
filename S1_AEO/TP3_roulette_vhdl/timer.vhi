
-- VHDL Instantiation Created from source file timer.vhd -- 11:06:40 10/17/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT timer
	PORT(
		CLK_IN1 : IN std_logic;          
		CLK_OUT1 : OUT std_logic;
		CLK_OUT2 : OUT std_logic
		);
	END COMPONENT;

	Inst_timer: timer PORT MAP(
		CLK_IN1 => ,
		CLK_OUT1 => ,
		CLK_OUT2 => 
	);


