Library IEEE;
Use IEEE.std_logic_1164.all;

Entity TOP_3 is 
    Port ( 
        A: in std_logic;
        B: in std_logic;
        C: out std_logic;
        D: in std_logic
    );
End;

Architecture Func of TOP_3 is
begin
    P0 : process (A,B,D) 
    begin
    if B = '0' then
        C <= '0';
        if A = '1' then
         C <= not D;
        end if;
    end if;
    end process P0;
end;
