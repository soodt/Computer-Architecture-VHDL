library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity DP_32Bit_LogicCircuit_21356526_TB is
end DP_32Bit_LogicCircuit_21356526_TB;

architecture Behavioral of DP_32Bit_LogicCircuit_21356526_TB is

COMPONENT  DP_32Bit_LogicCircuit_21356526
Port (A : in std_logic_vector(31 downto 0);
        B : in std_logic_vector(31 downto 0);
        S0 : in std_logic ;
        S1 : in std_logic ;
        G : out std_logic_vector(31 downto 0) 
	);
end COMPONENT;

--Inputs
	
	Signal A : std_logic_vector(31 downto 0);
	Signal B : std_logic_vector(31 downto 0);
	Signal S0 : std_logic;
	Signal S1 : std_logic;

 	--Outputs
	Signal G : std_logic_vector(31 downto 0);

--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut:  DP_32Bit_LogicCircuit_21356526  PORT MAP (
A => A,
B => B,
S0 => S0,
S1 => S1,
G => G
);

 stim_proc: process
   begin
	
	A <= "1010001011101111111101110";
	B <= "1010001011001000001111010";
	S0 <= '0';
	S1 <='0';

 wait for 10 ns;	
	S0 <= '1';
	S1 <='0';

 wait for 10 ns;	
	S0 <= '0';
	S1 <='1';

 wait for 10 ns;	
	S0 <= '1';
	S1 <='1';

wait for 10 ns;	

--     wait;
   end process;

END;
