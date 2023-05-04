LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RF_DestReg_Decoder_21356526_TB is 
end RF_DestReg_Decoder_21356526_TB; 
architecture Behavioral of RF_DestReg_Decoder_21356526_TB is 
 COMPONENT RF_DestReg_Decoder_21356526 is 
Port ( A : in std_logic_vector(4 downto 0); 
	Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17, Q18, Q19, Q20, Q21, Q22, Q23, Q24, Q25, Q26, Q27, Q28, Q29, Q30, Q31 : out std_logic);
end  COMPONENT;
--Inputs
   signal A : std_logic_vector(4 downto 0);
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
 Signal Q16 : std_logic;
 Signal Q17 : std_logic;
 Signal Q18 : std_logic;
 Signal Q19 : std_logic;
 Signal Q20 : std_logic;
 Signal Q21 : std_logic;
 Signal Q22 : std_logic;
 Signal Q23 : std_logic;
 Signal Q24 : std_logic;
 Signal Q25 : std_logic;
 Signal Q26 : std_logic;
 Signal Q27 : std_logic;
 Signal Q28 : std_logic;
 Signal Q29 : std_logic;
 Signal Q30 : std_logic;
 Signal Q31 : std_logic;

--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF_DestReg_Decoder_21356526 PORT MAP (
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
       Q15 => Q15,
       Q16 => Q16,
       Q17 => Q17,
       Q18 => Q18,
       Q19 => Q19,
       Q20 => Q20,
       Q21 => Q21,
       Q22 => Q22,
       Q23 => Q23,
       Q24 => Q24,
       Q25 => Q25,
       Q26 => Q26,
       Q27 => Q27,
       Q28 => Q28,
       Q29 => Q29,
       Q30 => Q30,
       Q31 => Q31
);
stim_proc: process
   begin

wait for 10 ns;
A<="00000" ;
wait for 10 ns;	
		A <= "00001";

      wait for 10 ns;	
		A <= "00010";

      wait for 10 ns;	
		A <= "00011";

      wait for 10 ns;	
		A <= "00100";

      wait for 10 ns;	
		A <= "00101";

      wait for 10 ns;	
		A<= "00110";
  
      wait for 10 ns;	
		A <= "00111";
  
      wait for 10 ns;	
		A <= "01000";

      wait for 10 ns;	
		A <= "01001";

      wait for 10 ns;	
		A <= "01010";

      wait for 10 ns;	
		A <= "01011";

     wait for 10 ns;	
		A <= "01100";

     wait for 10 ns;	
		A <= "01101";

     wait for 10 ns;	
		A <= "01110";

     wait for 10 ns;	
		A<= "01111";

     wait for 10 ns;	
		A <= "10000";

      wait for 10 ns;	
		A <= "10001";

      wait for 10 ns;	
		A <= "10010";

      wait for 10 ns;	
		A <= "10011";

      wait for 10 ns;	
		A <= "10100";

      wait for 10 ns;	
		A <= "10101";
  
      wait for 10 ns;	
		A <= "10110";
  
      wait for 10 ns;	
		A <= "10111";

      wait for 10 ns;	
		A <= "11000";

      wait for 10 ns;	
		A <= "11001";

      wait for 10 ns;	
		A <= "11010";

     wait for 10 ns;	
		A <= "11011";

     wait for 10 ns;	
		A <= "11100";

     wait for 10 ns;	
		A <= "11101";

     wait for 10 ns;	
		A <= "11110";

     wait for 10 ns;	
		A <= "11111";
 --     wait;
   end process;

END;

  
