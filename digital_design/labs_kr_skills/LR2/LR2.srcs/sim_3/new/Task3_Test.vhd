library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity translator_tb is
end;

architecture Behavioral of translator_tb is

    type test_array is array (0 to 9) of std_logic_vector(3 downto 0);

    signal g: std_logic_vector(3 downto 0);
    signal l: std_logic_vector(3 downto 0);
    
    constant g_valid : test_array := (
        "0000", "0001", "0010", "0011", "0100",
        "0101", "0110", "1000", "1001", "1010"
    );
    constant l_expected : test_array := (
        "0011", "0100", "0101", "0110", "0111",
        "1000", "1001", "1010", "1011", "1100"
    );
    
    constant period: time :=  50 ns;
    
begin
    t_s: entity work.translator_structural_d
                  Port map (
                        sw_i => g,
                        led_o=> l
                  );
                  
     process 
     begin
        
        for i in 0 to 9 loop
            g <= g_valid(i);
            wait for period;
            
            assert l = l_expected(i)
                report "Error when g =" & integer'image(to_integer(unsigned(g_valid(i))))
                severity error;
                
        end loop;
    
     end process;      

end Behavioral;
