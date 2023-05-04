library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.NUMERIC_STD.ALL; 
entity CPU_RAM_21356526 is 
	Port ( Clock : in STD_LOGIC; 
	Address : in STD_LOGIC_VECTOR (31 downto 0);
	DataIn : in STD_LOGIC_VECTOR (31 downto 0); 
	WriteEnable : in STD_LOGIC; 
	DataOut : out STD_LOGIC_VECTOR (31 downto 0)
	);
end CPU_RAM_21356526;
architecture Behavioral of CPU_RAM_21356526 is
 -- we use the least significant 4 bit of the address 
type RAM_array is array(0 to 15) of STD_LOGIC_VECTOR (31 downto 0);
signal RAM : RAM_array:=( 
X"00000000",-- 00 
X"00000001",-- 01 
X"00000002",-- 02 
X"00000003",-- 03 
X"00000004",-- 04 
X"00000005",-- 05 
X"00000006",-- 06 
X"00000007",-- 07 
X"00000008",-- 08 
X"00000009",-- 09 
X"0000000A",-- 0A 
X"0000000B",-- 0B 
X"0000000C",-- 0C 
X"0000000D",-- 0D 
X"0000000E",-- 0E 
X"0000000F" -- 0F 
);
begin 
process (Clock) 
begin 
if Clock'event and Clock='1' then 
	if WriteEnable='1' then 
		RAM(to_integer(unsigned(Address(3 downto 0)))) <= DataIn after 2ns;
	end if; 
end if; 
end process; 
DataOut <= RAM(to_integer(unsigned(Address(3 downto 0)))) after 2ns;
end Behavioral;
