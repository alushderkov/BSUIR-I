Library IEEE;
Use IEEE.std_logic_1164.all;

Entity AND_N is 
    Generic (
        N : integer := 4
    );
    Port (
        A : in std_logic_vector(N-1 downto 0);
        F : out std_logic
    );
end AND_N;

Architecture Struct of AND_N is
    signal f_agr : std_logic;
begin
    P0 : process (A)
    begin
        f_agr <= '1';
        for i in 0 to N-1 loop
            f_agr <= f_agr and A(i);
        end loop;
    end process P0;
    F <= f_agr;
end Struct;