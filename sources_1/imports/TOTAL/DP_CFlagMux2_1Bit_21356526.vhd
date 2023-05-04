library ieee; 
use ieee.std_logic_1164.all; 
entity DP_CFlagMux2_1Bit_21356526 is
Port   ( s   : in  STD_LOGIC;
           IN00,IN01 : in  STD_LOGIC ;
           z : out  STD_LOGIC);
end DP_CFlagMux2_1Bit_21356526;

architecture Behavioral of DP_CFlagMux2_1Bit_21356526 is

begin
    
    -- process ( s,IN00,IN01)
		--begin
	 z <= IN00 after 5 ns when s='0' else
		  IN01 after 5 ns when s='1' else
		  '0' after 5 ns;
			
	--end process;

end Behavioral;
