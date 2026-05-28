library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity tb_reg_file_2r1w is
end tb_reg_file_2r1w;

architecture Behavioral of tb_reg_file_2r1w is

    constant ADDR_WIDTH : natural := 5;
    constant DATA_WIDTH : natural := 16;
    constant CLK_PERIOD : time := 10 ns;

    signal clk_tb   : std_logic := '0';
    signal rst_n_tb : std_logic := '0';

    signal w_en_tb   : std_logic := '0';
    signal w_addr_tb : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal w_data_tb : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

    signal r_en_1_tb   : std_logic := '0';
    signal r_addr_1_tb : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal r_data_1_tb : std_logic_vector(DATA_WIDTH-1 downto 0);

    signal r_en_2_tb   : std_logic := '0';
    signal r_addr_2_tb : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal r_data_2_tb : std_logic_vector(DATA_WIDTH-1 downto 0);
begin
    UUT: entity work.reg_file_2r1w
        port map (
            clk      => clk_tb,
            rst_n    => rst_n_tb,
            w_en     => w_en_tb,
            w_addr   => w_addr_tb,
            w_data   => w_data_tb,
            r_en_1   => r_en_1_tb,
            r_addr_1 => r_addr_1_tb,
            r_data_1 => r_data_1_tb,
            r_en_2   => r_en_2_tb,
            r_addr_2 => r_addr_2_tb,
            r_data_2 => r_data_2_tb
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

        -- 1. Sequential write to registers 0, 1, 2
        w_en_tb <= '1';
        w_addr_tb <= std_logic_vector(to_unsigned(0, ADDR_WIDTH));
        w_data_tb <= x"1234";
        wait for CLK_PERIOD;

        w_addr_tb <= std_logic_vector(to_unsigned(1, ADDR_WIDTH));
        w_data_tb <= x"5678";
        wait for CLK_PERIOD;

        w_addr_tb <= std_logic_vector(to_unsigned(2, ADDR_WIDTH));
        w_data_tb <= x"9ABC";
        wait for CLK_PERIOD;

        -- 2. Read from registers 0, 1, 2 (asynchronous)
        r_en_1_tb <= '1';
        r_addr_1_tb <= std_logic_vector(to_unsigned(0, ADDR_WIDTH));
        wait for 5 ns;
        -- expect r_data_1 = 0x1234

        r_addr_1_tb <= std_logic_vector(to_unsigned(1, ADDR_WIDTH));
        wait for 5 ns;
        -- r_data_1 = 0x5678

        r_addr_1_tb <= std_logic_vector(to_unsigned(2, ADDR_WIDTH));
        wait for 5 ns;
        -- r_data_1 = 0x9ABC

        -- 3. Simultaneous read and write to the same address (forwarding)
        -- Write value 0xDEAD to register 3
        w_en_tb <= '1';
        w_addr_tb <= std_logic_vector(to_unsigned(3, ADDR_WIDTH));
        w_data_tb <= x"DEAD";
        wait for CLK_PERIOD;

        -- Now simultaneously read register 3 (r_addr_1 = 3) and write new value 0xBEEF to it in the same clock cycle
        w_en_tb <= '1';
        w_addr_tb <= std_logic_vector(to_unsigned(3, ADDR_WIDTH));
        w_data_tb <= x"BEEF";
        r_en_1_tb <= '1';
        r_addr_1_tb <= std_logic_vector(to_unsigned(3, ADDR_WIDTH));
        wait for CLK_PERIOD;
        -- According to asynchronous logic, r_data_1 should become 0xBEEF before the next clock (forwarding)

        -- After the clock, verify that register 3 contains 0xBEEF (can be read later)
        w_en_tb <= '0';
        r_addr_1_tb <= std_logic_vector(to_unsigned(3, ADDR_WIDTH));
        wait for 5 ns;
        -- r_data_1 = 0xBEEF

        -- 4. Attempt to write with w_en = '0'
        w_en_tb <= '0';
        w_addr_tb <= std_logic_vector(to_unsigned(4, ADDR_WIDTH));
        w_data_tb <= x"AAAA";
        wait for CLK_PERIOD;
        -- Then read register 4 - should be 0
        r_en_1_tb <= '1';
        r_addr_1_tb <= std_logic_vector(to_unsigned(4, ADDR_WIDTH));
        wait for 5 ns;
        -- r_data_1 = 0x0000

        -- 5. Reset during operation
        rst_n_tb <= '0';
        wait for 15 ns;
        rst_n_tb <= '1';
        wait for 10 ns;
        -- After reset, all registers = 0
        r_addr_1_tb <= std_logic_vector(to_unsigned(0, ADDR_WIDTH));
        wait for 5 ns;
        -- r_data_1 = 0x0000
        r_addr_1_tb <= std_logic_vector(to_unsigned(1, ADDR_WIDTH));
        wait for 5 ns;
        -- r_data_1 = 0x0000
        r_addr_1_tb <= std_logic_vector(to_unsigned(2, ADDR_WIDTH));
        wait for 5 ns;
        -- r_data_1 = 0x0000

        wait;
    end process;
end;