----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.12.2022 19:18:00
-- Design Name: 
-- Module Name: CPU_SignExtend_21356526 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all; 
entity CPU_SignExtend_21356526 is
Port ( Input  : in std_logic_vector(9 downto 0);
         output : out std_logic_vector(31 downto 0)
);
end CPU_SignExtend_21356526;

architecture Behavioral of CPU_SignExtend_21356526 is

begin

process(Input)
begin

if (Input(9) ='1') then
Output<="1111111111111111111111"&Input;
else
Output<="0000000000000000000000"&Input;
end if;
end process;
end Behavioral;
