library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
entity DP_RippleCarryAdder32Bit_TB is 
-- Port ( ); We don't need ports
end DP_RippleCarryAdder32Bit_TB; 
architecture Sim of DP_RippleCarryAdder32Bit_TB is 
-- Component Declaration for the Unit Under Test (UUT)
component DP_RippleCarryAdder32Bit 
Port ( B,A : in STD_LOGIC_VECTOR (31 downto 0); 
	C_IN : in STD_LOGIC; 
	SUM : out STD_LOGIC_VECTOR (31 downto 0); 
	C_OUT : out STD_LOGIC; 
	V : out STD_LOGIC); 
end component; 
--Inputs 
signal A_TB : STD_LOGIC_VECTOR (31 downto 0); 
signal B_TB : STD_LOGIC_VECTOR (31 downto 0); 
signal C_IN_TB : STD_LOGIC := '0'; 
--Outputs 
signal SUM_TB : STD_LOGIC_VECTOR (31 downto 0);
signal C_OUT_TB : STD_LOGIC := '0'; 
signal V_TB : STD_LOGIC := '0'; 
begin 
-- Instantiate the Unit Under Test (UUT)
 uut: DP_RippleCarryAdder32Bit PORT MAP ( 
	A => A_TB, 
	B => B_TB, 
	C_IN => C_IN_TB, 
	SUM => SUM_TB, 
	C_OUT => C_OUT_TB, 
	V => V_TB ); 
stim_proc: process 
begin 
-- Test Vector A 
A_TB <= "101";
 B_TB <= "110";
 C_IN_TB <= '0'; 
wait for 60 ns; 

-- Test Vector B 
A_TB <= "101"; 
B_TB <= "111"; 
C_IN_TB <= '0'; 
wait for 60 ns; 

-- Test Vector C
 A_TB <= "001"; 
B_TB <= "011"; 
C_IN_TB <= '0';
wait for 60 ns; 

-- Test Vector D A_TB <= "001"; 
B_TB <= "010"; 
C_IN_TB <= '0';
 wait for 60 ns; 

-- Test Vector E 
A_TB <= "010"; 
B_TB <= "110"; 
C_IN_TB <= '0'; 
wait for 60 ns;

-- Test Vector F, worst case propagation delay 
A_TB <= "110"; 
B_TB <= "001"; 
C_IN_TB <= '1'; 
wait for 60 ns;

-- carry unset 
   		
      A_TB <= "000";
      B_TB <= "000";
      C_IN_TB <= '0';
      
      wait for 20 ns;	

      A_TB <= "000";
      B_TB <= "001";
      C_IN_TB <= '0';     

      wait for 20 ns;
      	
      A_TB <= "001";
      B_TB <= "001";
      C_IN_TB <= '0'; 
      
      wait for 20 ns;	

      A_TB <= "010";
      B_TB <= "001";
      C_IN_TB <= '0';

      wait for 20 ns;	

      A_TB <= "011";
      B_TB <= "001";
      C_IN_TB <= '0';
      
      --
   
      wait for 20 ns;	

      A_TB <= "100";
      B_TB <= "001";
      C_IN_TB <= '0';     

      wait for 20 ns;
      	
      A_TB <= "101";
      B_TB <= "001";
      C_IN_TB <= '0'; 
      
      wait for 20 ns;	

      A_TB <= "110";
      B_TB <= "001";
      C_IN_TB <= '0';

      wait for 20 ns;	

      A_TB <= "111";
      B_TB <= "001";
      C_IN_TB <= '0';
        
  -- carry set 
   		
      A_TB <= "000";
      B_TB <= "000";
      C_IN_TB <= '1';
      
      wait for 20 ns;	

      A_TB <= "000";
      B_TB <= "001";
      C_IN_TB <= '1';     

      wait for 20 ns;
      	
      A_TB <= "001";
      B_TB <= "001";
      C_IN_TB <= '1'; 
      
      wait for 20 ns;	

      A_TB <= "010";
      B_TB <= "001";
      C_IN_TB <= '1';

      wait for 20 ns;	

      A_TB <= "011";
      B_TB <= "001";
      C_IN_TB <= '1';
      
      --
   
      wait for 20 ns;	

      A_TB <= "100";
      B_TB <= "001";
      C_IN_TB <= '1';     

      wait for 20 ns;
      	
      A_TB <= "101";
      B_TB <= "001";
      C_IN_TB <= '1'; 
      
      wait for 20 ns;	

      A_TB <= "110";
      B_TB <= "001";
      C_IN_TB <= '1';

      wait for 20 ns;	

      A_TB <= "111";
      B_TB <= "001";
      C_IN_TB <= '1';

 end process; 
end Sim;
