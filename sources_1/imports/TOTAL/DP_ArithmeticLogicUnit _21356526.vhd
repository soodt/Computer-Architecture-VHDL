library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity DP_ArithmeticLogicUnit_21356526 is
  Port (A : in std_logic_vector(31 downto 0);
        B : in std_logic_vector(31 downto 0);
	C_IN : in std_logic ;
        S0 : in std_logic ;
        S1 : in std_logic ;
	S2 : in std_logic ;
        G : out std_logic_vector(31 downto 0); 
	C : out std_logic ;
	V : out std_logic 
	);
end DP_ArithmeticLogicUnit_21356526;

architecture Behavioral of DP_ArithmeticLogicUnit_21356526 is

COMPONENT DP_32Bit_LogicCircuit_21356526 is
  Port (A : in std_logic_vector(31 downto 0);
        B : in std_logic_vector(31 downto 0);
        S0 : in std_logic ;
        S1 : in std_logic ;
        G : out std_logic_vector(31 downto 0)
	);
end COMPONENT;

COMPONENT DP_RippleCarryAdder32Bit_21356526 is
port(B, A : in std_logic_vector(31 downto 0);
 	C_IN: in std_logic; 
	SUM : out std_logic_vector(31 downto 0); 
	C_OUT : out std_logic; 
	V : out STD_LOGIC);
end COMPONENT;

COMPONENT DP_32Bit_B_Logic_21356526 is
port(  B: in std_logic_vector(31 downto 0);
 	S0 : in std_logic; 
	S1 : in std_logic; 
	Y : out std_logic_vector(31 downto 0)
);
end COMPONENT;

COMPONENT CPU_Mux2_32Bit_2136526 is
  Port   ( s   : in  STD_LOGIC;
           IN00,IN01 : in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

Signal Ys, SUMs,Gs : std_logic_vector(31 downto 0); 

Begin

BLogic: DP_32Bit_B_Logic_21356526 PORT MAP (
		B => B,
		S0 => S0,
		S1 => S1,
		Y => Ys
		);

Adder: DP_RippleCarryAdder32Bit_21356526 PORT MAP (
	B => Ys,
	A => A,
 	C_IN => C_IN,
	SUM  => SUMs,
	C_OUT => C,
	V  => V
	);

LogicCircuit: DP_32Bit_LogicCircuit_21356526 PORT MAP(
	A => A,
        B => B,
        S0 => S0,
        S1 => S1,
        G => Gs
	);

ALUMux: CPU_Mux2_32Bit_2136526 PORT MAP(
	s   => S2,
           IN00 => SUMs,
	IN01 => Gs,
           z => G
	);	

end Behavioral;
