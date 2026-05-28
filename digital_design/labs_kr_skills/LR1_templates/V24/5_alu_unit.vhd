----------------------------------------------------------------------------------
-- Variant 24 - Task 5: ALU Unit
-- Operations: A=nand, B=-, C=<<<3 (rotate left), D=xor
-- Selected by sw_in[3:0], operates on sw_in[15:10] and sw_in[9:4]
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_UNIT is
    generic (
        N : integer := 16
    );
    port (
        sw_in   : in std_logic_vector(N - 1 downto 0);
        led_out : out std_logic_vector(N - 1 downto 0)
    );
end ALU_UNIT;

architecture behavioral of ALU_UNIT is
signal int_value : std_logic_vector(5 downto 0);

begin
    with sw_in(3 downto 0) select
        int_value <= sw_in(15 downto 10) nand sw_in(9 downto 4)                            when "0001", -- A: NAND
                     std_logic_vector(to_unsigned(to_integer(unsigned(sw_in(15 downto 10))) 
                     - to_integer(unsigned(sw_in(9 downto 4))), 6))                        when "0010", -- B: Subtraction
                     sw_in(15 downto 10)(2 downto 0) & sw_in(15 downto 10)(5 downto 3)    when "0100", -- C: Rotate left by 3
                     sw_in(15 downto 10) xor sw_in(9 downto 4)                             when "1000", -- D: XOR
                     "000000"                                                               when others;
                     
    led_out <= (N - 1 downto 6 => '0') & int_value;          
end behavioral;
