----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2026 02:34:04
-- Design Name: 
-- Module Name: code_translator_unit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
    with sw_in(8 downto 0) select
        int_value <= "0001" when "000000001",
                     "0010" when "000000010",
                     "0011" when "000000100",
                     "0100" when "000001000",
                     "1011" when "000010000",
                     "1100" when "000100000",
                     "1101" when "001000000",
                     "1110" when "010000000",
                     "1111" when "100000000",
                     "0000" when others;
        
    led_out <= (N - 1 downto 4 => '0') & int_value;    
end behavioral;
