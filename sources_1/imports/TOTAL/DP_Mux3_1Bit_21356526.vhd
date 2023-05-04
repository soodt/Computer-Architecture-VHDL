library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DP_Mux3_1Bit_2136526 is
  Port   ( S1   : in  STD_LOGIC;
	   S2   : in  STD_LOGIC;
           IN00,IN01,IN02 : in  STD_LOGIC ;
           z : out  STD_LOGIC);
end DP_Mux3_1Bit_2136526;

architecture Behavioral of DP_Mux3_1Bit_2136526 is

begin
    
    -- process ( s,IN00,IN01)
		--begin
	 z <= IN00 after 5 ns when (S1='0' AND S2='0') else
		  IN01 after 5 ns when (S1='0' AND S2='1') else
		IN02 after 5 ns when  (S1='1' AND S2='0') else
		  '0' after 5 ns;
			
	--end process;

end Behavioral;
