-- Vhdl instantiation template created from schematic /home/m1/dubiez/Documents/AEO_TP/roulette_vhdl/afficheur.sch - Fri Oct 17 10:53:18 2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module.
-- 2) To use this template to instantiate this component, cut-and-paste and then edit.
--

   COMPONENT afficheur
   PORT( clk	:	IN	STD_LOGIC; 
          din	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          sevenseg	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          anodes	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;

   UUT: afficheur PORT MAP(
		clk => , 
		din => , 
		sevenseg => , 
		anodes => 
   );
