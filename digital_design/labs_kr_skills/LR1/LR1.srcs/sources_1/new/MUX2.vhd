library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX2 is
    Port ( 
        a, b, s: in std_logic;
        q: out std_logic
    );
end;

architecture Behavioral of MUX2 is

begin
    q <= a when s = '0' else b;
end;
