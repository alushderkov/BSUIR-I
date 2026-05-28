Library IEEE;
Use IEEE.std_logic_1164.all;

Entity TOP_4 is 
    Port ( 
        A: in std_logic;
        B: inout std_logic;
        D: inout std_logic
    );
End;

Architecture Func of TOP_4 is
begin
    P0 : process (A,B,D) 
    begin
    if A = '0' then
        b <= not D;
    else 
        d <= not B;
    end if;
    end process P0;
end;
