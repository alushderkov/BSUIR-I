Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Comb_task_func is 
    Port ( 
        A: in std_logic;
        B: in std_logic;
        C: out std_logic
    );
End;

Architecture Func of Comb_task_func is
begin
    C <= (not A) or B;
end;
