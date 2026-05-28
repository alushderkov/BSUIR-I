Library IEEE;
Use IEEE.std_logic_1164.all;

Entity TOP_6 is 
    Port ( 
        A_in: in std_logic;
        B_in: in std_logic;
        C_in: in std_logic;
        D_out : out std_logic
    );
End;

Architecture Func of TOP_6 is
    signal curr_state : std_logic;
begin
    P0 : process (A_in,B_in,C_in) 
    begin
        if B_in = '1' then
            curr_state <= '0';
        elsif rising_edge(A_in) then
            if C_in = '1' then
                curr_state <= not curr_state;
            end if;
        end if;
    end process P0;
    D_out <= curr_state;
end;
