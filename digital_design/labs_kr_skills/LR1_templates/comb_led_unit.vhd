----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.02.2026 21:25:37
-- Design Name: 
-- Module Name: comb_led_unit - Behavioral
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

entity COMB_LED_UNIT is
    generic (
        INITVALUE : std_logic_vector := X"5C";
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
