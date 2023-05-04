LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

entity DP_32Bit_B_Logic_21356526_TB is
end DP_32Bit_B_Logic_21356526_TB;

architecture Behavioral of DP_32Bit_B_Logic_21356526_TB is

COMPONENT DP_32Bit_B_Logic_21356526
port(  B: in std_logic_vector(31 downto 0);
 	S0 : in std_logic; 
	S1 : in std_logic; 
	Y : out std_logic_vector(31 downto 0)
	); 
end COMPONENT;

 --Inputs

Signal B : std_logic_vector(31 downto 0);
	Signal S0 : std_logic;
	Signal S1 : std_logic;

 	--Outputs
	Signal Y : std_logic_vector(31 downto 0);

--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut:  DP_32Bit_B_Logic_21356526 PORT MAP (
B => B,
S0 => S0,
S1 => S1,
Y => Y
);

 stim_proc: process
   begin

	B <= "1010001011101111111101110";
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
