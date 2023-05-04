LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
entity RF_TempDestReg_Decoder_21356526_TB is
end RF_TempDestReg_Decoder_21356526_TB; 
architecture Behavioral of RF_TempDestReg_Decoder_21356526_TB is  
COMPONENT RF_TempDestReg_Decoder_21356526 is 
Port ( A : in std_logic_vector(3 downto 0); 
	Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15 : out std_logic);
End COMPONENT;
--Inputs
   signal A : std_logic_vector(3 downto 0);
--Outputs
 Signal Q0 : std_logic;
 Signal Q1 : std_logic;
 Signal Q2 : std_logic;
 Signal Q3 : std_logic;
 Signal Q4 : std_logic;
 Signal Q5 : std_logic;
 Signal Q6 : std_logic;
 Signal Q7 : std_logic;
 Signal Q8 : std_logic;
 Signal Q9 : std_logic;
 Signal Q10 : std_logic;
 Signal Q11 : std_logic;
 Signal Q12 : std_logic;
 Signal Q13 : std_logic;
 Signal Q14 : std_logic;
 Signal Q15 : std_logic;

--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF_TempDestReg_Decoder_21356526 PORT MAP (
	   A => A,
       Q0 => Q0,
       Q1 => Q1,
       Q2 => Q2,
       Q3 => Q3,
       Q4 => Q4,
       Q5 => Q5,
       Q6 => Q6,
       Q7 => Q7,
       Q8 => Q8,
       Q9 => Q9,
       Q10 => Q10,
       Q11 => Q11,
       Q12 => Q12,
       Q13 => Q13,
       Q14 => Q14,
       Q15 => Q15

);
stim_proc: process
   begin
wait for 10 ns;
A<="00000" ;
wait for 10 ns;	
		A <= "0001";

      wait for 10 ns;	
		A <= "0010";

      wait for 10 ns;	
		A <= "0011";

      wait for 10 ns;	
		A <= "0100";

      wait for 10 ns;	
		A <= "0101";

      wait for 10 ns;	
		A<= "0110";
  
      wait for 10 ns;	
		A <= "0111";
  
      wait for 10 ns;	
		A <= "1000";

      wait for 10 ns;	
		A <= "1001";

      wait for 10 ns;	
		A <= "1010";

      wait for 10 ns;	
		A <= "1011";

     wait for 10 ns;	
		A <= "1100";

     wait for 10 ns;	
		A <= "1101";

     wait for 10 ns;	
		A <= "1110";

     wait for 10 ns;	
		A<= "1111";

--     wait;
   end process;

END;
