Library IEEE;
Use IEEE.std_logic_1164.all;

Entity TOP is 
    Port ( 
        A: in std_logic;
        B: in std_logic;
        C: out std_logic;
        D: in std_logic
    );
End TOP;

Architecture Func of TOP is
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
end Func;
