library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DP_FunctionalUnit_2136526 is
  Port   ( B  : in  STD_LOGIC_VECTOR (31 downto 0);
              FS  : in  STD_LOGIC_VECTOR (4 downto 0);
              A  : in STD_LOGIC_VECTOR (31 downto 0);
	   C : out  STD_LOGIC;
	   F  : out  STD_LOGIC_VECTOR (31 downto 0);
	   N : out  STD_LOGIC;
	  Z : out  STD_LOGIC;
	  V : out  STD_LOGIC
	  );
end  DP_FunctionalUnit_2136526;

architecture Behavioral of  DP_FunctionalUnit_2136526 is

COMPONENT  DP_Shifter_21356526
  Port   ( B  : in  STD_LOGIC_VECTOR (31 downto 0);
                S1   : in  STD_LOGIC;
	    S2   : in  STD_LOGIC;
              G : out STD_LOGIC_VECTOR (31 downto 0);
	   c : out  STD_LOGIC);
END COMPONENT;

COMPONENT CPU_Mux2_32Bit_2136526 is
  Port   ( s   : in  STD_LOGIC;
           IN00,IN01 : in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0));
END COMPONENT;

COMPONENT DP_CFlagMux2_1Bit_21356526 is
Port   ( s   : in  STD_LOGIC;
           IN00,IN01 : in  STD_LOGIC ;
           z : out  STD_LOGIC);
end COMPONENT;

COMPONENT DP_ArithmeticLogicUnit_21356526 
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
end COMPONENT;

COMPONENT DP_ZeroDetection_21356526
	Port( F : in std_logic_vector(31 downto 0);
		 Z : out std_logic 
		);
end COMPONENT;
Signal C_shift, C_ALU: std_logic;
Signal In00,In01,Z_in : std_logic_vector(31 downto 0);

Begin

Shifter: DP_Shifter_21356526 PORT MAP (
	B => B,
	S1 => FS(2),
	S2 => FS(3),
	c => C_shift,
	G => In01
	);

ALU: DP_ArithmeticLogicUnit_21356526 Port Map (
	 A => A,
        B => B,
	C_IN => FS(0),
        S0 => FS(1),
        S1 => FS(2),
	S2 => FS(3),
        G => In00,
	C => C_ALU,
	V => V
	);
MuxF: CPU_Mux2_32Bit_2136526 Port Map (
	  s  => FS(4), 
           IN00 => In00,
	IN01 => In01,
      --     z => F,
	--z(31) => N,
	z=>Z_in
	);
	Z_in <= F;
	Z_in(31) <= N;
	
Z_Flag: DP_ZeroDetection_21356526 Port Map
		( F => Z_in, 
		 Z => Z
		);
C_Flag: DP_CFlagMux2_1Bit_21356526 PORT MAP (
		 s    => FS(4), 
          		 IN00 => C_ALU,
		  IN01 => C_shift,
         		  z => C
         	);
end Behavioral;
