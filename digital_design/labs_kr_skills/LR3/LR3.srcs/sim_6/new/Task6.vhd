library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity tb_pwm_controller is
end tb_pwm_controller;

architecture Behavioral of tb_pwm_controller is

    signal clk_tb   : std_logic := '0';
    signal rst_n_tb : std_logic := '0';
    signal en_tb    : std_logic := '0';
    signal duty_tb  : std_logic_vector(7 downto 0) := (others => '0');
    signal pwm_tb   : std_logic;

    constant CLK_PERIOD : time := 10 ns;
begin
    UUT: entity work.pwm_controller
        port map (
            clk         => clk_tb,
            rst_n       => rst_n_tb,
            en          => en_tb,
            duty_cycle  => duty_tb,
            pwm_out     => pwm_tb
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

        -- Enable
        en_tb <= '1';

        -- 1. duty_cycle = 0 (0%)
        duty_tb <= x"00";
        wait for 8 * CLK_PERIOD;  -- 8 clocks = full cycle
        -- pwm_out = 0 all the time

        -- 2. duty_cycle = 2 (25% of 0..7 -> 2/8=25%)
        duty_tb <= x"40";
        wait for 8 * CLK_PERIOD;
        -- expect 2 clocks '1', 6 clocks '0' in each period

        -- 3. duty_cycle = 4 (50%)
        duty_tb <= x"80";
        wait for 8 * CLK_PERIOD;
        -- 4 clocks '1', 4 clocks '0'

        -- 4. duty_cycle = 6 (75%)
        duty_tb <= x"C0";
        wait for 8 * CLK_PERIOD;
        -- 6 clocks '1', 2 clocks '0'

        -- 5. duty_cycle = 7 (100%)
        duty_tb <= x"FF";
        wait for 8 * CLK_PERIOD;
        -- pwm_out = '1' almost all the time (except one clock when counter = 7)

        -- 6. Change duty cycle during operation (change to 50% in the middle of a period)
        duty_tb <= x"40";        -- start with 25%
        wait for 4 * CLK_PERIOD;
        duty_tb <= x"80";        -- change to 50% in the middle of the cycle
        wait for 8 * CLK_PERIOD;
        -- pwm_out should change from the next comparison

        -- 7. Disable en
        en_tb <= '0';
        wait for 8 * CLK_PERIOD;
        -- counter stops, pwm_out does not change

        -- 8. Enable en again
        en_tb <= '1';
        wait for 8 * CLK_PERIOD;
        -- counter continues from the same value, pwm_out resumes

        -- 9. Reset during operation
        rst_n_tb <= '0';
        wait for 15 ns;
        -- counter cleared, pwm_out = 0
        rst_n_tb <= '1';
        wait for 8 * CLK_PERIOD;
        -- counter starts from 0, pwm_out should be generated according to the new duty cycle

        wait;
    end process;
end;