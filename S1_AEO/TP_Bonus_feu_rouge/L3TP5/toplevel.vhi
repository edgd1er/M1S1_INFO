-- Vhdl instantiation template created from schematic /home/m1/dubiez/Documents/AEO_TP/TP_Bonus/L3TP5/toplevel.sch - Mon Oct  6 18:39:30 2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module.
-- 2) To use this template to instantiate this component, cut-and-paste and then edit.
--

   COMPONENT toplevel
   PORT( clk	:	IN	STD_LOGIC; 
          Led	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          switches	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   UUT: toplevel PORT MAP(
		clk => , 
		Led => , 
		switches => 
   );
