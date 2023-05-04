library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DP_Shifter_21356526_TB is
end DP_Shifter_21356526_TB;

architecture Behavioral of DP_Shifter_21356526_TB is

COMPONENT DP_Shifter_2136526
Port   ( B  : in  STD_LOGIC_VECTOR (31 downto 0);
              S1   : in  STD_LOGIC;
	    S2   : in  STD_LOGIC;
              G : out STD_LOGIC_VECTOR (31 downto 0);
	   c : out  STD_LOGIC);
end COMPONENT;

--Inputs

	Signal  B :  std_logic_vector(31 downto 0);
       Signal  S1 :  std_logic ;
 	Signal  S2 :  std_logic ;

 	--Outputs

        Signal  G :  std_logic_vector(31 downto 0); 
	Signal  c :  std_logic ;

--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DP_Shifter_2136526 PORT MAP (
	B => B,
	S1 => S1,
	S2 => S2,
        G => G,
	c=> c
);

stim_proc: process
   begin

	B <= "1010001011101111111101110";
        S1 <= '0';
	S2 <= '0';

wait for 10 ns;	

        S1 <= '0';
	S2 <= '1';

wait for 10 ns;	

        S1 <= '1';
	S2 <= '0';

wait for 10 ns;	

        S1 <= '1';
	S2 <= '1';

wait for 10 ns;	

--     wait;
   end process;

END;
