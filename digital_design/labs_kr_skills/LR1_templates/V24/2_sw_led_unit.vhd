----------------------------------------------------------------------------------
-- Variant 24 - Task 2: Switch-LED Direct Connection
-- Module passes switch states directly to LEDs
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SW_LED_UNIT is
    generic (
        N : integer := 16
    );
    port (
        sw_in   : in std_logic_vector(N - 1 downto 0);
        led_out : out std_logic_vector(N - 1 downto 0)
    );
end SW_LED_UNIT;

architecture behavioral of SW_LED_UNIT is
begin
    led_out <= sw_in;
end behavioral;
