library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- I = 68 = 0000_0000_0110_1000
-- J = BE = 0000_0000_1011_1110
-- sw_i[7_0] = 1101_0110 = D6

entity comb_led_unit is
  Generic (
    M: integer := 16;
    I: std_logic_vector(7 downto 0) := X"68"
  );
  Port ( 
    sw_i: in std_logic_vector(7 downto 0);
    led_o: out std_logic_vector(M - 1 downto 0)
  );
end comb_led_unit;

architecture Behavioral of comb_led_unit is
    
    signal result_8bit: std_logic_vector(I'length - 1 downto 0);

begin
    
    result_8bit <= I xor sw_i;
    led_o <= (M - 1 downto I'length => '0') & result_8bit;

end Behavioral;
