library ieee; 
use ieee.std_logic_1164.all; 
entity DP_32Bit_B_Logic_21356526 is
port(  B: in std_logic_vector(31 downto 0);
 	S0 : in std_logic; 
	S1 : in std_logic; 
	Y : out std_logic_vector(31 downto 0)
	); 
end DP_32Bit_B_Logic_21356526;

architecture Behavioral of DP_32Bit_B_Logic_21356526 is

COMPONENT DP_SingleBit_B_Logic_21356526 
    PORT(
	 B : in STD_LOGIC;
	  S0: in std_logic; 
	 S1 : in std_logic ;
	 Y : out std_logic
	);
END COMPONENT;

begin

BIT0: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(0),
       S0 => S0,
       S1 => S1,
       Y => Y(0)
      );
BIT1: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(1),
       S0 => S0,
       S1 => S1,
       Y => Y(1)
      );
BIT2: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(2),
       S0 => S0,
       S1 => S1,
       Y => Y(2)
      );
BIT3: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(3),
       S0 => S0,
       S1 => S1,
       Y => Y(3)
      );
BIT4: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(4),
       S0 => S0,
       S1 => S1,
       Y => Y(4)
      );
BIT5: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(5),
       S0 => S0,
       S1 => S1,
       Y => Y(5)
      );
BIT6: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(6),
       S0 => S0,
       S1 => S1,
       Y => Y(6)
      );
BIT7: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(7),
       S0 => S0,
       S1 => S1,
       Y => Y(7)
      );
BIT8: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(8),
       S0 => S0,
       S1 => S1,
       Y => Y(8)
      );
BIT9: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(9),
       S0 => S0,
       S1 => S1,
       Y => Y(9)
      );
BIT10: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(10),
       S0 => S0,
       S1 => S1,
       Y => Y(10)
      );
BIT11: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(11),
       S0 => S0,
       S1 => S1,
       Y => Y(11)
      );
BIT12: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(12),
       S0 => S0,
       S1 => S1,
       Y => Y(12)
      );
BIT13: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(13),
       S0 => S0,
       S1 => S1,
       Y => Y(13)
      );
BIT14: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(14),
       S0 => S0,
       S1 => S1,
       Y => Y(14)
      );
BIT15: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(15),
       S0 => S0,
       S1 => S1,
       Y => Y(15)
      );
BIT16: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(16),
       S0 => S0,
       S1 => S1,
       Y => Y(16)
      );
BIT17: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(17),
       S0 => S0,
       S1 => S1,
       Y => Y(17)
      );
BIT18: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(18),
       S0 => S0,
       S1 => S1,
       Y => Y(18)
      );
BIT19: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(19),
       S0 => S0,
       S1 => S1,
       Y => Y(19)
      );
BIT20: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(20),
       S0 => S0,
       S1 => S1,
       Y => Y(20)
      );
BIT21: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(21),
       S0 => S0,
       S1 => S1,
       Y => Y(21)
      );
BIT22: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(22),
       S0 => S0,
       S1 => S1,
       Y => Y(22)
      );
BIT23: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(23),
       S0 => S0,
       S1 => S1,
       Y => Y(23)
      );
BIT24: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(24),
       S0 => S0,
       S1 => S1,
       Y => Y(24)
      );
BIT25: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(25),
       S0 => S0,
       S1 => S1,
       Y => Y(25)
      );
BIT26: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(26),
       S0 => S0,
       S1 => S1,
       Y => Y(26)
      );
BIT27: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(27),
       S0 => S0,
       S1 => S1,
       Y => Y(27)
      );
BIT28: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(28),
       S0 => S0,
       S1 => S1,
       Y => Y(28)
      );
BIT29: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(29),
       S0 => S0,
       S1 => S1,
       Y => Y(29)
      );
BIT30: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(30),
       S0 => S0,
       S1 => S1,
       Y => Y(30)
      );
BIT31: DP_SingleBit_B_Logic_21356526 PORT MAP (
       B => B(31),
       S0 => S0,
       S1 => S1,
       Y => Y(31)
      );


end Behavioral;
