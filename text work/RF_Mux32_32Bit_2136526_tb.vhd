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
 
ENTITY RF_Mux32_32Bit_21356526_TB IS

END RF_Mux32_32Bit_21356526_TB;
 
ARCHITECTURE behavior OF RF_Mux32_32Bit_21356526_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF_Mux32_32Bit_21356526
    PORT(
         s   : in  STD_LOGIC_VECTOR (4 downto 0);
           IN00,IN01,IN02,IN03,IN04,IN05,IN06,IN07,IN08,IN09,IN10,IN11,IN12,IN13,IN14,IN15,IN16,IN17,IN18,IN19,IN20,IN21,IN22,IN23,IN24,IN25,IN26,IN27,IN28,IN29,IN30,IN31 : in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic_vector(4 downto 0) := (others => '0');
   signal IN00 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN01 : std_logic_vector(31 downto 0) := (others => '0');
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
   signal IN16 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN17 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN18 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN19 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN20 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN21 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN22 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN23 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN24 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN25 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN26 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN27 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN28 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN29 : std_logic_vector(31 downto 0) := (others => '0'); 
   signal IN30 : std_logic_vector(31 downto 0) := (others => '0');
   signal IN31 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock
   
   > below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF_Mux32_32Bit_21356526 PORT MAP (
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
IN16 => IN16,
IN17 => IN17,
IN18 => IN18,
IN19 => IN19,
IN20 => IN20,
IN21 => IN21,
IN22 => IN22,
IN23 => IN23,
IN24 => IN24,
IN25 => IN25,
IN26 => IN26,
IN27 => IN27,
IN28 => IN28,
IN29 => IN29,
IN30 => IN30,
IN31 => IN31,

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
IN16 <= "1010001011101111111111110";
IN17 <= "1010001011101111111111111";
IN18 <= "1010001011110000000000000";
IN19 <= "1010001011110000000000001";
IN20 <= "1010001011110000000000010";
IN21 <= "1010001011110000000000011";
IN22 <= "1010001011110000000000100";
IN23 <= "1010001011110000000000101";
IN24 <= "1010001011110000000000110";
IN25 <= "1010001011110000000000111";
IN26 <= "1010001011110000000001000";
IN27 <= "1010001011110000000001001";
IN28 <= "1010001011110000000001010";
IN29 <= "1010001011110000000001011";
IN30 <= "1010001011110000000001100";
IN31 <= "1010001011110000000001101";

      wait for 10 ns;	
      s <= "00000";

      wait for 10 ns;	
		s <= "00001";

      wait for 10 ns;	
		s <= "00010";

      wait for 10 ns;	
		s <= "00011";

      wait for 10 ns;	
		s <= "00100";

      wait for 10 ns;	
		s <= "00101";

      wait for 10 ns;	
		s <= "00110";
  
      wait for 10 ns;	
		s <= "00111";
  
      wait for 10 ns;	
		s <= "01000";

      wait for 10 ns;	
		s <= "01001";

      wait for 10 ns;	
		s <= "01010";

      wait for 10 ns;	
		s <= "01011";

     wait for 10 ns;	
		s <= "01100";

     wait for 10 ns;	
		s <= "01101";

     wait for 10 ns;	
		s <= "01110";

     wait for 10 ns;	
		s <= "01111";

     wait for 10 ns;	
		s <= "10000";

      wait for 10 ns;	
		s <= "10001";

      wait for 10 ns;	
		s <= "10010";

      wait for 10 ns;	
		s <= "10011";

      wait for 10 ns;	
		s <= "10100";

      wait for 10 ns;	
		s <= "10101";
  
      wait for 10 ns;	
		s <= "10110";
  
      wait for 10 ns;	
		s <= "10111";

      wait for 10 ns;	
		s <= "11000";

      wait for 10 ns;	
		s <= "11001";

      wait for 10 ns;	
		s <= "11010";

     wait for 10 ns;	
		s <= "11011";

     wait for 10 ns;	
		s <= "11100";

     wait for 10 ns;	
		s <= "11101";

     wait for 10 ns;	
		s <= "11110";

     wait for 10 ns;	
		s <= "11111";
     
 --     wait;
   end process;

END;
