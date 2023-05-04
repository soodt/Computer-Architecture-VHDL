

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DP_FullAdder_21356526_TB is
--  Port ( ); We don't need ports
end DP_FullAdder_21356526_TB;

architecture Sim of DP_FullAdder_21356526_TB is

    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DP_FullAdder_21356526
    
    PORT(
         A : in STD_LOGIC;
         B : in STD_LOGIC;
         C_IN : in STD_LOGIC;
         SUM : out STD_LOGIC;
         C_OUT : out STD_LOGIC
         );
    END COMPONENT;

   --Inputs
   
   signal A_TB : STD_LOGIC := '0';
   signal B_TB : STD_LOGIC := '0';
   signal C_IN_TB : STD_LOGIC := '0';

 	--signal   
   signal SUM_TB : STD_LOGIC := '0';
   signal C_OUT_TB : STD_LOGIC := '0';
   
      
begin

	-- Instantiate the Unit Under Test (UUT)
   uut: DP_FullAdder_21356526 PORT MAP (
          A => A_TB,
          B => B_TB,
          C_IN => C_IN_TB,
          SUM => SUM_TB,
          C_OUT => C_OUT_TB
        );

  stim_proc: process
   begin		

       A_TB <= '0'; B_TB <= '0'; C_IN_TB <= '0';
        
      wait for 20 ns;	

       A_TB <= '0'; B_TB <= '1'; C_IN_TB <= '0';

      wait for 20 ns;	
		
       A_TB <= '1'; B_TB <= '0'; C_IN_TB <= '0';
       
      wait for 20 ns;	
		
	   A_TB <= '1'; B_TB <= '1'; C_IN_TB <= '0';

      wait for 20 ns;	
		
       A_TB <= '0'; B_TB <= '0'; C_IN_TB <= '1';
        
      wait for 20 ns;	

       A_TB <= '0'; B_TB <= '1'; C_IN_TB <= '1';

      wait for 20 ns;	
		
       A_TB <= '1'; B_TB <= '0'; C_IN_TB <= '1';
       
      wait for 20 ns;	
		
	   A_TB <= '1'; B_TB <= '1'; C_IN_TB <= '1';    
 
   end process;


end Sim;
