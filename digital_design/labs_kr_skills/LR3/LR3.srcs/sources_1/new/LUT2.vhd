library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LUT2 is
    generic (
        INIT : std_logic_vector(3 downto 0) := "0111"
    );
    port (
        I0 : in  std_logic;
        I1 : in  std_logic;
        O  : out std_logic
    );
end;

architecture Behavioral of LUT2 is
attribute dont_touch : string;
attribute dont_touch of Behavioral : architecture is "true";

  signal temp : std_logic_vector(1 downto 0);

begin
  temp <= I1 & I0;

  with (temp) select
    O <= INIT(0) when "00",
             INIT(1) when "01",
             INIT(2) when "10",
             INIT(3) when "11",
             '0' when others;
end;