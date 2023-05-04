library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity RF_TempDestReg_Decoder_21356526 is 
Port ( A : in std_logic_vector(3 downto 0); 
	Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15 : out std_logic);
end RF_TempDestReg_Decoder_21356526; 
architecture Behavioral of RF_TempDestReg_Decoder_21356526 is 
begin 
Q0 <= '1' after 5 ns when A="0000" ;
Q1 <= '1' after 5 ns when A="0001" ;
Q2 <= '1' after 5 ns when A="0010" ;
Q3 <= '1' after 5 ns when A="0011" ;
Q4 <= '1' after 5 ns when A="0100" ;
Q5 <= '1' after 5 ns when A="0101" ;
Q6 <= '1' after 5 ns when A="0110" ;
Q7 <= '1' after 5 ns when A="0111" ;
Q8 <= '1' after 5 ns when A="1000" ;
Q9 <= '1' after 5 ns when A="1001" ;
Q10 <= '1' after 5 ns when A="1010";
Q11 <= '1' after 5 ns when A="1011";
Q12 <= '1' after 5 ns when A="1100";
Q13 <= '1' after 5 ns when A="1101";
Q14 <= '1' after 5 ns when A="1110";
Q15 <= '1' after 5 ns when A="1111";
end Behavioral;
