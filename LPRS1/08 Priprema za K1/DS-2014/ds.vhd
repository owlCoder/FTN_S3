library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ds is
    port(
        iA      : in  std_logic_vector(3 downto 0);
        iB      : in  std_logic_vector(3 downto 0);
        oRESULT : out std_logic_vector(7 downto 0)
    );
end ds;

architecture arch of ds is
    signal sMUX0, sMUX1, sMUX2, sMUX3 : std_logic_vector(3 downto 0);
    signal sPOM1, sPOM2, sPOM3 : std_logic_vector(7 downto 0);
    signal sADD1, sADD2, sADD3 : std_logic_vector(7 downto 0);
begin
    -- mux0
    sMUX0 <= "0000" WHEN iB(0) = '0' ELSE iA;

     -- mux1
     sMUX1 <= "0000" WHEN iB(1) = '0' ELSE iA;

      -- mux2
    sMUX2 <= "0000" WHEN iB(2) = '0' ELSE iA;

     -- mux3
     sMUX3 <= "0000" WHEN iB(3) = '0' ELSE iA;

     -- pom1
     sPOM1 <= "0000" & sMUX1(2 downto 0) & '0';

     -- pom2
     sPOM2 <= "0000" & sMUX2(1 downto 0) & "00";

     -- pom3
     sPOM3 <= "0000" & sMUX3(0) & "000";

     -- sabirači
     sADD1 <= sMUX0 + sPOM1;
     sADD2 <= sADD1 + sPOM2;
     sADD3 <= sADD2 + sPOM3;

     oRESULT <= sADD3;
end arch;
