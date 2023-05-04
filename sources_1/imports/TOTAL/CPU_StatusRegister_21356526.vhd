library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_StatusRegister_21356526 is
    Port ( Clock  : in STD_LOGIC;
	   C_Flag : in STD_LOGIC;
	  Reset_C: in STD_LOGIC;
	N_Flag: in STD_LOGIC;
	LoadFlags: in STD_LOGIC;
	Reset_N: in STD_LOGIC;
	V_Flag: in STD_LOGIC;
	Reset_V: in STD_LOGIC;
	Z_Flag: in STD_LOGIC;
	Reset_Z: in STD_LOGIC;
	StatusVector: out STD_LOGIC_VECTOR(3 downto 0)
);
End CPU_StatusRegister_21356526;

architecture Behavioral of CPU_StatusRegister_21356526 is

COMPONENT CPU_DFlipFlop_21356526
Port ( D : in STD_LOGIC;
           Reset:  in STD_LOGIC;
           Clock : in STD_LOGIC;
	Enable  : in STD_LOGIC;
           Q : out STD_LOGIC);
end COMPONENT;

begin

CFlag:  CPU_DFlipFlop_21356526 Port Map(
		D => C_Flag,
		Reset => Reset_C,
		Clock => Clock,
		Enable => LoadFlags,
		Q => StatusVector(0)
);

NFlag:  CPU_DFlipFlop_21356526 Port Map(
		D => N_Flag,
		Reset => Reset_N,
		Clock => Clock,
		Enable => LoadFlags,
		Q => StatusVector(2)
);

VFlag:  CPU_DFlipFlop_21356526 Port Map(
		D => V_Flag,
		Reset => Reset_V,
		Clock => Clock,
		Enable => LoadFlags,
		Q => StatusVector(1)
);

ZFlag:  CPU_DFlipFlop_21356526 Port Map(
		D => Z_Flag,
		Reset => Reset_Z,
		Clock => Clock,
		Enable => LoadFlags,
		Q => StatusVector(3)
);

end Behavioral;
