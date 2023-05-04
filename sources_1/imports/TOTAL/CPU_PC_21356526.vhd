library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_PC_21356526 is
Port( Clock : in STD_LOGIC;
       Displacement : in STD_LOGIC_VECTOR (31 downto 0);
	PI  : in STD_LOGIC;
	Reset : in STD_LOGIC;
	PL : in STD_LOGIC;
	InstAdd : out STD_LOGIC_VECTOR (31 downto 0)
);
End CPU_PC_21356526;

architecture Behavioral of CPU_PC_21356526 is

Component CPU_Mux2_32Bit_2136526 
  Port   ( s   : in  STD_LOGIC;
           IN00,IN01 : in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

Component DP_RippleCarryAdder32Bit_21356526 is
port(B, A : in std_logic_vector(31 downto 0);
 	C_IN: in std_logic; 
	SUM : out std_logic_vector(31 downto 0); 
	C_OUT : out std_logic; 
	V : out STD_LOGIC);
end Component;

Component RF_Register32Bit_21356526 is
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           Clock : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));
end Component;

Signal Rz,SUMs,Q,Z : std_logic_vector(31 downto 0);

Signal PCLoad0_i, PCLoad_i :std_logic;

begin

PL_PI_Mux: CPU_Mux2_32Bit_2136526 Port Map(
		s => PI,
		IN00 => Displacement,
		IN01 => x"00000001",
		z => Z
);

Adder : DP_RippleCarryAdder32Bit_21356526 Port Map(
	A => Q,
	B => Z,
	C_IN => '0',
	SUM => SUMs
);

ResertMux: CPU_Mux2_32Bit_2136526 Port Map(
		s => Reset,
		IN00 => SUMs,
		IN01 => x"0000000F",
		z => Rz
);

PCLoad0_i <= Reset or PL;
PCLoad_i <= PCLoad0_i or PI;

PC: RF_Register32Bit_21356526 Port Map(
		D => Rz,
		Load => PCLoad_i,
		Clock => Clock,
		Q => Q	
);
InstAdd <= Q;
end Behavioral;



		


