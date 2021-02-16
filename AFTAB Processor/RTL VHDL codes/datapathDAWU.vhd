LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY datapathDAWU IS 
	PORT (
		clk, rst : IN STD_LOGIC;
		ldData, enableData, enableAddr, incCnt, zeroCnt, initCnt, ldNumBytes, 
		zeroNumBytes, ldAddr, zeroAddr, zeroData  : IN STD_LOGIC;
		nBytesIn, initValue : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		dataIn  : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		addrIn  : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		coCnt   : OUT STD_LOGIC;
		dataOut : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		addrOut : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END ENTITY datapathDAWU;
 
ARCHITECTURE Behavioral OF datapathDAWU IS
   SIGNAL muxOut, outReg0, outReg1, outReg2, outReg3 : STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL addrOutReg : STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL nBytesOut, outCnt, addrOutRegP : STD_LOGIC_VECTOR (1 DOWNTO 0);
BEGIN  

--Register Part 

	nBytesReg : ENTITY WORK.Reg 
				  GENERIC MAP (len => 2) 
				  PORT MAP (clk => clk, rst => rst, zero => zeroNumBytes, 		
					 load => ldNumBytes, inReg => nBytesIn, outReg => nBytesOut);
										  
	addrReg : ENTITY WORK.Reg 
				GENERIC MAP (len => 32) 
				PORT MAP (clk => clk, rst => rst, zero => zeroAddr, 
					load => ldAddr, inReg => addrIn, outReg => addrOutReg);
 
	reg0 : ENTITY WORK.Reg 
			GENERIC MAP (len => 8) 
			PORT MAP (clk => clk, rst => rst, zero => zeroData, 
				load => ldData, inReg => dataIn (7 DOWNTO 0), outReg => outReg0);
										  
	reg1 : ENTITY WORK.Reg 
			GENERIC MAP (len => 8) 
			PORT MAP (clk => clk, rst => rst, zero => zeroData, 
				load => ldData, inReg => dataIn (15 DOWNTO 8), outReg => outReg1);
										  
	reg2 : ENTITY WORK.Reg 
			GENERIC MAP (len => 8) 
			PORT MAP (clk => clk, rst => rst, zero => zeroData, 
				load => ldData, inReg => dataIn (23 DOWNTO 16), outReg => outReg2);
										  
	reg3 : ENTITY WORK.Reg 
			GENERIC MAP(len => 8) 
			PORT MAP(clk => clk, rst => rst, zero => zeroData, 
				load => ldData, inReg => dataIn(31 DOWNTO 24), outReg => outReg3);
										  
										  
	--Counter Part
	Counter : ENTITY WORK.Counter 
				PORT MAP(clk => clk, rst => rst, zeroCnt => zeroCnt, incCnt => incCnt,
					initCnt => initCnt, initValue => initValue, outCnt => outCnt);
	muxOut <= outReg0 WHEN outCnt = "00" ELSE
			  outReg1 WHEN outCnt = "01" ELSE
			  outReg2 WHEN outCnt = "10" ELSE
			  outReg3 WHEN outCnt = "11";
	coCnt <= '1' WHEN (outCnt = nBytesOut) ELSE '0';

	--Buffers
	addrOutRegp <= addrOutReg(1 DOWNTO 0) OR outCnt;												

	addrOut <= (addrOutReg (31 DOWNTO 2) & addrOutRegp)  WHEN (enableAddr = '1') ELSE (OTHERS => 'Z');											
	dataOut <= muxOut  WHEN (enableData = '1') ELSE (OTHERS => 'Z');											

END ARCHITECTURE Behavioral;
