library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DP_FullAdder_21356526 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_IN : in STD_LOGIC;
           SUM : out STD_LOGIC;
           C_OUT : out STD_LOGIC);
end DP_FullAdder_21356526;

architecture Behavioral of DP_FullAdder_21356526 is

Signal S1, S2, S3 : STD_LOGIC;

begin

S1 <= A XOR B after 4ns;
S2 <= A AND B after 3ns;
S3 <= S1 AND C_IN after 3ns;

SUM <= S1 XOR C_IN after 4ns;
C_OUT <= S2 OR S3 after 2ns;

end Behavioral;