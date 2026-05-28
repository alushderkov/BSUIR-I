library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_universal_counter is
end tb_universal_counter;

architecture Behavioral of tb_universal_counter is
    constant N : natural := 8;
    signal clk_tb   : std_logic := '0';
    signal rst_n_tb : std_logic := '0';
    signal en_tb    : std_logic := '0';
    signal mode_tb  : std_logic_vector(2 downto 0) := "000";
    signal d_i_tb   : std_logic_vector(N-1 downto 0) := (others => '0');
    signal q_tb     : std_logic_vector(N-1 downto 0);

    constant CLK_PERIOD : time := 20 ns;
begin
    UUT: entity work.universal_counter
    port map (
        clk   => clk_tb,
        rst_n => rst_n_tb,
        en    => en_tb,
        mode  => mode_tb,
        d_i   => d_i_tb,
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
        -- Reset
        rst_n_tb <= '0';
        wait for 30 ns;
        rst_n_tb <= '1';
        wait for 10 ns;

        -- Enable
        en_tb <= '1';

        -- 1. Load pattern "walking zero" (11111110)
        mode_tb <= "010";   -- mode(1..0)=10, MSB is don't care
        d_i_tb  <= x"FE";   -- 11111110
        wait for CLK_PERIOD;
        -- q = FE

        -- 2. Shift left (a zero should appear in the LSB)
        mode_tb <= "000";   -- shift left
        wait for 2 * CLK_PERIOD;
        -- after first cycle: FC (11111100), after second: F8 (11111000)

        -- 3. Shift right (a zero should appear in the MSB)
        mode_tb <= "001";   -- shift right
        wait for 3 * CLK_PERIOD;
        -- from F8: 7C, 3E, 1F

        -- 4. Load pattern "walking one" (00000001)
        mode_tb <= "010";   -- load
        d_i_tb  <= x"01";   -- 00000001
        wait for CLK_PERIOD;
        -- q = 01

        -- 5. Shift left (a one should appear in the MSB)
        mode_tb <= "000";   -- shift left
        wait for 3 * CLK_PERIOD;
        -- 02, 04, 08

        -- 6. Shift right (return)
        mode_tb <= "001";
        wait for 3 * CLK_PERIOD;
        -- 04, 02, 01

        -- 7. Hold mode (use mode = "11", undefined)
        mode_tb <= "011";
        d_i_tb <= x"FF";   -- change d_i, but no load occurs
        wait for 2 * CLK_PERIOD;
        -- q should remain 01

        -- 8. Disable en, verify that state does not change
        en_tb <= '0';
        mode_tb <= "010";  -- attempt to load
        d_i_tb <= x"AA";
        wait for 2 * CLK_PERIOD;
        -- q remains 01

        -- 9. Enable en, shift again
        en_tb <= '1';
        mode_tb <= "000";
        wait for 2 * CLK_PERIOD;
        -- q = 02, 04

        -- 10. Reset during operation
        rst_n_tb <= '0';
        wait for 15 ns;
        -- q = 00
        rst_n_tb <= '1';
        wait for 20 ns;
        -- after reset and one clock, with en=1 and mode=000, it starts shifting from 0, staying at 0

        wait;
    end process;
end Behavioral;