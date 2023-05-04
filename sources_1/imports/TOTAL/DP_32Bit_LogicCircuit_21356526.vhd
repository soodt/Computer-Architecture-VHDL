library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity DP_32Bit_LogicCircuit_21356526 is
  Port (A : in std_logic_vector(31 downto 0);
        B : in std_logic_vector(31 downto 0);
        S0 : in std_logic ;
        S1 : in std_logic ;
        G : out std_logic_vector(31 downto 0) 
	);
end DP_32Bit_LogicCircuit_21356526;

architecture Behavioral of DP_32Bit_LogicCircuit_21356526 is

COMPONENT DP_SingleBit_LogicCircuit_21356526 is
  Port (A : in std_logic ;
        B : in std_logic ;
        S0 : in std_logic ;
        S1 : in std_logic ;
        G : out std_logic );
end COMPONENT;

begin

BIT0: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(0),
       B => B(0),
       S0 => S0,
       S1 => S1,
       G => G(0)
      );
BIT1: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(1),
       B => B(1),
       S0 => S0,
       S1 => S1,
       G => G(1)
      );
BIT2: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(2),
       B => B(2),
       S0 => S0,
       S1 => S1,
       G => G(2)
      );
BIT3: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(3),
       B => B(3),
       S0 => S0,
       S1 => S1,
       G => G(3)
      );
BIT4: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(4),
       B => B(4),
       S0 => S0,
       S1 => S1,
       G => G(4)
      );
BIT5: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(5),
       B => B(5),
       S0 => S0,
       S1 => S1,
       G => G(5)
      );
BIT6: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(6),
       B => B(6),
       S0 => S0,
       S1 => S1,
       G => G(6)
      );
BIT7: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(7),
       B => B(7),
       S0 => S0,
       S1 => S1,
       G => G(7)
      );
BIT8: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(8),
       B => B(8),
       S0 => S0,
       S1 => S1,
       G => G(8)
      );
BIT9: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(9),
       B => B(9),
       S0 => S0,
       S1 => S1,
       G => G(9)
      );
BIT10: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(10),
       B => B(10),
       S0 => S0,
       S1 => S1,
       G => G(10)
      );
BIT11: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(11),
       B => B(11),
       S0 => S0,
       S1 => S1,
       G => G(11)
      );
BIT12: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(12),
       B => B(12),
       S0 => S0,
       S1 => S1,
       G => G(12)
      );
BIT13: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(13),
       B => B(13),
       S0 => S0,
       S1 => S1,
       G => G(13)
      );
BIT14: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(14),
       B => B(14),
       S0 => S0,
       S1 => S1,
       G => G(14)
      );
BIT15: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(15),
       B => B(15),
       S0 => S0,
       S1 => S1,
       G => G(15)
      );
BIT16: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(16),
       B => B(16),
       S0 => S0,
       S1 => S1,
       G => G(16)
      );
BIT17: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(17),
       B => B(17),
       S0 => S0,
       S1 => S1,
       G => G(17)
      );
BIT18: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(18),
       B => B(18),
       S0 => S0,
       S1 => S1,
       G => G(18)
      );
BIT19: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(19),
       B => B(19),
       S0 => S0,
       S1 => S1,
       G => G(19)
      );
BIT20: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(20),
       B => B(20),
       S0 => S0,
       S1 => S1,
       G => G(20)
      );
BIT21: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(21),
       B => B(21),
       S0 => S0,
       S1 => S1,
       G => G(21)
      );
BIT22: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(22),
       B => B(22),
       S0 => S0,
       S1 => S1,
       G => G(22)
      );
BIT23: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(23),
       B => B(23),
       S0 => S0,
       S1 => S1,
       G => G(23)
      );
BIT24: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(24),
       B => B(24),
       S0 => S0,
       S1 => S1,
       G => G(24)
      );
BIT25: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(25),
       B => B(25),
       S0 => S0,
       S1 => S1,
       G => G(25)
      );
BIT26: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(26),
       B => B(26),
       S0 => S0,
       S1 => S1,
       G => G(26)
      );
BIT27: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(27),
       B => B(27),
       S0 => S0,
       S1 => S1,
       G => G(27)
      );
BIT28: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(28),
       B => B(28),
       S0 => S0,
       S1 => S1,
       G => G(28)
      );
BIT29: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(29),
       B => B(29),
       S0 => S0,
       S1 => S1,
       G => G(29)
      );
BIT30: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(30),
       B => B(30),
       S0 => S0,
       S1 => S1,
       G => G(30)
      );
BIT31: DP_SingleBit_LogicCircuit_21356526 PORT MAP (
       A => A(31),
       B => B(31),
       S0 => S0,
       S1 => S1,
       G => G(31)
      );

end Behavioral;
