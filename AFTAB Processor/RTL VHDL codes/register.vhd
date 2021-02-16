LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Reg IS
	GENERIC ( len : INTEGER := 32);
	PORT (
		clk, rst   :  IN STD_LOGIC; 
		zero, load : IN STD_LOGIC; 
		inReg      : IN STD_LOGIC_VECTOR(len-1 DOWNTO 0); 
		outReg     : OUT STD_LOGIC_VECTOR(len-1 DOWNTO 0)
	);
END ENTITY Reg;

ARCHITECTURE behavioral OF Reg IS

BEGIN
	PROCESS(clk, rst)
	BEGIN
		IF ( rst = '1' ) THEN
			outReg <= (OTHERS => '0');
		ELSIF ( clk = '1' AND clk 'EVENT)THEN
			IF (zero = '1') THEN
				outReg <= (OTHERS => '0');
			ELSIF (load = '1') THEN
				outReg <= inReg;
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE behavioral;