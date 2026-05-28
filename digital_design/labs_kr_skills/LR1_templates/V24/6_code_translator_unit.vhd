----------------------------------------------------------------------------------
-- Variant 24 - Task 6: Code Translator (Behavioral)
-- Converts 7421 BCD code to Excess-3 code
--
-- 7421 Code (G):           Excess-3 Code (L):
-- 0: 0000                  0: 0011
-- 1: 0001                  1: 0100
-- 2: 0010                  2: 0101
-- 3: 0011                  3: 0110
-- 4: 0100                  4: 0111
-- 5: 0101                  5: 1000
-- 6: 0110                  6: 1001
-- 7: 1000                  7: 1010
-- 8: 1001                  8: 1011
-- 9: 1010                  9: 1100
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CODE_TRANSLATOR_UNIT is
    generic (
        N : integer := 16
    );
    port (
        sw_in   : in std_logic_vector(N - 1 downto 0);
        led_out : out std_logic_vector(N - 1 downto 0)
    );
end CODE_TRANSLATOR_UNIT;

architecture behavioral of CODE_TRANSLATOR_UNIT is
signal int_value : std_logic_vector (3 downto 0);

begin
    with sw_in(3 downto 0) select
        int_value <= "0011" when "0000",  -- 7421: 0 -> Exc3: 0
                     "0100" when "0001",  -- 7421: 1 -> Exc3: 1
                     "0101" when "0010",  -- 7421: 2 -> Exc3: 2
                     "0110" when "0011",  -- 7421: 3 -> Exc3: 3
                     "0111" when "0100",  -- 7421: 4 -> Exc3: 4
                     "1000" when "0101",  -- 7421: 5 -> Exc3: 5
                     "1001" when "0110",  -- 7421: 6 -> Exc3: 6
                     "1010" when "1000",  -- 7421: 7 -> Exc3: 7
                     "1011" when "1001",  -- 7421: 8 -> Exc3: 8
                     "1100" when "1010",  -- 7421: 9 -> Exc3: 9
                     "0000" when others;  -- Invalid codes
        
    led_out <= (N - 1 downto 4 => '0') & int_value;    
end behavioral;
