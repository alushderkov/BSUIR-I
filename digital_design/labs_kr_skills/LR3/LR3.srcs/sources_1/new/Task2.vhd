library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity d_flip_flop is
    port (
        D     : in  std_logic;
        clk   : in  std_logic;
        rst_n : in  std_logic;
        Q     : out std_logic
    );
end;

architecture Behavioral of d_flip_flop is
    attribute dont_touch : string;
    attribute dont_touch of Behavioral : architecture is "true";
    signal store : std_logic;
begin
    process (rst_n, clk)
    begin
        if rst_n = '0' then
            store <= '0';                     
        elsif rising_edge(clk) then
            store <= D;
        end if;
    end process;

    Q <= store;
end;