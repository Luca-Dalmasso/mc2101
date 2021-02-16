
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;


ENTITY controllerAFTAB IS
GENERIC(len : INTEGER := 32);
	PORT (
 	 clk : IN std_logic;
 	 rst : IN std_logic;
	 completeDARU, completeDAWU, completeAAU, lt, eq, gt : IN std_logic;	 
 	 IR  : IN std_logic_vector(len-1 DOWNTO 0);

	 
 	 muxCode  : OUT std_logic_vector(11 DOWNTO 0);
 	 nBytes  : OUT std_logic_vector(1 DOWNTO 0);
 	 selLogic  : OUT std_logic_vector(1 DOWNTO 0);
 	 selShift  : OUT std_logic_vector(1 DOWNTO 0);
 	 selPCJ, selPC, selADR, selI4, selP1, selP2, selJL, selImm, selAdd, selInc4PC, selBSU,selLLU, selASU, selAAU,selDARU, 
	 dataInstrBar, writeRegFile, addSubBar, pass, selAuipc, comparedsignedunsignedbar,
	 ldIR, ldADR, ldPC, ldDr,
	 setOne, setZero,
	 startDARU, startDAWU, loadSignedUnsignedBar, startMultiplyAAU, startDivideAAU, signedSigned, signedUnsigned, unsignedUnsigned, selAAL, selAAH    : OUT std_logic

	   );
END controllerAFTAB ;

ARCHITECTURE behavioral OF controllerAFTAB IS 
TYPE state IS (fetch, getInstr, --fetch
					decode, --decode
					loadInstr1, loadInstr2, getData,--load
					storeInstr1, storeInstr2, putData, --store
					addSub, --addSub + -
					compare, --setCompare <
					logical, --logical & | ^
					shift, --shift << >> 
					multiplyDivide1, multiplyDivide2, multiplyDivide3, --Multilier and Divider * /
					conditionalBranch, --conditionalBranch >=<
					JAL, JALR, --unconditionalBranch
					LUI --LUI, AUIPC
					 );
	SIGNAL p_state, n_state : state;

	signal i: std_logic;
	signal j: std_logic;
	SIGNAL func3 : std_logic_vector(2 DOWNTO 0);
	SIGNAL func7, opcode : std_logic_vector(6 DOWNTO 0);
	CONSTANT iTypeImm : std_logic_vector(11 downto 0):= "010011001001";
	CONSTANT sTypeImm : std_logic_vector(11 downto 0):= "010011010010";
	CONSTANT uTypeImm : std_logic_vector(11 downto 0):= "100000100100";
	CONSTANT jTypeImm : std_logic_vector(11 downto 0):= "101001001100";
	CONSTANT bTypeImm : std_logic_vector(11 downto 0):= "010101010100";

BEGIN


	func3 <= IR(14 DOWNTO 12);
	func7 <= IR(31 DOWNTO 25);
	opcode <= IR(6 DOWNTO 0);
--	iTypeImm <= "010011001001";
--	sTypeImm <= "010011010010";
--	uTypeImm <= "100000100100";
--	jTypeImm <= "101001001100";
--	bTypeImm <= "010101010100";
	
	PROCESS (p_state, completeDARU, completeDAWU, completeAAU, opcode, func3, func7, lt, eq, gt  ) BEGIN
		n_state <= fetch;	
		j<='0'; i<='0';
		CASE p_state IS
--fetch		
			WHEN fetch => 
			
             n_state <= getInstr;			
			
			WHEN getInstr => 
			
				IF (completeDARU = '1') THEN             
                n_state <= decode;  
				ELSE                    
                n_state <= getInstr;
				END IF;
				
--decode
			WHEN decode =>             
				IF (opcode = "0000011") THEN
					 n_state <= loadInstr1;--load
				ELSIF (opcode = "0100011") THEN
					 n_state <= storeInstr1;--store
				-- ELSIF (opcode = "0110011") THEN
					-- IF(func7(0) = '1')THEN
						-- n_state <= MultiplyDivide1;--multiplyDivide
					-- END IF;						 
				ELSIF ((opcode = "0110011") ) THEN

				  j <= '1';
					IF(func3 = "000")THEN
						n_state <= addSub;--addSub
					--END IF;
			--	ELSIF (opcode = "0110011" OR opcode = "0010011") THEN
					ELSIF(func3 = "010" OR func3 = "011")THEN
						n_state <= compare;--setCompare
					--END IF;	
				--ELSIF (opcode = "0110011" OR opcode = "0010011") THEN
					ELSIF(func3 = "100" OR func3 = "110" OR func3 = "111")THEN
						n_state <= logical;--logical
					--END IF;				 
				--ELSIF (opcode = "0110011" OR opcode = "0010011") THEN
					ELSIF(func3 = "001" OR func3 = "101")THEN
						n_state <= shift;--shift
						i <= '1';
					ELSIF(func7(0) = '1')THEN
						n_state <= MultiplyDivide1;--multiplyDivide
					--END IF;							
					END IF;	
				ELSIF ((opcode = "0010011")) THEN --Immediate		
					IF(func3 = "000")THEN
						n_state <= addSub;--addSub
					--END IF;
			--	ELSIF (opcode = "0110011" OR opcode = "0010011") THEN
					ELSIF(func3 = "010" OR func3 = "011")THEN
						n_state <= compare;--setCompare
					--END IF;	
				--ELSIF (opcode = "0110011" OR opcode = "0010011") THEN
					ELSIF(func3 = "100" OR func3 = "110" OR func3 = "111")THEN
						n_state <= logical;--logical
					--END IF;				 
				--ELSIF (opcode = "0110011" OR opcode = "0010011") THEN
					ELSIF(func3 = "001" OR func3 = "101")THEN
						n_state <= shift;--shift
						i <= '1';	
					END IF;	
						
				ELSIF (opcode = "1101111") THEN
						n_state <= JAL;--JAL											
				ELSIF (opcode = "1100111") THEN
						n_state <= JALR;--JALR
				ELSIF (opcode = "1100011") THEN
						n_state <= conditionalBranch;--conditionalBranch
				ELSIF (opcode = "0110111" OR opcode = "0010111" ) THEN
						n_state <= LUI;--conditionalBranch
				ELSE n_state <= fetch;
				END IF;
--load
			WHEN loadInstr1 =>
					 n_state <= loadInstr2;				
			WHEN loadInstr2 =>
					 n_state <= getData;					
			WHEN getData =>
				IF (completeDARU = '1') THEN             
                n_state <= fetch; 
				ELSE                    
                n_state <= getData;
				END IF;
			-- WHEN regWrite =>
				-- n_state <= fetch;
			

--store
			WHEN storeInstr1 =>
					 n_state <= storeInstr2;				
			WHEN storeInstr2 =>
					 n_state <= putData;					
			WHEN putData =>
				IF (completeDAWU = '1') THEN             
                n_state <= fetch; 
				ELSE                    
                n_state <= putData;
				END IF;
--addSub
			WHEN addSub =>
					 n_state <= fetch;
--setCompare
			WHEN compare =>
					 n_state <= fetch;
--logical 
			WHEN logical =>
					 n_state <= fetch;
--shift 
			WHEN shift =>
					 n_state <= fetch;

--multiplyDivide 
			WHEN multiplyDivide1 =>
					 n_state <= multiplyDivide2;
			WHEN multiplyDivide2 =>
					IF(completeAAU = '1')THEN
					 n_state <= multiplyDivide3;
					ELSE 
					 n_state <= multiplyDivide2;
					END IF;

			WHEN multiplyDivide3 =>
					 n_state <= fetch;
					 
--JAL 
			WHEN JAL =>
					 n_state <= fetch;					 
--JALR 
			WHEN JALR =>
					 n_state <= fetch;

--conditionalBranch 
			WHEN conditionalBranch =>
					 n_state <= fetch;


			WHEN OTHERS => n_state <= fetch;
		END CASE;
	END PROCESS;   

    PROCESS (p_state, completeDARU, completeDAWU, completeAAU, opcode, func3, func7, lt, eq, gt ) BEGIN
			selPCJ <= '0'; selPC <= '0'; selADR <= '0'; selI4 <= '0'; selP2 <= '0'; selJL <= '0'; selImm <= '0'; selAdd <= '0'; selInc4PC<= '0';  selBSU<= '0'; selLLU<= '0';  selASU<= '0';  selAAU<= '0'; selDARU<= '0'; 
			dataInstrBar <= '0'; writeRegFile <= '0'; addSubBar<='0'; comparedsignedunsignedbar <= '0';
			ldIR <= '0'; ldADR <= '0'; ldPC <= '0'; ldDr <= '0';
			setOne <= '0'; setZero <= '0';
			startDARU <= '0'; startDAWU <= '0'; startMultiplyAAU <= '0'; startDivideAAU <= '0'; signedSigned <= '0'; signedUnsigned <= '0'; unsignedUnsigned <= '0'; selAAL <= '0'; selAAH <= '0';
			muxCode <= (OTHERS => '0'); nBytes <= "00"; selLogic <="00"; selShift <="00"; loadSignedUnsignedBar <= '0'; pass <= '0'; selAuipc <= '0'; selP1 <= '0';
			


		CASE p_state IS
--fetch		
			WHEN fetch => 
			
                 selPCJ <= '1';
				 nBytes <= "11";
				 dataInstrBar <= '0';
				 startDARU <= '1';
				 selPC <= '1';
				 
			WHEN getInstr => 
			
				 IF (completeDARU = '1') THEN
					ldIR <= '1';
				 ELSE 
					ldIR <= '0';
				 END IF;
			
--decode
			WHEN decode =>             
					---

--load
			WHEN loadInstr1 =>
			
					 MuxCode <= iTypeImm ;		
					 ldADR <= '1';
					 selJL <= '1'; ----- check 
					 
					 ldPC <= '1';
					 selI4 <= '1';
					 
			
			WHEN loadInstr2 =>
					 
					 startDARU <= '1';
					 selADR <= '1';
					 dataInstrBar <= '1';
					 nBytes <= func3(1) & (func3(1) OR func3(0));
					 loadSignedUnsignedBar <= NOT(func3(2));  
			WHEN getData =>
			
				 IF (completeDARU = '1') THEN
					writeRegFile <= '1'; 
					selDARU <= '1';	
				 ELSE 
					writeRegFile <= '0'; 
					selDARU <= '0';	
				 END IF;
	

			-- WHEN regWrite =>
					-- writeRegFile <= '1'; 
					-- selDARU <= '1';		
			
--store
			WHEN storeInstr1 =>
					 selJL <= '1';		
					 muxCode <= sTypeImm ;
					 ldADR <= '1';
					 ldDR <= '1';

					 ldPC <= '1';
					 selI4 <= '1';
			WHEN storeInstr2 =>
					 startDAWU <= '1';
					 selADR <= '1';
					 nBytes <= func3(1) & (func3(1) OR func3(0));
			WHEN putData =>
						--
--addSub						
			WHEN addSub =>
					 muxCode <= iTypeImm;
					 selImm <= NOT(opcode(5));
					 selP1 <= '1';
					 selP2 <= opcode(5);
					 addSubBar <= NOT(func7(5));					 	
					 selASU <= '1';
                	 writeRegFile <= '1';	
					 
					 ldPC <= '1';
					 selI4 <= '1';
--setCompare	 
			WHEN compare =>
					 muxCode <= iTypeImm;
					 selImm <= NOT(opcode(5));
					 selP1 <= '1';
					 selP2 <= opcode(5);
					 comparedSignedUnsignedBar <= NOT(func3(0));
					 IF(lt = '1')THEN
						setOne <= '1';
					 ELSE 
						setZero <= '1';
					 END IF;
						
					 ldPC <= '1';
					 selI4 <= '1';					
--logical	 
			WHEN logical =>
					 muxCode <= iTypeImm;
					 selImm <= NOT(opcode(5));	
					 selP1 <= '1';					 
					 selP2 <= opcode(5);
				     selLogic <= func3(1 DOWNTO 0); 
					 selLLu <= '1';					 
                     writeRegFile <= '1';

					 
					 ldPC <= '1';
					 selI4 <= '1';							 
--shift	 
			WHEN shift =>
					 muxCode <= iTypeImm;
					 selImm <= NOT(opcode(5));
					 selP1 <= '1';
					 selP2 <= opcode(5);
				     selShift<= func3(2) & func7(5); 	
					 selBsu <= '1';					 
                     writeRegFile <= '1';

					 
					 ldPC <= '1';
					 selI4 <= '1';							 


--multiplyDivide	 
			WHEN multiplyDivide1 =>
					selP1 <= '1';
				    startDivideAAU <= func3(2); 
				    startMultiplyAAU <= NOT(func3(2)); 
 
					 IF (func3(2) = '0')THEN
						IF(func3(1 DOWNTO 0) = "00")THEN
							signedSigned <= '1';
						ELSIF(func3(1 DOWNTO 0) = "01")THEN
							signedSigned <= '1';
						ELSIF(func3(1 DOWNTO 0) = "10")THEN
							signedUnsigned <= '1';
						ELSIF(func3(1 DOWNTO 0) = "11")THEN
							unsignedUnsigned <= '1';
						END IF;
					 ELSIF (func3(2) = '1')THEN
						IF(func3(1 DOWNTO 0) = "00" OR func3(1 DOWNTO 0) = "10" )THEN
							signedSigned <= '1';
						ELSIF(func3(1 DOWNTO 0) = "01" OR func3(1 DOWNTO 0) = "11")THEN
							unsignedUnsigned <= '1';
						END IF;
					 END IF;
				 
			WHEN multiplyDivide2 =>
		--
			WHEN multiplyDivide3 =>
			
					 IF (func3(2) = '0')THEN
						selAAL <= NOT (func3(1) OR func3(0));
						selAAH <=     (func3(1) OR func3(0));
					 ELSIF (func3(2) = '1')THEN
						selAAH <= NOT (func3(1));	--Quotient			 
						selAAL <=     (func3(1));   --Remainder						
					 END IF;
			
					 selAAU <= '1';
					 writeRegFile <= '1';
					 
					 ldPC <= '1';
					 selI4 <= '1';	
	
			WHEN JAL =>
					 muxCode <= jTypeImm ;
					 selInc4PC <= '1';
					 writeRegFile <= '1';	
					 
					 selPC <= '1';
					 selAdd <= '1';
					 ldPC <= '1';
	
  		   WHEN JALR =>
					 muxCode <= iTypeImm ;
					 selInc4PC <= '1';
					 writeRegFile <= '1';
					 
					 selJL <= '1';
					 ldPC <= '1';
					 selAdd <= '1';	


--conditionalBranch 
			WHEN conditionalBranch =>
					 muxCode <= bTypeImm;
					 selP1 <= '1';
					 selP2 <= '1';
					 comparedSignedUnsignedBar <= NOT(func3(1));
					 selPC <= '1';
					 ldPC <= '1';	
					 
					 IF(func3(2) = '1' AND func3(0) = '0' )THEN   --BLT, BLTU
						IF(lt = '1') THEN 
							selADD <= '1';
						ELSE 
							selI4 <= '1';						
						END IF;	
					 ELSIF(func3(2) = '1' AND func3(0) = '1')THEN --BGE, BGEU
						IF (gt = '1' OR eq = '1' )THEN  
							selADD <= '1';			
						ELSE
							selI4 <= '1';						
						END IF;	
					 ELSIF(func3(2) = '0' AND func3(0) = '0')THEN --BEQ
						IF (eq = '1')THEN  
							selADD <= '1';
						ELSE 
							selI4 <= '1';						
						END IF;
					 ELSIF(func3(2) = '0' AND func3(0) = '1')THEN --BNE
						IF (eq = '0')THEN  
							selADD <= '1';
						ELSE 
							selI4 <= '1';						
						END IF;
					 END IF;
--LUI
			WHEN LUI =>				
					 muxCode <= uTypeImm;
					 selImm <= '1';
					 selASU <= '1';
					 writeRegFile <= '1';
					 ldPC <= '1';
					 selI4 <= '1';						
					
					 pass <= opcode(5);
					 addSubBar <= NOT (opcode(5));
					 selAuipc <= NOT (opcode(5));
					 
					
						
			WHEN OTHERS => 	selPCJ <= '0'; selPC <= '0'; selADR <= '0'; selI4 <= '0'; selP2 <= '0'; selJL <= '0'; selImm <= '0'; selAdd <= '0'; selInc4PC<= '0';  selBSU<= '0'; selLLU<= '0';  selASU<= '0';  selAAU<= '0'; selDARU<= '0'; 
			dataInstrBar <= '0'; writeRegFile <= '0'; addSubBar<='0'; comparedsignedunsignedbar <= '0';
			ldIR <= '0'; ldADR <= '0'; ldPC <= '0'; ldDr <= '0';
			setOne <= '0'; setZero <= '0';
			startDARU <= '0'; startDAWU <= '0'; startMultiplyAAU <= '0'; startDivideAAU <= '0'; signedSigned <= '0'; signedUnsigned <= '0'; unsignedUnsigned <= '0'; selAAL <= '0'; selAAH <= '0';
			muxCode <= (OTHERS => '0'); nBytes <= "00"; selLogic <="00"; selShift <="00"; loadSignedUnsignedBar <= '0'; pass <= '0'; selAuipc <= '0'; selP1 <= '0';

		END CASE;
		END PROCESS;
	  
	sequential: PROCESS (clk, rst) BEGIN
	
		IF rst = '1' THEN 
		
				p_state <= fetch;
				
		ELSIF (clk = '1' AND clk'EVENT) THEN

				p_state <= n_state;

		END IF;   
    END PROCESS sequential; 



END behavioral;
		
