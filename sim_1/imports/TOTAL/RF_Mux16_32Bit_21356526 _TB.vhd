--------------------------------------------------------------------------------
-- Company: Trinity College
-- Engineer: Dr. Michael Manzke
--
-- Create Date:   11:50:59 02/23/2012
-- Design Name:   
-- Module Name:   C:/Xilinx/12.4/ISE_DS/ISE/ISEexamples/MichaelsMultiplexer/multiplexer_tb.vhd
-- Project Name:  MichaelsMultiplexer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplexer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RF_Mux16_32Bit_21356526_TB IS

END RF_Mux16_32Bit_21356526_TB;
 
ARCHITECTURE behavior OF RF_Mux16_32Bit_21356526_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF_Mux16_32Bit_21356526
    PORT(
         s   : in  STD_LOGIC_VECTOR (3 downto 0);
           IN00,IN01,IN02,IN03,IN04,IN05,IN06,IN07,IN08,IN09,IN10,IN11,IN12,IN13,IN14,IN15: in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic_vector(3 downto 0) := (others => '0');
   signal IN00 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN01 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN02 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN03 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN04 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN05 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN06 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN07 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN08 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN09 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN10 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN11 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN12 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN13 : std_logic_vector(31 downto 0) := (others => '0'); 
   signal IN14 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN15 : std_logic_vector(31 downto 0) := (others => '0');
 	--Outputs
   signal z : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock
   
   --> below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF_Mux16_32Bit_21356526 PORT MAP (
          s => s,
IN00 => IN00,
IN01 => IN01,
IN02 => IN02,
IN03 => IN03,
IN04 => IN04,
IN05 => IN05,
IN06 => IN06,
IN07 => IN07,
IN08 => IN08,
IN09 => IN09,          
IN10 => IN10,
IN11 => IN11,
IN12 => IN12,
IN13 => IN13,
IN14 => IN14,
IN15 => IN15,

          z => z
        );

   stim_proc: process
   begin		
IN00 <= "1010001011101111111101110";
IN01 <= "1010001011101111111101111";
IN02 <= "1010001011101111111110000";
IN03 <= "1010001011101111111110001";
IN04 <= "1010001011101111111110010";
IN05 <= "1010001011101111111110011";
IN06 <= "1010001011101111111110100";
IN07 <= "1010001011101111111110101";
IN08 <= "1010001011101111111110110";
IN09 <= "1010001011101111111110111";
IN10 <= "1010001011101111111111000";
IN11 <= "1010001011101111111111001";
IN12 <= "1010001011101111111111010";
IN13 <= "1010001011101111111111011";
IN14 <= "1010001011101111111111100";
IN15 <= "1010001011101111111111101";

      wait for 10 ns;	
      s <= "00000";

      wait for 10 ns;	
		s <= "0001";

      wait for 10 ns;	
		s <= "0010";

      wait for 10 ns;	
		s <= "0011";

      wait for 10 ns;	
		s <= "0100";

      wait for 10 ns;	
		s <= "0101";

      wait for 10 ns;	
		s <= "0110";
  
      wait for 10 ns;	
		s <= "0111";
  
      wait for 10 ns;	
		s <= "1000";

      wait for 10 ns;	
		s <= "1001";

      wait for 10 ns;	
		s <= "1010";

      wait for 10 ns;	
		s <= "1011";

     wait for 10 ns;	
		s <= "1100";

     wait for 10 ns;	
		s <= "1101";

     wait for 10 ns;	
		s <= "1110";

     wait for 10 ns;	
		s <= "1111";
     
 --     wait;
   end process;

END;
