library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity DP_Datapath_21356526 is
  Port (IR_IN : in std_logic_vector(31 downto 0);
        DATA_IN : in std_logic_vector(31 downto 0);
	MB : in std_logic ;
        MD : in std_logic ;
        FS : in std_logic_vector(4 downto 0) ;
	clock : in std_logic ;
	DR : in std_logic_vector(4 downto 0) ;
	RW : in std_logic ;
	SA : in std_logic_vector(4 downto 0) ;
	SB : in std_logic_vector(4 downto 0) ;
	TA : in std_logic_vector(3 downto 0) ;
	TB : in std_logic_vector(3 downto 0) ;
	TD: in std_logic_vector(3 downto 0) ;
        DATA_OUT : out std_logic_vector(31 downto 0); 
	 ADD : out std_logic_vector(31 downto 0); 
	C : out std_logic ;
	N : out std_logic ;
	V : out std_logic ;
	Z : out std_logic 
	);
end DP_Datapath_21356526;

architecture Behavioral of DP_Datapath_21356526 is

COMPONENT CPU_Mux2_32Bit_2136526 is
  Port   ( s   : in  STD_LOGIC;
           IN00,IN01 : in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT DP_FunctionalUnit_2136526 is
  Port   ( B  : in  STD_LOGIC_VECTOR (31 downto 0);
              FS  : in  STD_LOGIC_VECTOR (4 downto 0);
              A  : in STD_LOGIC_VECTOR (31 downto 0);
	   C : out  STD_LOGIC;
	   F  : out  STD_LOGIC_VECTOR (31 downto 0);
	   N : out  STD_LOGIC;
	  Z : out  STD_LOGIC;
	  V : out  STD_LOGIC
	  );
end COMPONENT;

COMPONENT RF_RegisterFile_32_15_21356526 is
Port (clock : in std_logic ;
	D : in std_logic_vector(31 downto 0) ;
	DR : in std_logic_vector(4 downto 0) ;
	RW : in std_logic ;
	SA : in std_logic_vector(4 downto 0) ;
	SB : in std_logic_vector(4 downto 0) ;
	TA : in std_logic_vector(3 downto 0) ;
	TB : in std_logic_vector(3 downto 0) ;
	TD: in std_logic_vector(3 downto 0) ;
	 A  : out  STD_LOGIC_VECTOR (31 downto 0);
	 B  : out  STD_LOGIC_VECTOR (31 downto 0)
	);
end COMPONENT;

Signal RegFile_out,In0s,MuxB_out,MuxD_out,FU_out : std_logic_vector(31 downto 0);

Begin

MuxB: CPU_Mux2_32Bit_2136526 Port Map (
	  s  => MB,
           IN00 => In0s,
	IN01 => IR_IN,
	z => MuxB_out
	);
	 MuxB_out <= DATA_OUT;

MuxD: CPU_Mux2_32Bit_2136526 Port Map (
	  s  => MD,
           IN00 => FU_out,
	IN01 => DATA_IN,
           z => MuxD_out
	);

FunctionalUnit: DP_FunctionalUnit_2136526 Port Map (
	    B  => MuxB_out,
              FS => FS,
              A => RegFile_out,
	   C => C,
	   F  => FU_out,
	   N => N,
	  Z => Z,
	  V => V
	  );
RegFile: RF_RegisterFile_32_15_21356526 Port Map (
	 clock => clock,
	D => MuxD_out,
	DR  => DR,
	RW  => RW,
	SA => SA,
	SB  => SB,
	TA  => TA,
	TB => TB,
	TD => TD,
	 A  => RegFile_out,
	 B => In0s
	);
	RegFile_out <= ADD;
end Behavioral;
