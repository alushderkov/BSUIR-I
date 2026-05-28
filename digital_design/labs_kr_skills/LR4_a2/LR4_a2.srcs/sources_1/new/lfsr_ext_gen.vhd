library ieee;
use ieee.std_logic_1164.all;

entity lfsr_ext_gen is
    port (
        clk  : in  std_logic;
        rst  : in  std_logic;
        en   : in  std_logic;
        seed : in  std_logic_vector(39 downto 0);
        dout : out std_logic
    );
end entity lfsr_ext_gen;

architecture rtl of lfsr_ext_gen is
    signal q  : std_logic_vector(39 downto 0);
    signal fb : std_logic;
begin
    fb <= q(39) xor q(20) xor q(18) xor q(1);

    process(clk, rst)
    begin
        if rst = '1' then
            q <= seed;
        elsif rising_edge(clk) then
            if en = '1' then
                q <= q(38 downto 0) & fb;
            end if;
        end if;
    end process;

    dout <= q(39);
end architecture rtl;