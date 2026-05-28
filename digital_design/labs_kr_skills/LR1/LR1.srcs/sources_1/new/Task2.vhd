library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sw_led_unit is
    Generic (
        N: integer := 16
    );
    Port ( 
        sw_i: in std_logic_vector(N - 1 downto 0);
        led_o: out std_logic_vector(N - 1 downto 0) 
    );
end sw_led_unit;

architecture Behavioral of sw_led_unit is
begin
    led_o <= sw_i;
end Behavioral;
