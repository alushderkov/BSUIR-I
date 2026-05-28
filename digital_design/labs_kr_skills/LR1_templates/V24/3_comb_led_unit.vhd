----------------------------------------------------------------------------------
-- Variant 24 - Task 3: Combinational LED Unit
-- Performs: sw_in XOR I = J, where I=68, J=BE
-- To display J (BE), set sw_in to D6 (I XOR J = 68 XOR BE = D6)
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMB_LED_UNIT is
    generic (
        INITVALUE : std_logic_vector := X"68";
        N : integer := 16
    );
    port (
        sw_in   : in std_logic_vector(INITVALUE'length - 1 downto 0);
        led_out : out std_logic_vector(N - 1 downto 0)
    );
end COMB_LED_UNIT;

architecture behavioral of COMB_LED_UNIT is
constant INITVALUE_NORM  : std_logic_vector(INITVALUE'length - 1 downto 0) := INITVALUE; 
signal   int_value       : std_logic_vector(INITVALUE'length - 1 downto 0);
begin
    int_value <= INITVALUE_NORM xor sw_in;
    led_out <= (N - 1 downto INITVALUE'length => '0') & int_value;
end behavioral;
