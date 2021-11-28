library ieee;
use ieee.std_logic_1164.all;

library work;

entity alu_tb is 
end entity;

architecture Behavioral of alu_tb is
	signal iA   		: std_logic_vector(7 downto 0);
	signal iB   		: std_logic_vector(7 downto 0);
	signal iSEL 		: std_logic_vector(2 downto 0);
	signal oY   		: std_logic_vector(7 downto 0);

begin
	uut: entity work.alu 
	port map(
			iA    => iA,
			iB    => iB,
			iSEL  => iSEL,
			oY    => oY
	);
	
	stimulus: process
		begin
		-- TEST CASES
		-- na izlazu treba da bude 0x07 kao rezultat operacije G(X),
		-- 0x07 = 0111 AISA JE A3210 = 0010
		iA  <= "00000010";
		iB  <= "10100000";
		iSEL <= "101"; 		-- SMUX --> ISEL = 5
		wait for 100 ns;
		
		-- na izlazu treba da bude 0x08 kao rezultat operacije dekodovanje
		-- 0x08 = 1000 AISA JE A210 = 011
		iA   <= "00000011";
		iB   <= "10100000";
		iSEL <= "010"; 		-- SMUX --> ISEL = 2
		wait for 100 ns;
		
		-- na izlazu treba da bude 0xCD kao rezultat operacije prvi operand, ako je A<B
		-- 0xCD = 205 (11001101)
		iA   <= "11001101";
		iB   <= "11001110";
		iSEL <= "110"; 		-- SMUX --> ISEL = 6 ? PRESLIKAVA SE IA NA IZLAZ 1??
		wait for 100 ns;
		
		-- na izlazu treba da bude 0xE8 kao rezultat operacije F(X)
		-- 0xE8 = 232 (11101000)
		-- F(X) DAJE NOT(iA) + 1
		-- NOT(11100111) 
		iA   <= NOT("11100111"); -- NEGIRA SE 231, F(X) ĆE VRATITI NA 231 I + 1
		iB   <= "11001110";
		iSEL <= "100"; 		-- SMUX --> ISEL = 4
		wait for 100 ns;
		
		-- 5. TESTIRANJE SABIRAČA
		iA   <= "00000001"; -- 1
		iB   <= "00000001"; -- 1
		iSEL <= "000"; 		-- SMUX --> ISEL = 0
		wait for 100 ns;
		
		-- 6. TESTIRANJE NOT(X) X = iA
		iA   <= "11111111"; -- NEGIRANO JE 00000000
		iB   <= "00000001"; -- 1
		iSEL <= "001"; 		-- SMUX --> ISEL = 1
		wait for 100 ns;
		
		-- 7. TESTIRANJE SABIRAČA
		iA   <= "00010001"; -- 1
		iB   <= "01000001"; -- 1
		iSEL <= "000"; 		-- SMUX --> ISEL = 0
		wait for 100 ns;
		
		-- 8. TESTIRANJE F(X)
		iA   <= "00111100";
		iB   <= "10010001";
		iSEL <= "100"; 		-- SMUX --> ISEL = 4
		wait for 100 ns;
		
		-- 9. TESTIRANJE F(X)
		iA   <= "00000000";
		iB   <= "00000000"; 
		iSEL <= "100"; 		-- SMUX --> ISEL = 4
		wait for 100 ns;
		
		-- 10. TESTIRANJE F(X)
		iA   <= "11011111";
		iB   <= "00000010";
		iSEL <= "100"; 		-- SMUX --> ISEL = 4
		wait for 100 ns;
		
		wait;	
	end process;

end architecture;