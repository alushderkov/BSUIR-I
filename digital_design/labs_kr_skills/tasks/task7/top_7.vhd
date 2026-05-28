Library IEEE;
Use IEEE.std_logic_1164.all;

Entity TOP is 
    Port ( 
        CLR: in std_logic;
        D: in std_logic;
        CLK: in std_logic;
        Q : out std_logic
    );
End TOP;

Architecture Func of TOP is
    signal D_prev : std_logic;
    signal D_curr :std_logic;
    signal T : std_logic;
begin
    P0 : process (CLR,CLK,D) 
    begin
        if CLR = '1' then
            D_curr <= '0';
            D_prev <= '0';
        elsif rising_edge(CLK) then
            D_prev <= D_curr;
            D_curr <= D;
        end if;
    end process P0;
    
    t <= D_curr xnor D_prev;
    Q <= D_curr when t= '1' else 'Z';
end Func;
