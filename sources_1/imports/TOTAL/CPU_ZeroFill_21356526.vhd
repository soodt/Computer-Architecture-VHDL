library ieee; 
use ieee.std_logic_1164.all; 
entity CPU_ZeroFill_21356526 is
port( SB : in std_logic_vector(4 downto 0); 
	MuxB : out std_logic_vector(31 downto 0)
);
End CPU_ZeroFill_21356526;
architecture Behavioral of CPU_ZeroFill_21356526 is

Begin

MuxB(4 downto 0) <= SB;
MuxB(31 downto 5) <= "0000000000000000000000000000000000000";

end Behavioral;
