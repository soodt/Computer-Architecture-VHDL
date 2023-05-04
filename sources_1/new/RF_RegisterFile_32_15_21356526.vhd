library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF_RegisterFile_32_15_21356526 is
  Port ( SA : in STD_LOGIC_VECTOR (4 downto 0);
	 DR : in std_logic_vector (4 downto 0);
	 SB : in STD_LOGIC_VECTOR (4 downto 0);
         RW : in STD_LOGIC;
        Clock : in STD_LOGIC;
         D : in STD_LOGIC_VECTOR (31 downto 0);
         TB : in STD_LOGIC_VECTOR (3 downto 0);
         TD : in STD_LOGIC_VECTOR (3 downto 0);
	TA : in STD_LOGIC_VECTOR (3 downto 0);
         B : out std_logic_vector (31 downto 0);
         A : out STD_LOGIC_VECTOR (31 downto 0));
end RF_RegisterFile_32_15_21356526;

architecture Behavioral of RF_RegisterFile_32_15_21356526 is

component RF_DestReg_Decoder_21356526 is
	Port ( A : in std_logic_vector(4 downto 0); 
	Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17, Q18, Q19, Q20, Q21, Q22, Q23, Q24, Q25, Q26, Q27, Q28, Q29, Q30, Q31 : out std_logic);
end component;

component RF_TempDestReg_Decoder_21356526 is
	Port ( A : in std_logic_vector(3 downto 0); 
	Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15 : out std_logic);
end component;
component RF_Mux32_32Bit_21356526 is
Port   ( s   : in  STD_LOGIC_VECTOR (4 downto 0);
           IN00,IN01,IN02,IN03,IN04,IN05,IN06,IN07,IN08,IN09,IN10,IN11,IN12,IN13,IN14,IN15,IN16,IN17,IN18,IN19,IN20,IN21,IN22,IN23,IN24,IN25,IN26,IN27,IN28,IN29,IN30,IN31 : in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

component RF_Mux16_32Bit_21356526 is
Port   ( s   : in  STD_LOGIC_VECTOR (3 downto 0);
           IN00,IN01,IN02,IN03,IN04,IN05,IN06,IN07,IN08,IN09,IN10,IN11,IN12,IN13,IN14,IN15 : in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT RF_Register32Bit_21356526 is
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
        --   Clr  : in STD_LOGIC;
           Load : in STD_LOGIC;
           Clock : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

Signal Q00s,Q01s,Q02s,Q03s,Q04s,Q05s,Q06s,Q07s,Q08s,Q09s,Q10s,Q11s,Q12s,Q13s,Q14s,Q15s,Q16s,Q17s,Q18s,Q19s,Q20s,Q21s,Q22s,Q23s,Q24s,Q25s,Q26s,Q27s,Q28s,Q29s,Q30s,Q31s : STD_LOGIC;

Signal Q00t,Q01t,Q02t,Q03t,Q04t,Q05t,Q06t,Q07t,Q08t,Q09t,Q10t,Q11t,Q12t,Q13t,Q14t,Q15t : STD_LOGIC;

Signal AND_Gate_to_Register000_i,AND_Gate_to_Register010_i,AND_Gate_to_Register020_i,AND_Gate_to_Register030_i,AND_Gate_to_Register040_i,AND_Gate_to_Register050_i,AND_Gate_to_Register060_i,AND_Gate_to_Register070_i,AND_Gate_to_Register080_i,AND_Gate_to_Register090_i,AND_Gate_to_Register100_i,AND_Gate_to_Register110_i,AND_Gate_to_Register120_i,AND_Gate_to_Register130_i,AND_Gate_to_Register140_i,AND_Gate_to_Register150_i,AND_Gate_to_Register160_i,AND_Gate_to_Register170_i,AND_Gate_to_Register180_i,AND_Gate_to_Register190_i,AND_Gate_to_Register200_i,AND_Gate_to_Register210_i,AND_Gate_to_Register220_i,AND_Gate_to_Register230_i,AND_Gate_to_Register240_i,AND_Gate_to_Register250_i,AND_Gate_to_Register260_i,AND_Gate_to_Register270_i,AND_Gate_to_Register280_i,AND_Gate_to_Register290_i,AND_Gate_to_Register300_i,AND_Gate_to_Register310_i  : STD_LOGIC;

Signal AND_Gate_to_Register00_i,AND_Gate_to_Register01_i,AND_Gate_to_Register02_i,AND_Gate_to_Register03_i,AND_Gate_to_Register04_i,AND_Gate_to_Register05_i,AND_Gate_to_Register06_i,AND_Gate_to_Register07_i,AND_Gate_to_Register08_i,AND_Gate_to_Register09_i,AND_Gate_to_Register10_i,AND_Gate_to_Register11_i,AND_Gate_to_Register12_i,AND_Gate_to_Register13_i,AND_Gate_to_Register14_i,AND_Gate_to_Register15_i,AND_Gate_to_Register16_i,AND_Gate_to_Register17_i,AND_Gate_to_Register18_i,AND_Gate_to_Register19_i,AND_Gate_to_Register20_i,AND_Gate_to_Register21_i,AND_Gate_to_Register22_i,AND_Gate_to_Register23_i,AND_Gate_to_Register24_i,AND_Gate_to_Register25_i,AND_Gate_to_Register26_i,AND_Gate_to_Register27_i,AND_Gate_to_Register28_i,AND_Gate_to_Register29_i,AND_Gate_to_Register30_i,AND_Gate_to_Register31_i  : STD_LOGIC;

Signal
AND_Gate_to_TempReg01_i,AND_Gate_to_TempReg02_i,AND_Gate_to_TempReg03_i,AND_Gate_to_TempReg04_i,AND_Gate_to_TempReg05_i,AND_Gate_to_TempReg06_i,AND_Gate_to_TempReg07_i,AND_Gate_to_TempReg08_i,AND_Gate_to_TempReg09_i,AND_Gate_to_TempReg10_i,AND_Gate_to_TempReg11_i,AND_Gate_to_TempReg12_i,AND_Gate_to_TempReg13_i,AND_Gate_to_TempReg14_i,AND_Gate_to_TempReg15_i,AND_Gate_to_TempReg16_i,AND_Gate_to_TempReg17_i,AND_Gate_to_TempReg18_i,AND_Gate_to_TempReg19_i,AND_Gate_to_TempReg20_i,AND_Gate_to_TempReg21_i,AND_Gate_to_TempReg22_i,AND_Gate_to_TempReg23_i,AND_Gate_to_TempReg24_i,AND_Gate_to_TempReg25_i,AND_Gate_to_TempReg26_i,AND_Gate_to_TempReg27_i,AND_Gate_to_TempReg28_i,AND_Gate_to_TempReg29_i,AND_Gate_to_TempReg30_i,AND_Gate_to_TempReg31_i  : STD_LOGIC;

Signal tempOut  : STD_LOGIC;
Signal Reg0out,Reg1out,Reg2out,Reg3out,Reg4out,Reg5out,Reg6out,Reg7out,Reg8out,Reg9out,Reg10out,Reg11out,Reg12out,Reg13out,Reg14out,Reg15out,Reg16out,Reg17out,Reg18out,Reg19out,Reg20out,Reg21out,Reg22out,Reg23out,Reg24out,Reg25out,Reg26out,Reg27out,Reg28out,Reg29out,Reg30out,Reg31out  : std_logic_vector(31 downto 0);

Signal TReg1out,TReg2out,TReg3out,TReg4out,TReg5out,TReg6out,TReg7out,TReg8out,TReg9out,TReg10out,TReg11out,TReg12out,TReg13out,TReg14out,TReg15out  : std_logic_vector(31 downto 0);

Signal Mux32A_out,Mux32B_out : STD_LOGIC_VECTOR (31 downto 0);
begin

DestReg_Decoder: RF_DestReg_Decoder_21356526 Port Map(
				A => DR,
				Q0 => Q00s,
                    Q1 => Q01s,
                    Q2 => Q02s,
                    Q3 => Q03s,
                    Q4 => Q04s,
                    Q5 => Q05s,
                    Q6 => Q06s,
                    Q7 => Q07s,
                    Q8 => Q08s,
                    Q9 => Q09s,
				Q10 => Q10s,
                    Q11 => Q11s,
                    Q12 => Q12s,
                    Q13 => Q13s,
                    Q14 => Q14s,
                    Q15 => Q15s,
                    Q16 => Q16s,
                    Q17 => Q17s,
                    Q18 => Q18s,
                    Q19 => Q19s,
                    Q20 => Q20s,
                    Q21 => Q21s,
                    Q22 => Q22s,
                    Q23 => Q23s,
                    Q24 => Q24s,
                    Q25 => Q25s,
                    Q26 => Q26s,
                    Q27 => Q27s,
                    Q28 => Q28s,
                    Q29 => Q29s,
                    Q30 => Q30s
);
DestTempReg_Decoder: RF_TempDestReg_Decoder_21356526 Port Map(
				A => TD,
				Q0 => tempOut,
                    Q1 => Q01t,
                    Q2 => Q02t,
                    Q3 => Q03t,
                    Q4 => Q04t,
                    Q5 => Q05t,
                    Q6 => Q06t,
                    Q7 => Q07t,
                    Q8 => Q08t,
                    Q9 => Q09t,
				Q10 => Q10t,
                    Q11 => Q11t,
                    Q12 => Q12t,
                    Q13 => Q13t,
                    Q14 => Q14t,
                    Q15 => Q15t
);

AND_Gate_to_Register000_i <= RW AND Q00s;
AND_Gate_to_Register010_i <= RW AND Q01s;
AND_Gate_to_Register020_i <= RW AND Q02s;
AND_Gate_to_Register030_i <= RW AND Q03s;
AND_Gate_to_Register040_i <= RW AND Q04s;
AND_Gate_to_Register050_i <= RW AND Q05s;
AND_Gate_to_Register060_i <= RW AND Q06s;
AND_Gate_to_Register070_i <= RW AND Q07s;
AND_Gate_to_Register080_i <= RW AND Q08s;
AND_Gate_to_Register090_i <= RW AND Q09s;
AND_Gate_to_Register100_i <= RW AND Q10s;
AND_Gate_to_Register110_i <= RW AND Q11s;
AND_Gate_to_Register120_i <= RW AND Q12s;
AND_Gate_to_Register130_i <= RW AND Q13s;
AND_Gate_to_Register140_i <= RW AND Q14s;
AND_Gate_to_Register150_i <= RW AND Q15s;
AND_Gate_to_Register160_i <= RW AND Q16s;
AND_Gate_to_Register170_i <= RW AND Q17s;
AND_Gate_to_Register180_i <= RW AND Q18s;
AND_Gate_to_Register190_i <= RW AND Q19s;
AND_Gate_to_Register200_i <= RW AND Q20s;
AND_Gate_to_Register210_i <= RW AND Q21s;
AND_Gate_to_Register220_i <= RW AND Q22s;
AND_Gate_to_Register230_i <= RW AND Q23s;
AND_Gate_to_Register240_i <= RW AND Q24s;
AND_Gate_to_Register250_i <= RW AND Q25s;
AND_Gate_to_Register260_i <= RW AND Q26s;
AND_Gate_to_Register270_i <= RW AND Q27s;
AND_Gate_to_Register280_i <= RW AND Q28s;
AND_Gate_to_Register290_i <= RW AND Q29s;
AND_Gate_to_Register300_i <= RW AND Q30s;
AND_Gate_to_Register310_i <= RW AND Q31s;

AND_Gate_to_Register00_i <= AND_Gate_to_Register000_i AND tempOut;
AND_Gate_to_Register01_i <= AND_Gate_to_Register010_i AND tempOut;
AND_Gate_to_Register02_i <= AND_Gate_to_Register020_i AND tempOut;
AND_Gate_to_Register03_i <= AND_Gate_to_Register030_i AND tempOut;
AND_Gate_to_Register04_i <= AND_Gate_to_Register040_i AND tempOut;
AND_Gate_to_Register05_i <= AND_Gate_to_Register050_i AND tempOut;
AND_Gate_to_Register06_i <= AND_Gate_to_Register060_i AND tempOut;
AND_Gate_to_Register07_i <= AND_Gate_to_Register070_i AND tempOut;
AND_Gate_to_Register08_i <= AND_Gate_to_Register080_i AND tempOut;
AND_Gate_to_Register09_i <= AND_Gate_to_Register090_i AND tempOut;
AND_Gate_to_Register10_i <= AND_Gate_to_Register100_i AND tempOut;
AND_Gate_to_Register11_i <= AND_Gate_to_Register110_i AND tempOut;
AND_Gate_to_Register12_i <= AND_Gate_to_Register120_i AND tempOut;
AND_Gate_to_Register13_i <= AND_Gate_to_Register130_i AND tempOut;
AND_Gate_to_Register14_i <= AND_Gate_to_Register140_i AND tempOut;
AND_Gate_to_Register15_i <= AND_Gate_to_Register150_i AND tempOut;
AND_Gate_to_Register16_i <= AND_Gate_to_Register160_i AND tempOut;
AND_Gate_to_Register17_i <= AND_Gate_to_Register170_i AND tempOut;
AND_Gate_to_Register18_i <= AND_Gate_to_Register180_i AND tempOut;
AND_Gate_to_Register19_i <= AND_Gate_to_Register190_i AND tempOut;
AND_Gate_to_Register20_i <= AND_Gate_to_Register200_i AND tempOut;
AND_Gate_to_Register21_i <= AND_Gate_to_Register210_i AND tempOut;
AND_Gate_to_Register22_i <= AND_Gate_to_Register220_i AND tempOut;
AND_Gate_to_Register23_i <= AND_Gate_to_Register230_i AND tempOut;
AND_Gate_to_Register24_i <= AND_Gate_to_Register240_i AND tempOut;
AND_Gate_to_Register25_i <= AND_Gate_to_Register250_i AND tempOut;
AND_Gate_to_Register26_i <= AND_Gate_to_Register260_i AND tempOut;
AND_Gate_to_Register27_i <= AND_Gate_to_Register270_i AND tempOut;
AND_Gate_to_Register28_i <= AND_Gate_to_Register280_i AND tempOut;
AND_Gate_to_Register29_i <= AND_Gate_to_Register290_i AND tempOut;
AND_Gate_to_Register30_i <= AND_Gate_to_Register300_i AND tempOut;
AND_Gate_to_Register31_i <= AND_Gate_to_Register310_i AND tempOut;


AND_Gate_to_TempReg01_i <= RW AND Q01t;
AND_Gate_to_TempReg02_i <= RW AND Q02t;
AND_Gate_to_TempReg03_i <= RW AND Q03t;
AND_Gate_to_TempReg04_i <= RW AND Q04t;
AND_Gate_to_TempReg05_i <= RW AND Q05t;
AND_Gate_to_TempReg06_i <= RW AND Q06t;
AND_Gate_to_TempReg07_i <= RW AND Q07t;
AND_Gate_to_TempReg08_i <= RW AND Q08t;
AND_Gate_to_TempReg09_i <= RW AND Q09t;
AND_Gate_to_TempReg10_i <= RW AND Q10t;
AND_Gate_to_TempReg11_i <= RW AND Q11t;
AND_Gate_to_TempReg12_i <= RW AND Q12t;
AND_Gate_to_TempReg13_i <= RW AND Q13t;
AND_Gate_to_TempReg14_i <= RW AND Q14t;
AND_Gate_to_TempReg15_i <= RW AND Q15t;


Register00 : RF_Register32Bit_21356526 Port Map(
D => D,
Load => AND_Gate_to_Register00_i,
Clock => Clock,
Q => Reg0out
);
Register01: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register01_i,
       Clock => Clock,
       Q => Reg1out
      );
Register02: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register02_i,
       Clock => Clock,
       Q => Reg2out
      );
Register03: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register03_i,
       Clock => Clock,
       Q => Reg3out
      );
Register04: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register04_i,
       Clock => Clock,
       Q => Reg4out
      );
Register05: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register05_i,
       Clock => Clock,
       Q => Reg5out
      );
Register06: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register06_i,
       Clock => Clock,
       Q => Reg6out
      );
Register07: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register07_i,
       Clock => Clock,
       Q => Reg7out
      );
Register08: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register08_i,
       Clock => Clock,
       Q => Reg8out
      );
Register09: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register09_i,
       Clock => Clock,
       Q => Reg9out
      );
Register10: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register10_i,
       Clock => Clock,
       Q => Reg10out
      );
Register11: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register11_i,
       Clock => Clock,
       Q => Reg11out
      );
Register12: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register12_i,
       Clock => Clock,
       Q => Reg12out
      );
Register13: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register13_i,
       Clock => Clock,
       Q => Reg13out
      );
Register14: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register14_i,
       Clock => Clock,
       Q => Reg14out
      );
Register15: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register15_i,
       Clock => Clock,
       Q => Reg15out
      );
Register16: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register16_i,
       Clock => Clock,
       Q => Reg16out
      );
Register17: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register17_i,
       Clock => Clock,
       Q => Reg17out
      );
Register18: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register18_i,
       Clock => Clock,
       Q => Reg18out
      );
Register19: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register19_i,
       Clock => Clock,
       Q => Reg19out
      );
Register20: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register20_i,
       Clock => Clock,
       Q => Reg20out
      );
Register21: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register21_i,
       Clock => Clock,
       Q => Reg21out
      );
Register22: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register22_i,
       Clock => Clock,
       Q => Reg22out
      );
Register23: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register23_i,
       Clock => Clock,
       Q => Reg23out
      );
Register24: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register24_i,
       Clock => Clock,
       Q => Reg24out
      );
Register25: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register25_i,
       Clock => Clock,
       Q => Reg25out
      );
Register26: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register26_i,
       Clock => Clock,
       Q => Reg26out
      );
Register27: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register27_i,
       Clock => Clock,
       Q => Reg27out
      );
Register28: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register28_i,
       Clock => Clock,
       Q => Reg28out
      );
Register29: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register29_i,
       Clock => Clock,
       Q => Reg29out
      );
Register30: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register30_i,
       Clock => Clock,
       Q => Reg30out
      );
Register31: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_Register31_i,
       Clock => Clock,
       Q => Reg31out
      );


TempReg01: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg01_i,
       Clock => Clock,
       Q => TReg1out
      );
TempReg02: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg02_i,
       Clock => Clock,
       Q => TReg2out
      );
TempReg03: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg03_i,
       Clock => Clock,
       Q => TReg3out
      );
TempReg04: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg04_i,
       Clock => Clock,
       Q => TReg4out
      );
TempReg05: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg05_i,
       Clock => Clock,
       Q => TReg5out
      );
TempReg06: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg06_i,
       Clock => Clock,
       Q => TReg6out
      );
TempReg07: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg07_i,
       Clock => Clock,
       Q => TReg7out
      );
TempReg08: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg08_i,
       Clock => Clock,
       Q => TReg8out
      );
TempReg09: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg09_i,
       Clock => Clock,
       Q => TReg9out
      );
TempReg10: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg10_i,
       Clock => Clock,
       Q => TReg10out
      );
TempReg11: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg11_i,
       Clock => Clock,
       Q => TReg11out
      );
TempReg12: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg12_i,
       Clock => Clock,
       Q => TReg12out
      );
TempReg13: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg13_i,
       Clock => Clock,
       Q => TReg13out
      );
TempReg14: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg14_i,
       Clock => Clock,
       Q => TReg14out
      );
TempReg15: RF_Register32Bit_21356526 PORT MAP(
       D => D,
       Load => AND_Gate_to_TempReg15_i,
       Clock => Clock,
       Q => TReg15out
      );

Mux32_A: RF_Mux32_32Bit_21356526 Port Map(

 	  s => SA,
       IN00 => Reg0out,
       IN01 => Reg1out,
       IN02 => Reg2out,
       IN03 => Reg3out,
       IN04 => Reg4out,
       IN05 => Reg5out,
       IN06 => Reg6out,
       IN07 => Reg7out,
       IN08 => Reg8out,
       IN09 => Reg9out,
       IN10 => Reg10out,
       IN11 => Reg11out,
       IN12 => Reg12out,
       IN13 => Reg13out,
       IN14 => Reg14out,
       IN15 => Reg15out,
       IN16 => Reg16out,
       IN17 => Reg17out,
       IN18 => Reg18out,
       IN19 => Reg19out,
       IN20 => Reg20out,
       IN21 => Reg21out,
       IN22 => Reg22out,
       IN23 => Reg23out,
       IN24 => Reg24out,
       IN25 => Reg25out,
       IN26 => Reg26out,
       IN27 => Reg27out,
       IN28 => Reg28out,
       IN29 => Reg29out,
       IN30 => Reg30out,
       IN31 => Reg31out,
	     z        =>   Mux32A_out
);

Mux32_B: RF_Mux32_32Bit_21356526 Port Map(

 	  s => SB,
       IN00 => Reg0out,
       IN01 => Reg1out,
       IN02 => Reg2out,
       IN03 => Reg3out,
       IN04 => Reg4out,
       IN05 => Reg5out,
       IN06 => Reg6out,
       IN07 => Reg7out,
       IN08 => Reg8out,
       IN09 => Reg9out,
       IN10 => Reg10out,
       IN11 => Reg11out,
       IN12 => Reg12out,
       IN13 => Reg13out,
       IN14 => Reg14out,
       IN15 => Reg15out,
       IN16 => Reg16out,
       IN17 => Reg17out,
       IN18 => Reg18out,
       IN19 => Reg19out,
       IN20 => Reg20out,
       IN21 => Reg21out,
       IN22 => Reg22out,
       IN23 => Reg23out,
       IN24 => Reg24out,
       IN25 => Reg25out,
       IN26 => Reg26out,
       IN27 => Reg27out,
       IN28 => Reg28out,
       IN29 => Reg29out,
       IN30 => Reg30out,
       IN31 => Reg31out,
	     z        =>   Mux32B_out
      
);

Mux16_B : RF_Mux16_32Bit_21356526 Port Map(

    	  s => TB,
	  IN00 => Mux32B_out,
       IN01 => TReg1out,
       IN02 => TReg2out,
       IN03 => TReg3out,
       IN04 => TReg4out,
       IN05 => TReg5out,
       IN06 => TReg6out,
       IN07 => TReg7out,
       IN08 => TReg8out,
       IN09 => TReg9out,
       IN10 => TReg10out,
       IN11 => TReg11out,
       IN12 => TReg12out,
       IN13 => TReg13out,
       IN14 => TReg14out,
       IN15 => TReg15out,
	     z        =>   B
);

Mux16_A : RF_Mux16_32Bit_21356526 Port Map(

    	  s => TA,
	  IN00 => Mux32A_out,
       IN01 => TReg1out,
       IN02 => TReg2out,
       IN03 => TReg3out,
       IN04 => TReg4out,
       IN05 => TReg5out,
       IN06 => TReg6out,
       IN07 => TReg7out,
       IN08 => TReg8out,
       IN09 => TReg9out,
       IN10 => TReg10out,
       IN11 => TReg11out,
       IN12 => TReg12out,
       IN13 => TReg13out,
       IN14 => TReg14out,
       IN15 => TReg15out,
	     z        =>   A
);

	
end Behavioral;