library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity INV is
  Port ( 
    a: in std_logic;
    n_a: out std_logic
  );
end INV;

architecture Behavioral of INV is
    
begin
    n_a <= not a;
end Behavioral;
