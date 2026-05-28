library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lfsr_fibo is
    port (
        clk      : in  std_logic;
        rst      : in  std_logic;
        en       : in  std_logic;
        dout_par : out std_logic_vector(39 downto 0);
        dout_ser : out std_logic
    );
end lfsr_fibo;

architecture fibonacci of lfsr_fibo is
    signal q : std_logic_vector(39 downto 0) := (others => '1');
    signal feedback : std_logic;
begin
    feedback <= q(39) xor q(20) xor q(18) xor q(1);

    process(clk, rst)
    begin
        if rst = '1' then
            q <= (others => '1');
        elsif rising_edge(clk) then
            if en = '1' then
                q <= q(38 downto 0) & feedback;
            end if;
        end if;
    end process;

    dout_par <= q;
    dout_ser <= q(39);
end fibonacci;
