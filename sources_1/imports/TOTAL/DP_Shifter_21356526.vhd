library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DP_Shifter_21356526 is
  Port   ( B  : in  STD_LOGIC_VECTOR (31 downto 0);
              S1   : in  STD_LOGIC;
	    S2   : in  STD_LOGIC;
              G : out STD_LOGIC_VECTOR (31 downto 0);
	   c : out  STD_LOGIC);
end DP_Shifter_21356526;

architecture Behavioral of DP_Shifter_21356526 is

COMPONENT  DP_Mux3_1Bit_21356526
 Port   ( S1   : in  STD_LOGIC;
	   S2   : in  STD_LOGIC;
           IN00,IN01,IN02 : in  STD_LOGIC ;
           z : out  STD_LOGIC);

END COMPONENT;

COMPONENT DP_ShifterCFlagMux2_1Bit_21356526
Port   ( S1   : in  STD_LOGIC;
	   S2   : in  STD_LOGIC;
           IN00,IN01 : in  STD_LOGIC ;
           z : out  STD_LOGIC);

END COMPONENT;

begin

BIT0: DP_Mux3_1Bit_21356526 PORT MAP (
		IN00 => B(0),
		IN01 => B(1),
		IN02 => '0',
		S1 => S1,
		S2 => S2,
		z => G(0)
		);
BIT1: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(1),
       IN01 => B(2),
       IN02 => B(0),
       S1 => S1,
       S2 => S2,
       z => G(1)
      );
BIT2: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(2),
       IN01 => B(3),
       IN02 => B(1),
       S2 => S2,
       S1 => S1,
       z => G(2)
      );
BIT3: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(3),
       IN01 => B(4),
       IN02 => B(2),
       S1 => S1,
       S2 => S2,
       z => G(3)
      );
BIT4: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(4),
       IN01 => B(5),
       IN02 => B(3),
       S1 => S1,
       S2 => S2,
       z => G(4)
      );
BIT5: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(5),
       IN01 => B(6),
       IN02 => B(4),
       S1 => S1,
       S2 => S2,
       z => G(5)
      );
BIT6: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(6),
       IN01 => B(7),
       IN02 => B(5),
       S1 => S1,
       S2 => S2,
       z => G(6)
      );
BIT7: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(7),
       IN01 => B(8),
       IN02 => B(6),
       S1 => S1,
       S2 => S2,
       z => G(7)
      );
BIT8: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(8),
       IN01 => B(9),
       IN02 => B(7),
       S1 => S1,
       S2 => S2,
       z => G(8)
      );
BIT9: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(9),
       IN01 => B(10),
       IN02 => B(8),
       S1 => S1,
       S2 => S2,
       z => G(9)
      );
BIT10: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(10),
       IN01 => B(11),
       IN02 => B(9),
       S1 => S1,
       S2 => S2,
       z => G(10)
      );
BIT11: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(11),
       IN01 => B(12),
       IN02 => B(10),
       S1 => S1,
       S2 => S2,
       z => G(11)
      );
BIT12: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(12),
       IN01 => B(13),
       IN02 => B(11),
       S1 => S1,
       S2 => S2,
       z => G(12)
      );
BIT13: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(13),
       IN01 => B(14),
       IN02 => B(12),
       S1 => S1,
       S2 => S2,
       z => G(13)
      );
BIT14: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(14),
       IN01 => B(15),
       IN02 => B(13),
       S1 => S1,
       S2 => S2,
       z => G(14)
      );
BIT15: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(15),
       IN01 => B(16),
       IN02 => B(14),
       S1 => S1,
       S2 => S2,
       z => G(15)
      );
BIT16: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(16),
       IN01 => B(17),
       IN02 => B(15),
       S1 => S1,
       S2 => S2,
       z => G(16)
      );
BIT17: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(17),
       IN01 => B(18),
       IN02 => B(16),
       S1 => S1,
       S2 => S2,
       z => G(17)
      );
BIT18: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(18),
       IN01 => B(19),
       IN02 => B(17),
       S1 => S1,
       S2 => S2,
       z => G(18)
      );
BIT19: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(19),
       IN01 => B(20),
       IN02 => B(18),
       S1 => S1,
       S2 => S2,
       z => G(19)
      );
BIT20: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(20),
       IN01 => B(21),
       IN02 => B(19),
       S1 => S1,
       S2 => S2,
       z => G(20)
      );
BIT21: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(21),
       IN01 => B(22),
       IN02 => B(20),
       S1 => S1,
       S2 => S2,
       z => G(21)
      );
BIT22: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(22),
       IN01 => B(23),
       IN02 => B(21),
       S1 => S1,
       S2 => S2,
       z => G(22)
      );
BIT23: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(23),
       IN01 => B(24),
       IN02 => B(22),
       S1 => S1,
       S2 => S2,
       z => G(23)
      );
BIT24: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(24),
       IN01 => B(25),
       IN02 => B(23),
       S1 => S1,
       S2 => S2,
       z => G(24)
      );
BIT25: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(25),
       IN01 => B(26),
       IN02 => B(24),
       S1 => S1,
       S2 => S2,
       z => G(25)
      );
BIT26: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(26),
       IN01 => B(27),
       IN02 => B(25),
       S1 => S1,
       S2 => S2,
       z => G(26)
      );
BIT27: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(27),
       IN01 => B(28),
       IN02 => B(26),
       S1 => S1,
       S2 => S2,
       z => G(27)
      );
BIT28: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(28),
       IN01 => B(29),
       IN02 => B(27),
       S1 => S1,
       S2 => S2,
       z => G(28)
      );
BIT29: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(29),
       IN01 => B(30),
       IN02 => B(28),
       S1 => S1,
       S2 => S2,
       z => G(29)
      );
BIT30: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(30),
       IN01 => B(31),
       IN02 => B(29),
       S1 => S1,
       S2 => S2,
       z => G(30)
      );
BIT31: DP_Mux3_1Bit_21356526 PORT MAP (
       IN00 => B(31),
       IN01 => '0',
       IN02 => B(30),
       S1 => S1,
       S2 => S2,
       z => G(31)
      );

carry: DP_ShifterCFlagMux2_1Bit_21356526 PORT MAP (
	   
       IN00 => B(0),
       IN01 => B(31),
       S1 => S1,
       S2 => S2,
       z => c
      );
end Behavioral;

