library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity DP_SingleBit_B_Logic_21356526 is 
Port (B : in std_logic ;
        S0 : in std_logic ;
        S1 : in std_logic ;
        Y : out std_logic );
end  DP_SingleBit_B_Logic_21356526; 
architecture Behavioral of  DP_SingleBit_B_Logic_21356526 is 
begin 

Y <= '0' after 5ns when S0='0' and S1='0' else
     B after 5ns when S0='1' and S1='0'else
     (not B) after 5ns when S0='0' and S1='1' else
     '1' after 5ns when S0='1' and S1='1' else
     '0' after 5ns;

end Behavioral;
