library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity DP_SingleBit_LogicCircuit_21356526 is
  Port (A : in std_logic ;
        B : in std_logic ;
        S0 : in std_logic ;
        S1 : in std_logic ;
        G : out std_logic 
        );
end DP_SingleBit_LogicCircuit_21356526;

architecture Behavioral of DP_SingleBit_LogicCircuit_21356526 is

begin
G <= (A and B) after 5ns when S0='0' and S1='0' else
     (A or B) after 5ns when S0='1' and S1='0'else
     (A xor B) after 5ns when S0='0' and S1='1' else
     (not A) after 5ns when S0='1' and S1='1' else
     '0' after 5ns;

end Behavioral;
