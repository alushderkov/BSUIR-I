Library IEEE;
Use IEEE.std_logic_1164.all;

Entity xINV is 
    Port ( 
        A: in std_logic;
        F: out std_logic
    );
End xINV;

Architecture Beh of xINV is
begin
    F <= not A;
end Beh;
