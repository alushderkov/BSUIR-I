----------------------------------------------------------------------------------
-- Variant 24 - Task 1: LED Constant Display
-- Module displays constant K = 2B4C on 16 LEDs
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LED_CONST is
    generic (
        INITVALUE : std_logic_vector := X"2B4C" 
        );
    port (
        led_out : out std_logic_vector(INITVALUE'length - 1 downto 0)
        );
end LED_CONST;

architecture behavioral of LED_CONST is
constant INITVALUE_NORM : std_logic_vector(INITVALUE'length - 1 downto 0) := INITVALUE;
begin
    led_out <= INITVALUE_NORM;
end behavioral;
