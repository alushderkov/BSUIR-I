----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.02.2026 12:24:44
-- Design Name: 
-- Module Name: ALU_UNIT - Behavioral
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
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
signal mask      : std_logic_vector(5 downto 0);

begin
    --mask <= "111111" srl (6 - to_integer(unsigned(sw_in(9 downto 4))));
    mask <= (2 downto 0 => sw_in(10), others => '0');
    with sw_in(3 downto 0) select
        int_value <= sw_in(15 downto 10) xor sw_in(9 downto 4)                               when "0001",
                     --sw_in(15 downto 10) sll to_integer(unsigned(sw_in(9 downto 4))) or mask when "0010",
                     sw_in(15 downto 10) sll 3 or mask                                       when "0010",
                     sw_in(15 downto 10) nand sw_in(9 downto 4)                              when "0100",
                     std_logic_vector(to_unsigned(to_integer(unsigned(sw_in(15 downto 10))) 
                     - to_integer(unsigned(sw_in(9 downto 4))), 6))                          when "1000",
                     "000000"                                                                when others;     
    led_out <= (N - 1 downto 6 => '0') & int_value;          
end behavioral;
