library ieee; 
use ieee.std_logic_1164.all; 
entity DP_CFlagMux2_1Bit_21356526_TB is
end DP_CFlagMux2_1Bit_21356526_TB;

architecture Behavioral of DP_CFlagMux2_1Bit_21356526_TB is

COMPONENT DP_CFlagMux2_1Bit_21356526
Port   ( s   : in  STD_LOGIC;
           IN00,IN01 : in  STD_LOGIC ;
           z : out  STD_LOGIC);
end COMPONENT;

   --Inputs
   signal s : std_logic;
   signal IN00 : std_logic;
   signal IN01 : std_logic;

--Outputs
   signal z : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DP_CFlagMux2_1Bit_21356526

PORT MAP (
          s => s,
IN00 => IN00,
IN01 => IN01,
 z => z
        );

stim_proc: process
   begin

IN00 <= '0';
IN01 <= '1';

      wait for 10 ns;	
      s <= '0';


      wait for 10 ns;	
      s <= '1';

 --     wait;
   end process;

END;
