library ieee; 
use ieee.std_logic_1164.all; 
entity CPU_CAR_21356526 is
port(  Address  : in std_logic_vector(16 downto 0);
	clock : in std_logic; 
	LoadAdd : in std_logic; 
	Reset : in std_logic; 
	CMAdd : out std_logic_vector(16 downto 0)
);
End  CPU_CAR_21356526;

architecture Behavioral of CPU_CAR_21356526 is

begin

process(clock)
begin

if rising_edge(clock) then

	if (LoadAdd='1') then
		if (Reset ='1') then 
			CMAdd <= "00000000000000000";
		if (Reset ='0') then 
			CMAdd <= Address;
		end if;
		end if;
		end if;
		end if;
end process;
end behavioral;
