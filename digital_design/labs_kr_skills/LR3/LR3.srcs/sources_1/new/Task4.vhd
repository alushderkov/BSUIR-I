library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity freq_div_behav is
    generic (
        DIVISOR : natural := 10
    );
    port (
        clk   : in  std_logic;
        rst_n : in  std_logic;
        en    : in  std_logic;
        q     : out std_logic
    );
end freq_div_behav;

architecture Behavioral of freq_div_behav is
    attribute dont_touch : string;
    attribute dont_touch of Behavioral : architecture is "true";    signal counter : integer range 0 to DIVISOR-1;
    signal q_int   : std_logic;
begin
    process (clk, rst_n)
    begin
        if rst_n = '0' then
            counter <= 0;
            q_int   <= '0';
        elsif rising_edge(clk) then
            if en = '1' then
                if counter = DIVISOR-1 then
                    counter <= 0;
                    q_int   <= not q_int; 
                else
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;

    q <= q_int;
end;