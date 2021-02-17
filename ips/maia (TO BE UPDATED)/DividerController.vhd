LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY DividerController IS
	GENERIC (len : INTEGER := 33; lenCnt : INTEGER := 6);
	PORT (
		clk, rst : IN STD_LOGIC;
		startDiv : IN STD_LOGIC;
		R33 : IN STD_LOGIC;
		doneDiv : OUT STD_LOGIC; 
		shRRegR, ShLRegR, ldRegR, zeroRegR, selMux1 : OUT STD_LOGIC;
		shRRegQ, ShLRegQ, ldRegQ, zeroRegQ, zeroRegM, ldRegM : OUT STD_LOGIC;
		QQ0 : OUT STD_LOGIC
	);
END ENTITY DividerController;

ARCHITECTURE behavioral OF DividerController IS 
	TYPE state IS (idle_state, step1, step2);
	SIGNAL pstate, nstate : state;
	SIGNAL outCnt : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL zeroCnt, incCnt, initCnt, coCnt: STD_LOGIC;
	CONSTANT initValue : STD_LOGIC_VECTOR (lenCnt-1 DOWNTO 0) 
		:= STD_LOGIC_VECTOR (to_unsigned ((((2**lenCnt) - 1) - len), lenCnt));
 
    BEGIN
    counter : ENTITY work.Counter1
				  GENERIC MAP ( len => lenCnt) 
				  PORT MAP (clk =>clk, rst=>rst, zeroCnt=>zeroCnt, incCnt=>incCnt,
					 initCnt=>initCnt, initValue=>initValue,
					 outCnt=>outCnt, coCnt=>coCnt);
    QQ0 <= NOT (R33);
    PROCESS (coCnt, startDiv, pstate) BEGIN
		shRRegR  <= '0'; ShLRegR  <= '0'; ldRegR  <= '0'; zeroRegR <= '0';
		selMux1  <= '0'; shRRegQ  <= '0'; ShLRegQ <= '0'; ldRegQ   <= '0'; 
		zeroRegQ <= '0'; zeroRegM <= '0'; ldRegM  <= '1'; doneDiv  <= '0';
		CASE pstate IS
        WHEN  idle_state =>
			initCnt  <= '1';
			zeroRegR <= '1';
			ldRegQ   <= '1';
			doneDiv  <= '0';
			IF (startDiv = '1') THEN
				nstate <= step1;
			ELSE
				nstate <= idle_state;
			END IF;
		WHEN step1 =>
			zeroCnt <= '0';
			initCnt <= '0';
			incCnt <= '0';
			ShLRegR <= '1';
			shLRegQ <= '1';
			nstate <= step2;
		WHEN step2 =>
			ldRegR <= '1';
			ldRegQ <= '1';
			selMux1 <= '1';
			incCnt <= '1';
			ShLRegR <= '0';
			zeroRegR <= '0';
			IF (coCnt = '1') THEN
				doneDiv <= '1';
				nstate <= idle_state;
			ELSE 
				nstate <= step1;
			END IF;
		END CASE;
    END PROCESS;

PROCESS (clk, rst) BEGIN
  IF (rst = '1') THEN 
      pstate <= idle_state;
  ELSIF (clk = '1' AND clk'event) THEN 
     pstate <= nstate;
  END IF;
END PROCESS;        
END ARCHITECTURE behavioral;
