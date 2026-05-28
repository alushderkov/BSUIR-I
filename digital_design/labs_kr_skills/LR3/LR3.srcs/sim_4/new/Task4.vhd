library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_freq_div_behav is
end tb_freq_div_behav;

architecture Behavioral of tb_freq_div_behav is
    component freq_div_behav is
        generic ( DIVISOR : natural );
        port (
            clk   : in  std_logic;
            rst_n : in  std_logic;
            en    : in  std_logic;
            q     : out std_logic
        );
    end component;

    constant DIVISOR : natural := 4;
    signal clk_tb   : std_logic := '0';
    signal rst_n_tb : std_logic := '0';
    signal en_tb    : std_logic := '0';
    signal q_tb     : std_logic;

    constant CLK_PERIOD : time := 10 ns;
begin
    UUT: freq_div_behav
        generic map ( DIVISOR => DIVISOR )
        port map (
            clk   => clk_tb,
            rst_n => rst_n_tb,
            en    => en_tb,
            q     => q_tb
        );

    clk_gen: process
    begin
        clk_tb <= '0';
        wait for CLK_PERIOD/2;
        clk_tb <= '1';
        wait for CLK_PERIOD/2;
    end process;

    stimulus: process
    begin
        -- Initial reset
        rst_n_tb <= '0';
        wait for 30 ns;
        rst_n_tb <= '1';
        wait for 10 ns;

        -- Enable the counter
        en_tb <= '1';
        wait for 10 ns;  -- allow time to start counting

        -- Wait several periods to see toggling
        -- With DIVISOR=4, q toggles every 4 clocks, i.e. period of 8 clocks
        wait for 8 * CLK_PERIOD;  -- 80 ns, should have two toggles

        -- Disable enable
        en_tb <= '0';
        wait for 4 * CLK_PERIOD;  -- 40 ns, output does not change

        -- Enable again
        en_tb <= '1';
        wait for 8 * CLK_PERIOD;

        -- Reset during operation
        rst_n_tb <= '0';
        wait for 15 ns;
        rst_n_tb <= '1';
        wait for 30 ns;

        wait;
    end process;
end Behavioral;