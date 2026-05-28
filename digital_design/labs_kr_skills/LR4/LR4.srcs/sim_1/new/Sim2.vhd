library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_compact_bist is
end tb_compact_bist;

architecture bench of tb_compact_bist is
    constant CLK_PERIOD : time := 10 ns;   -- 100 MHz
    constant TEST_LEN   : integer := 100;  -- short length for simulation

    signal clk   : std_logic := '0';
    signal start : std_logic := '0';
    signal done  : std_logic;
    signal signature : std_logic_vector(39 downto 0);
begin
    clk <= not clk after CLK_PERIOD/2;

    uut: entity work.compact_bist_scheme
        generic map (TEST_LENGTH => TEST_LEN)
        port map (
            clk       => clk,
            start     => start,
            done      => done,
            signature => signature
        );

    process
    begin
        -- Initial reset
        wait for 20 ns;

        -- Start test
        start <= '1';
        wait until rising_edge(clk);
        start <= '0';

        -- Wait for completion
        wait until done = '1' for (TEST_LEN + 10) * CLK_PERIOD;
        assert done = '1' report "Test did not finish in time" severity error;

        -- Signature should be non-zero (for a working circuit)
        assert unsigned(signature) /= 0
            report "Signature is zero, possibly an error in the circuit"
            severity warning;

        -- Check that done remains '1' while start = '0'
        wait for 5 * CLK_PERIOD;
        assert done = '1' report "done reset prematurely" severity error;

        -- Return to IDLE by deasserting start
        start <= '0';
        wait for 2 * CLK_PERIOD;
        assert done = '0' report "Did not return to IDLE after start deassertion" severity error;

        -- Restart
        start <= '1';
        wait until rising_edge(clk);
        start <= '0';
        wait until done = '1' for (TEST_LEN + 10) * CLK_PERIOD;
        assert done = '1' report "Repeat test did not finish" severity error;

        report "Testing completed successfully" severity note;
        wait;
    end process;
end bench;