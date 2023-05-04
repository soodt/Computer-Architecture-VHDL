library ieee; 
use ieee.std_logic_1164.all; 
entity CPU_IR_21356526 is
port(  clock : in std_logic; 
	IL : in std_logic; 
	Instruction  : in std_logic_vector(31 downto 0);
	DR : out std_logic_vector(4 downto 0); 
	Opcode : out std_logic_vector(16 downto 0); 
	SA : out std_logic_vector(4 downto 0); 
	SB : out std_logic_vector(4 downto 0)
);
END  CPU_IR_21356526;

architecture Behavioral of CPU_IR_21356526 is 

begin

process(clock)
begin
if rising_edge(clock) then
 if (IL ='1') then	
	SB <= Instruction(4 downto 0);
	SA <= Instruction(9 downto 5);
	DR <= Instruction(14 downto 10);
	Opcode <= Instruction(31 downto 15);

end if;
end if;
end process;


end Behavioral;
