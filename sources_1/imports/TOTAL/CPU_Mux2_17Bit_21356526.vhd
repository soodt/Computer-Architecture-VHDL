library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_Mux2_17Bit_2136526 is
  Port   ( s   : in  STD_LOGIC;
           IN00,IN01 : in  STD_LOGIC_VECTOR (16 downto 0);
           z : out  STD_LOGIC_VECTOR (16 downto 0));
end CPU_Mux2_17Bit_2136526;

architecture Behavioral of CPU_Mux2_17Bit_2136526 is

begin
    
    -- process ( s,IN00,IN01)
		--begin
	 z <= IN00 after 5 ns when s='0' else
		  IN01 after 5 ns when s='1' else
		  "000000000000000000" after 5 ns;
			
	--end process;

end Behavioral;
