library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity RF_DestReg_Decoder_21356526 is

Port ( A0 : in std_logic_vector(4 downto 0);

Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31 : out std_logic);

end RF_DestReg_Decoder_21356526;
architecture Behavioral of RF_DestReg_Decoder_21356526 is
begin
Q0<= '1' after 5 ns when A0 = "00000";
Q1<= '1' after 5 ns when A0 = "00001";
Q2<= '1' after 5 ns when A0 = "00010";
Q3<= '1' after 5 ns when A0 = "00011";
Q4<= '1' after 5 ns when A0 = "00100";
Q5<= '1' after 5 ns when A0 = "00101";
Q6<= '1' after 5 ns when A0 = "00110";
Q7<= '1' after 5 ns when A0 = "00111";
Q8<= '1' after 5 ns when A0 = "01000";
Q9<= '1' after 5 ns when A0 = "01001";
Q10<= '1' after 5 ns when A0 = "01010";
Q11<= '1' after 5 ns when A0 = "01011";
Q12<= '1' after 5 ns when A0 = "01100";
Q13<= '1' after 5 ns when A0 = "01101";
Q14<= '1' after 5 ns when A0 = "01110";
Q15<= '1' after 5 ns when A0 = "01111";
Q16<= '1' after 5 ns when A0 = "10000";
Q17<= '1' after 5 ns when A0 = "10001";
Q18<= '1' after 5 ns when A0 = "10010";
Q19<= '1' after 5 ns when A0 = "10011";
Q20<= '1' after 5 ns when A0 = "10100";
Q21<= '1' after 5 ns when A0 = "10101";
Q22<= '1' after 5 ns when A0 = "10110";
Q23<= '1' after 5 ns when A0 = "10111";
Q24<= '1' after 5 ns when A0 = "11000";
Q25<= '1' after 5 ns when A0 = "11001";
Q26<= '1' after 5 ns when A0 = "11010";
Q27<= '1' after 5 ns when A0 = "11011";
Q28<= '1' after 5 ns when A0 = "11100";
Q29<= '1' after 5 ns when A0 = "11101";
Q30<= '1' after 5 ns when A0 = "11110";
Q31<= '1' after 5 ns when A0 = "11111";


end Behavioral;