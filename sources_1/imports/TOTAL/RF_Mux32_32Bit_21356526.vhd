library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF_Mux32_32Bit_2136526 is
  Port   ( s   : in  STD_LOGIC_VECTOR (4 downto 0);
           IN00,IN01,IN02,IN03,IN04,IN05,IN06,IN07,IN08,IN09,IN10,IN11,IN12,IN13,IN14,IN15,IN16,IN17,IN18,IN19,IN20,IN21,IN22,IN23,IN24,IN25,IN26,IN27,IN28,IN29,IN30,IN31 : in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end RF_Mux32_32Bit_2136526;

architecture Behavioral of RF_Mux32_32Bit_2136526 is

begin
    
    -- process ( s,IN00,IN01,IN02,IN03,IN04,IN05,IN06,IN07,IN08,IN09,IN010,IN011,IN012,IN013,IN014,IN015)
		--begin
	 z <= IN00 after 5 ns when s="00000" else
		  IN01 after 5 ns when s="00001" else
		  IN02 after 5 ns when s="00010" else
		  IN03 after 5 ns when s="00011" else
		  IN04 after 5 ns when s="00100" else
		  IN05 after 5 ns when s="00101" else
		  IN06 after 5 ns when s="00110" else
		  IN07 after 5 ns when s="00111" else
		  IN08 after 5 ns when s="01000" else
		  IN09 after 5 ns when s="01001" else
		  IN10 after 5 ns when s="01010" else
		  IN11 after 5 ns when s="01011" else
		  IN12 after 5 ns when s="01100" else
		  IN13 after 5 ns when s="01101" else
		  IN14 after 5 ns when s="01110" else
		  IN15 after 5 ns when s="01111" else
		  IN16 after 5 ns when s="10000" else
		  IN17 after 5 ns when s="10001" else
		  IN18 after 5 ns when s="10010" else
		  IN19 after 5 ns when s="10011" else
		  IN20 after 5 ns when s="10100" else
		  IN21 after 5 ns when s="10101" else
		  IN22 after 5 ns when s="10110" else
		  IN23 after 5 ns when s="10111" else
		  IN24 after 5 ns when s="11000" else
		  IN25 after 5 ns when s="11001" else
		  IN26 after 5 ns when s="11010" else
		  IN28 after 5 ns when s="11100" else
		  IN29 after 5 ns when s="11101" else
		  IN30 after 5 ns when s="11110" else
		  IN31 after 5 ns when s="11111" else
		  "00000000000000000000000000000000" after 5 ns;
			
	--end process;

end Behavioral;