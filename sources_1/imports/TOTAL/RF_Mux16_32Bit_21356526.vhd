library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF_Mux16_32Bit_2136526 is
  Port   ( s   : in  STD_LOGIC_VECTOR (3 downto 0);
           IN00,IN01,IN02,IN03,IN04,IN05,IN06,IN07,IN08,IN09,IN10,IN11,IN12,IN13,IN14,IN15 : in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end RF_Mux16_32Bit_2136526;

architecture Behavioral of RF_Mux16_32Bit_2136526 is

begin
    
    -- process ( s,IN00,IN01,IN02,IN03,IN04,IN05,IN06,IN07,IN08,IN09,IN010,IN011,IN012,IN013,IN014,IN015)
		--begin
	 z <= IN00 after 5 ns when s="0000" else
		  IN01 after 5 ns when s="0001" else
		  IN02 after 5 ns when s="0010" else
		  IN03 after 5 ns when s="0011" else
		  IN04 after 5 ns when s="0100" else
		  IN05 after 5 ns when s="0101" else
		  IN06 after 5 ns when s="0110" else
		  IN07 after 5 ns when s="0111" else
		  IN08 after 5 ns when s="1000" else
		  IN09 after 5 ns when s="1001" else
		  IN10 after 5 ns when s="1010" else
		  IN11 after 5 ns when s="1011" else
		  IN12 after 5 ns when s="1100" else
		  IN13 after 5 ns when s="1101" else
		  IN14 after 5 ns when s="1110" else
		  IN15 after 5 ns when s="1111" else
		  "00000000000000000000000000000000" after 5 ns;
			
	--end process;

end Behavioral;