library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity alu is 
	port(
		iA   : in  std_logic_vector(7 downto 0);
		iB   : in  std_logic_vector(7 downto 0);
		iSEL : in  std_logic_vector(2 downto 0);
		oY   : out std_logic_vector(7 downto 0)
	);
end entity;

architecture Behavioral of alu is
	signal sNegation  : std_logic_vector(7 downto 0);
	signal sLeftShift : std_logic_vector(7 downto 0);
	signal sGX			: std_logic_vector(7 downto 0);
	signal sCompare	: std_logic;
	
	signal sAdd			: std_logic_vector(7 downto 0);
	signal sDecoder   : std_logic_vector(7 downto 0);
	signal sFX			: std_logic_vector(7 downto 0);
	signal sDemuxUp	: std_logic_vector(7 downto 0);
	signal sDemuxDown : std_logic_vector(7 downto 0);

	signal sMux			: std_logic_vector(7 downto 0);

begin
	-- LOGICKA NEGACIJA PRVOG OPERANDA
	sNegation <= NOT(iA);
	
	-- LOGICKO POMERANJA PRVOG OPERANDA ZA 4 MESTA U LEVO
	sLeftShift <= iA(3 downto 0) & "0000";
	
	-- FUNKCIJA G(X)
	sGX <= "0000" + (iA + 5);
			 
	-- KOMPARATOR
	sCompare <= '1' WHEN iA < iB else '0';
	
	-- SABIRAČ
	sAdd <= iA(7 downto 0) + iB(7 downto 0);
	
	-- DEKODER (3 bita) -> DEKODER 3x8 [nx2^n], n = 3
	sDecoder <= "00000001" WHEN iA(2 downto 0) = "000" else
					"00000010" WHEN iA(2 downto 0) = "001" else
					"00000100" WHEN iA(2 downto 0) = "010" else
					"00001000" WHEN iA(2 downto 0) = "011" else
					"00010000" WHEN iA(2 downto 0) = "100" else
					"00100000" WHEN iA(2 downto 0) = "101" else
					"01000000" WHEN iA(2 downto 0) = "110" else
					"10000000" WHEN iA(2 downto 0) = "111" else
					"10000000";
					
	-- FUNKCIJA F(X) = X + 1 [PRVI OPERAND JE NEGIRAN]
	sFX <= sNegation + 1;
	
	-- DEMULTIPLEKSER (ULAZ iA(7:0), 2 IZLAZA, SELEKCIONI ULAZ JE sCompare)
	sDemuxUp <= iA WHEN sCompare = '1' else "00000000";
	sDemuxDown <= iA WHEN sCompare = '0' else "00000000";

	-- MULTIPLEXER
	sMux <= sAdd 		 WHEN iSEL = "000" else
			  sNegation  WHEN iSEL = "001" else
			  sDecoder	 WHEN iSEL = "010" else
			  sLeftShift WHEN iSEL = "011" else
			  sFX			 WHEN iSEL = "100" else
			  sGX			 WHEN iSEL = "101" else
			  sDemuxUp	 WHEN iSEL = "110" else
			  sDemuxDown WHEN iSEL = "111" else
			  sDemuxDown;
	
	-- DODELA SIGNALA sMux NA IZLAZ OY
	oY <= sMux;
	
end architecture;