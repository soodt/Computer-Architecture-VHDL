LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CPU_Mux2_32Bit_21356526_TB IS

END CPU_Mux2_32Bit_21356526_TB;
 
ARCHITECTURE behavior OF CPU_Mux2_32Bit_21356526_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU_Mux2_32Bit_21356526
    PORT(
         s   : in  STD_LOGIC;
           IN00,IN01 : in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic;
   signal IN00 : std_logic_vector(31 downto 0);
   signal IN01 : std_logic_vector(31 downto 0);

 	--Outputs
   signal z : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock
   
   --> below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU_Mux2_32Bit_21356526 PORT MAP (
          s => s,
IN00 => IN00,
IN01 => IN01,
          z => z
        );

   stim_proc: process
   begin		
IN00 <= "1010001011101111111101110";
IN01 <= "1010001011101111111101111";

      wait for 10 ns;	
      s <= '0';

      wait for 10 ns;	
		s <= '1';
     
 --     wait;
   end process;

END;
