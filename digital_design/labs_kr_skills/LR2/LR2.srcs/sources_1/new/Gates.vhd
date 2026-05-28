library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
    entity inv is
        Port (
            a: in std_logic;
            y: out std_logic
        );
    end;
    architecture Behavioral of inv is
    begin
        y <= not a;
    end;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
    entity and2 is
        Port (
            a, b: in std_logic;
            y: out std_logic
         );
    end;
    architecture Behavioral of and2 is
    begin
        y <= a and b;
    end;


    
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
    entity or2 is
        Port (
            a, b: in std_logic;
            y: out std_logic
         );
    end;
    architecture Behavioral of or2 is
    begin
        y <= a or b;
    end;

