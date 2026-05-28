Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Comb_task_struct is 
    Port ( 
        A: in std_logic;
        B: in std_logic;
        C: out std_logic
    );
End;

Architecture Struct of Comb_task_struct is
component xINV is
    Port(
        A: in std_logic;
        F: out std_logic
    );
end component;

component xTBUF is
    Port(
        A: in std_logic;
        T: in std_logic;
        F: out std_logic
    );
end component;
    signal T,T_N : std_logic;
    signal A_T,B_T : std_logic;
begin
    INV0 : xINV port map (B,T);
    INV1 : xINV port map (T,T_N);

    TBUF0 : xTBUF port map (B,T_N,B_T);
    TBUF1 : xTBUF port map (A,T,A_T);
    INV2 : xINV port map (A_T,C);
    C <= B_T;
end;
