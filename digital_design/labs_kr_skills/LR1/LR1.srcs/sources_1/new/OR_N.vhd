library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

entity OR_N is
    Port (
        inputs: in std_logic_vector;
        output: out std_logic
    );
end;

architecture Behavioral of OR_N is
begin
    output <= and_reduce(inputs);
end;