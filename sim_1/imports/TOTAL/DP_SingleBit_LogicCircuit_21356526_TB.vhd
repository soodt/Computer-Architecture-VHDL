library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity DP_SingleBit_LogicCircuit_21356526_TB is
end DP_SingleBit_LogicCircuit_21356526_TB;

architecture Behavioral of DP_SingleBit_LogicCircuit_21356526_TB is

COMPONENT DP_SingleBit_LogicCircuit_21356526
Port (A : in std_logic ;
        B : in std_logic ;
        S0 : in std_logic ;
        S1 : in std_logic ;
        G : out std_logic );
end COMPONENT;

 --Inputs
	
	Signal A : std_logic;
	Signal B : std_logic;
	Signal S0 : std_logic;
	Signal S1 : std_logic;

 	--Outputs
	Signal G : std_logic;

--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
A => A,
B => B,
S0 => S0,
S1 => S1,
G => G
);

 stim_proc: process
   begin
	
	A <= '0';
	B <= '0';
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

	A <= '0';
	B <= '1';
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

	A <= '1';
	B <= '0';
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

	A <= '1';
	B <= '1';
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

--     wait;
   end process;

END;
