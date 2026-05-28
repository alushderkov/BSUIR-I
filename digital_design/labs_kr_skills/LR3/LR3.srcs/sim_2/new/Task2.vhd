library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_d_flip_flop is
end tb_d_flip_flop;

architecture Behavioral of tb_d_flip_flop is

    component d_flip_flop
        port (
            D     : in  std_logic;
            clk   : in  std_logic;
            rst_n : in  std_logic;
            Q     : out std_logic
        );
    end component;

    signal D_tb     : std_logic := '0';
    signal clk_tb   : std_logic := '0';
    signal rst_n_tb : std_logic := '1';
    signal Q_tb     : std_logic;

    constant CLK_PERIOD : time := 20 ns;

begin
  
    UUT: d_flip_flop
        port map (
            D     => D_tb,
            clk   => clk_tb,
            rst_n => rst_n_tb,
            Q     => Q_tb
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

        wait for 10 ns;

        -- 1. Reset check: activate reset for some time
        rst_n_tb <= '0';
        wait for 15 ns;
        -- Q should be '0'

        -- 2. Deactivate reset
        rst_n_tb <= '1';
        wait for 10 ns;

        -- 3. Write '1' on the positive edge
        D_tb <= '1';
        wait for CLK_PERIOD;   -- wait one clock period so that the edge occurs
        -- On the clock edge, D should be transferred to Q

        -- 4. Write '0' on the positive edge
        D_tb <= '0';
        wait for CLK_PERIOD;

        -- 5. Hold check: D changes, but no edge
        D_tb <= '1';
        wait for CLK_PERIOD/2;
        D_tb <= '0';
        wait for CLK_PERIOD/2;
        -- Q should not change

        -- 6. Another edge to write '0'
        wait for CLK_PERIOD;   -- wait for the next edge
        -- Now Q should become '0'

        -- 7. Asynchronous reset while clock is high
        rst_n_tb <= '0';
        wait for 10 ns;
        -- Q should become '0' immediately

        -- 8. Deactivate reset and check that the next edge writes data
        rst_n_tb <= '1';
        D_tb <= '1';
        wait for CLK_PERIOD;
        -- Q should become '1' on the edge

        wait;
    end process;

end Behavioral;