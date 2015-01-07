-- Vhdl instantiation template created from schematic /home/m1/dubiez/Documents/AEO_TP/roulette_vhdl/shiftanodes.sch - Fri Oct 17 10:52:51 2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module.
-- 2) To use this template to instantiate this component, cut-and-paste and then edit.
--

   COMPONENT shiftanodes
   PORT( anodes	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          clk	:	IN	STD_LOGIC; 
          enable190	:	IN	STD_LOGIC);
   END COMPONENT;

   UUT: shiftanodes PORT MAP(
		anodes => , 
		clk => , 
		enable190 => 
   );
