library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity tb_reg_file is
end tb_reg_file;

architecture Behavioral of tb_reg_file is
    component reg_file is
        generic (
            N : natural;
            M : natural;
            A : natural   
        );
        port (
            clk     : in  std_logic;
            rst_n   : in  std_logic;
            wr_en   : in  std_logic;
            wr_addr : in  std_logic_vector(A-1 downto 0);
            wr_data : in  std_logic_vector(N-1 downto 0);
            rd_addr : in  std_logic_vector(A-1 downto 0);
            rd_data : out std_logic_vector(N-1 downto 0)
        );
    end component;

    constant N : natural := 8;
    constant M : natural := 4;
    constant ADDR_WIDTH : natural := 2;   -- log2(M)

    signal clk_tb     : std_logic := '0';
    signal rst_n_tb   : std_logic := '0';
    signal wr_en_tb   : std_logic := '0';
    signal wr_addr_tb : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal wr_data_tb : std_logic_vector(N-1 downto 0) := (others => '0');
    signal rd_addr_tb : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal rd_data_tb : std_logic_vector(N-1 downto 0);

    constant CLK_PERIOD : time := 20 ns;
begin
    UUT: reg_file
        generic map ( N => N, M => M, A => ADDR_WIDTH ) 
        port map (
            clk     => clk_tb,
            rst_n   => rst_n_tb,
            wr_en   => wr_en_tb,
            wr_addr => wr_addr_tb,
            wr_data => wr_data_tb,
            rd_addr => rd_addr_tb,
            rd_data => rd_data_tb
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

        -- Write to register 0: data 0xAA
        wr_en_tb <= '1';
        wr_addr_tb <= "00";
        wr_data_tb <= x"AA";
        wait for CLK_PERIOD;
        wr_en_tb <= '0';

        -- Read register 0 (asynchronous)
        rd_addr_tb <= "00";
        wait for 5 ns;
        -- rd_data_tb should be 0xAA

        -- Write to register 1: 0x55
        wr_en_tb <= '1';
        wr_addr_tb <= "01";
        wr_data_tb <= x"55";
        wait for CLK_PERIOD;
        wr_en_tb <= '0';

        -- Read register 1
        rd_addr_tb <= "01";
        wait for 5 ns;
        -- rd_data_tb = 0x55

        -- Verify that register 0 did not change
        rd_addr_tb <= "00";
        wait for 5 ns;
        -- rd_data_tb = 0xAA

        -- Write to register 2: 0xFF
        wr_en_tb <= '1';
        wr_addr_tb <= "10";
        wr_data_tb <= x"FF";
        wait for CLK_PERIOD;
        wr_en_tb <= '0';

        -- Read register 2
        rd_addr_tb <= "10";
        wait for 5 ns;
        -- rd_data_tb = 0xFF

        -- Reset during operation
        rst_n_tb <= '0';
        wait for 15 ns;
        -- all registers cleared
        rst_n_tb <= '1';
        wait for 10 ns;
        -- Read register 0 should give 0
        rd_addr_tb <= "00";
        wait for 5 ns;
        -- rd_data_tb = 0x00

        wait;
    end process;
end Behavioral;