library ieee; 
use ieee.std_logic_1164.all; 
entity DP_ShifterCFlagMux2_1Bit_21356526 is
Port   ( S1   : in  STD_LOGIC;
	   S2   : in  STD_LOGIC;
           IN00,IN01 : in  STD_LOGIC ;
           z : out  STD_LOGIC);
end DP_ShifterCFlagMux2_1Bit_21356526;

architecture Behavioral of DP_ShifterCFlagMux2_1Bit_21356526 is

begin
    
	 z <= IN00 after 5 ns when (S1='1' AND S2='0') else
		  IN01 after 5 ns when (S1='0' AND S2='1') else
		  '0' after 5 ns;
			
	--end process;

end Behavioral;
