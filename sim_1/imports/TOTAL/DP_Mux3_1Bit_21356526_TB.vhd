lIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DP_Mux3_1Bit_21356526_TB IS

END DP_Mux3_1Bit_21356526_TB;
 
ARCHITECTURE behavior OF DP_Mux3_1Bit_21356526_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DP_Mux3_1Bit_21356526
    PORT(
           S1   : in  STD_LOGIC;
	   S2   : in  STD_LOGIC;
           IN00,IN01,IN02 : in  STD_LOGIC;
           z : out  STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal S1 : std_logic ;
   signal S2 : std_logic ;
   signal IN00 : std_logic ;
   signal IN01 : std_logic ;
   signal IN02 : std_logic ;

 	--Outputs
   signal z : std_logic;
   -- No clocks detected in port list. Replace <clock
   
   --> below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DP_Mux3_1Bit_21356526 PORT MAP (
          S1 => S1,
          S2 => S2,
IN00 => IN00,
IN01 => IN01,
IN02 => IN02,
          z => z
        );

   stim_proc: process
   begin		
IN00 <= '0';
IN01 <= '1';
IN02 <= '0';

      wait for 10 ns;	
      S1 <= '0';
      S2<= '0';
      wait for 10 ns;	
		 S1 <= '0';
    		  S2<= '1';
	 wait for 10 ns;	
		 S1 <= '1';
      		S2<= '0';

	 wait for 10 ns;	
		 S1 <= '1';
      		S2<= '1';

     
 --     wait;
   end process;

END;
