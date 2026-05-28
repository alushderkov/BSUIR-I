library ieee;
use ieee.std_logic_1164.all;

entity lfsr_int_gen is
    port (
        clk  : in  std_logic;
        rst  : in  std_logic;
        en   : in  std_logic;
        seed : in  std_logic_vector(39 downto 0);
        dout : out std_logic
    );
end entity lfsr_int_gen;

architecture rtl of lfsr_int_gen is
    signal q  : std_logic_vector(39 downto 0);
    signal fb : std_logic;
begin
    fb <= q(39);

    process(clk, rst)
    begin
        if rst = '1' then
            q <= seed;
        elsif rising_edge(clk) then
            if en = '1' then
                q(0) <= fb;
                q(1) <= q(0) xor fb;
                q(17 downto 2) <= q(16 downto 1);
                q(18) <= q(17) xor fb;
                q(19) <= q(18);
                q(20) <= q(19) xor fb;
                q(39 downto 21) <= q(38 downto 20);
            end if;
        end if;
    end process;

    dout <= q(39);
end architecture rtl;