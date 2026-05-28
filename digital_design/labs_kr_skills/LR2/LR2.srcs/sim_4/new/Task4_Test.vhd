library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_comp is
end;

architecture Behavioral of tb_comp is
    signal a, b : std_logic_vector(2 downto 0);
    signal gt, lt, eq : std_logic;
    
    constant period: time := 20 ns;
begin
    comp: entity work.comp_3bit Port map (a, b, gt, lt, eq);

    process
        variable ai, bi : integer;
    begin
        for ai in 0 to 7 loop
        
            for bi in 0 to 7 loop
            
                a <= std_logic_vector(to_unsigned(ai, 3)); 
                b <= std_logic_vector(to_unsigned(bi, 3)); 
                
                wait for period;
                
                if ai > bi then
                    assert (gt='1' and lt='0' and eq='0')
                        report "Error: A>B" severity error;
                elsif ai < bi then
                    assert (gt='0' and lt='1' and eq='0')
                        report "Error: A<B" severity error;
                else
                    assert (gt='0' and lt='0' and eq='1')
                        report "Error: A=B" severity error;
                end if;
                
            end loop;
            
        end loop;
        
        report "All 64 occurances were checked correctly";
        wait;
        
    end process;
end;