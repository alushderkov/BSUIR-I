library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Delay is
    Generic (
        delay: time := 0.5 ns
    );
    Port ( 
        a: in std_logic_vector;
        y: out std_logic_vector
    );
end;

architecture Behavioral of Delay is
begin
    y <= a after delay;
end;
