library ieee;
use ieee.std_logic_1164.all;

entity sa_ext is
    port (
        clk       : in  std_logic;
        rst       : in  std_logic;
        en        : in  std_logic;
        din       : in  std_logic;
        signature : out std_logic_vector(39 downto 0)
    );
end entity sa_ext;

architecture rtl of sa_ext is
    signal q  : std_logic_vector(39 downto 0);
    signal fb : std_logic;
begin
    fb <= q(39) xor q(20) xor q(18) xor q(1) xor din;

    process(clk, rst)
    begin
        if rst = '1' then
            q <= (others => '0');
        elsif rising_edge(clk) then
            if en = '1' then
                q <= q(38 downto 0) & fb;
            end if;
        end if;
    end process;

    signature <= q;
end architecture rtl;