library ieee;
use ieee.std_logic_1164.all;

entity segmentE is
    port(
        iB0 : in std_logic;
        iB1 : in std_logic;
        iB2 : in std_logic;
        iB3 : in std_logic;
        oY  : out std_logic
    );
end entity;

architecture Behavioral of segmentE is
    signal sS0 : std_logic;
    signal sS1 : std_logic;
    signal sS2 : std_logic;
    signal sS3 : std_logic;

    begin
      sS0 <= iB1 and not(iB0);
      sS1 <= iB3 and iB1;
		sS2 <= iB3 and iB2;
		sS3 <= not(iB2) and not(iB1) and not(iB0);

      oY <= sS0 or sS1 or sS2 or sS3;

end architecture;