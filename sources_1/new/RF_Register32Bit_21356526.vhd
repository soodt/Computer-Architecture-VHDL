----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/20/2022 02:21:51 PM
-- Design Name: 
-- Module Name: RF_Register32Bit_21356526 - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF_Register32Bit_21356526 is
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
         --  Clr  : in STD_LOGIC;
           Load : in STD_LOGIC;
           Clock : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));
end RF_Register32Bit_21356526;

architecture Behavioral of RF_Register32Bit_21356526 is

begin

process (Clock)
begin
   if (Clock'event AND Clock = '1') then
     -- if Clr = '1' then
     --   Q <= "00000000000000000000000000000000" after 2 ns;
      if Load = '1' then
        Q <= D after 2ns;
      end if;
   end if;      
end process;

end Behavioral;
