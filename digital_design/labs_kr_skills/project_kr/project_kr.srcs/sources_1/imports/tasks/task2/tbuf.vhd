Library IEEE;
Use IEEE.std_logic_1164.all;

Entity xTBUF is 
    Port ( 
        A: in std_logic;
        T: in std_logic;
        F: out std_logic
    );
End xTBUF;

Architecture Beh of xTBUF is
begin
    F <= A when T ='1' else 'Z';
end Beh;
