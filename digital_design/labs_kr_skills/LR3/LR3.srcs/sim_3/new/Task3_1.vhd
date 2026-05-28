library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity tb_reg_unit is
end tb_reg_unit;

architecture Behavioral of tb_reg_unit is
    component reg_unit is
        generic ( N : natural );
        port (
            clk   : in  std_logic;
            rst_n : in  std_logic;
            en    : in  std_logic;
            d_i   : in  std_logic_vector(N-1 downto 0);
            d_o   : out std_logic_vector(N-1 downto 0);
            q     : out std_logic
        );
    end component;

    constant N : natural := 8; 
    signal clk_tb   : std_logic := '0';
    signal rst_n_tb : std_logic := '0';
    signal en_tb    : std_logic := '0';
    signal d_i_tb   : std_logic_vector(N-1 downto 0) := (others => '0');
    signal d_o_tb   : std_logic_vector(N-1 downto 0);
    signal q_tb     : std_logic;

    constant CLK_PERIOD : time := 20 ns;
begin
    UUT: reg_unit
        generic map ( N => N )
        port map (
            clk   => clk_tb,
            rst_n => rst_n_tb,
            en    => en_tb,
            d_i   => d_i_tb,
            d_o   => d_o_tb,
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

        -- 1. Check hold when en=0 (content should be 0)
        en_tb <= '0';
        d_i_tb <= x"AA";   -- 10101010
        wait for CLK_PERIOD*2;
        -- Expect d_o_tb = 0

        -- 2. Write data when en=1
        en_tb <= '1';
        d_i_tb <= x"AA";
        wait for CLK_PERIOD;   -- AA is written on the rising edge
        -- Now d_o_tb should become AA

        -- 3. Hold when en=0
        en_tb <= '0';
        d_i_tb <= x"55";
        wait for CLK_PERIOD*2;
        -- d_o_tb should remain AA

        -- 4. Change data when en=1
        en_tb <= '1';
        d_i_tb <= x"55";
        wait for CLK_PERIOD;
        -- d_o_tb should become 55

        -- 5. Asynchronous reset during operation
        rst_n_tb <= '0';
        wait for 15 ns;
        -- d_o_tb should be cleared
        rst_n_tb <= '1';
        wait for CLK_PERIOD;

        -- 6. Another write for verification
        en_tb <= '1';
        d_i_tb <= x"FF";
        wait for CLK_PERIOD;
        -- d_o_tb = FF

        wait;
    end process;
end;