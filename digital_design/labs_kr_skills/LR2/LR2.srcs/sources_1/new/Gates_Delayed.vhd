library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
    entity inv_d is
        Generic (
            tpd: time := 1ns
        );
        Port (
            a: in std_logic;
            y: out std_logic
        );
    end;
    architecture Behavioral of inv_d is
    begin
        y <= not a after tpd;
    end;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
    entity and2_d is
        Generic (
            tpd: time := 2ns
        );
        Port (
            a, b: in std_logic;
            y: out std_logic
         );
    end;
    architecture Behavioral of and2_d is
    begin
        y <= a and b after tpd;
    end;


    
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
    entity or2_d is
        Generic (
           tpd: time := 2ns
        );
        Port (
            a, b: in std_logic;
            y: out std_logic
         );
    end;
    architecture Behavioral of or2_d is
    begin
        y <= a or b after tpd;
    end;
