library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity led_const is
    Generic (
        value: std_logic_vector := X"2B4C"
    );
    Port ( 
        led_o: out std_logic_vector(value'length - 1 downto 0)
    );
end led_const;

architecture Behavioral of led_const is
 constant output_value: std_logic_vector(value'length - 1 downto 0) := value;
begin
    led_o <= output_value;
end Behavioral;
