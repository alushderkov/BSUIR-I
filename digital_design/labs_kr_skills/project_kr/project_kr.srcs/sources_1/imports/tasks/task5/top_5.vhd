Library IEEE;
Use IEEE.std_logic_1164.all;

Entity TOP_5 is 
    Port ( 
        S: in std_logic;
        CE: in std_logic;
        D: in std_logic;
        C: in std_logic;
        Q : out std_logic
    );
End;

Architecture Func of TOP_5 is
begin
    P0 : process (S,CE,D,C) 
    begin
    if rising_edge(C) then
        if S = '1' then
         Q <= '1';
        elsif CE ='1' then
         Q <= D;
        end if;
    end if;
    end process P0;
end;
