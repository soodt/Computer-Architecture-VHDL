Library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity DP_ArithmeticLogicUnit_21356526_TB is
end DP_ArithmeticLogicUnit_21356526_TB;

architecture Behavioral of DP_ArithmeticLogicUnit_21356526_TB is

COMPONENT DP_ArithmeticLogicUnit_21356526
Port (A : in std_logic_vector(31 downto 0);
        B : in std_logic_vector(31 downto 0);
	C_IN : in std_logic ;
        S0 : in std_logic ;
        S1 : in std_logic ;
	S2 : in std_logic ;
        G : out std_logic_vector(31 downto 0); 
	C : out std_logic ;
	V : out std_logic 
	);
end COMPONENT;

 --Inputs

	Signal  A :  std_logic_vector(31 downto 0);
       Signal  B :  std_logic_vector(31 downto 0);
       Signal C_IN :  std_logic ;
       Signal  S0 :  std_logic ;
       Signal  S1 :  std_logic ;
 	Signal  S2 :  std_logic ;

 	--Outputs

        Signal  G :  std_logic_vector(31 downto 0); 
	Signal  C :  std_logic ;
	Signal  V :  std_logic ;

--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DP_ArithmeticLogicUnit_21356526 PORT MAP (

	A => A,
        B => B,
	C_IN => C_IN,
        S0 => S0,
        S1 => S1,
	S2 => S2,
        G => G,
	C => C,
	V => V
	);

 stim_proc: process
   begin

	A <= "1010001011101111111101110";
        B <= "1010001011001000001111010";
	C_IN <= '0';
        S0 <= '0';
        S1 <= '0';
	S2 <= '0';

wait for 10 ns;	

C_IN <= '0';
        S0 <= '0';
        S1 <= '0';
	S2 <= '0';

wait for 10 ns;	

C_IN <= '1';
        S0 <= '0';
        S1 <= '0';
	S2 <= '0';

wait for 10 ns;	

C_IN <= '0';
        S0 <= '1';
        S1 <= '0';
	S2 <= '0';

wait for 10 ns;	

C_IN <= '1';
        S0 <= '1';
        S1 <= '0';
	S2 <= '0';

wait for 10 ns;	

C_IN <= '0';
        S0 <= '0';
        S1 <= '1';
	S2 <= '0';

wait for 10 ns;	

C_IN <= '1';
        S0 <= '0';
        S1 <= '1';
	S2 <= '0';

wait for 10 ns;	

C_IN <= '0';
        S0 <= '1';
        S1 <= '1';
	S2 <= '0';

wait for 10 ns;	

C_IN <= '1';
        S0 <= '1';
        S1 <= '1';
	S2 <= '0';

wait for 10 ns;	

C_IN <= '0';
        S0 <= '0';
        S1 <= '0';
	S2 <= '1';

wait for 10 ns;	

C_IN <= '1';
        S0 <= '0';
        S1 <= '0';
	S2 <= '1';

wait for 10 ns;	

C_IN <= '0';
        S0 <= '1';
        S1 <= '0';
	S2 <= '1';

wait for 10 ns;	

C_IN <= '1';
        S0 <= '1';
        S1 <= '0';
	S2 <= '1';

wait for 10 ns;	

C_IN <= '0';
        S0 <= '0';
        S1 <= '1';
	S2 <= '1';

wait for 10 ns;	

C_IN <= '1';
        S0 <= '0';
        S1 <= '1';
	S2 <= '1';

wait for 10 ns;	

C_IN <= '0';
        S0 <= '1';
        S1 <= '1';
	S2 <= '1';

wait for 10 ns;	

C_IN <= '1';
        S0 <= '1';
        S1 <= '1';
	S2 <= '1';

--     wait;
   end process;

END;

