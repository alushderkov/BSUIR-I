library ieee;
use ieee.std_logic_1164.all;

entity sa_int is
    port (
        clk       : in  std_logic;
        rst       : in  std_logic;
        en        : in  std_logic;
        din       : in  std_logic;
        signature : out std_logic_vector(39 downto 0)
    );
end entity sa_int;

architecture rtl of sa_int is
    signal q  : std_logic_vector(39 downto 0);
    signal fb : std_logic;
begin
    fb <= q(39) xor din;

    process(clk, rst)
    begin
        if rst = '1' then
            q <= (others => '0');
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

    signature <= q;
end architecture rtl;