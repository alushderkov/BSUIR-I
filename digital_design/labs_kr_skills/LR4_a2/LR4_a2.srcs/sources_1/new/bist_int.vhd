library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bist_int is
    port (
        clk       : in  std_logic;
        rst       : in  std_logic;
        start     : in  std_logic;
        done      : out std_logic;
        signature : out std_logic_vector(39 downto 0)
    );
end entity bist_int;

architecture rtl of bist_int is
    component lfsr_int_gen
        port (
            clk  : in  std_logic;
            rst  : in  std_logic;
            en   : in  std_logic;
            seed : in  std_logic_vector(39 downto 0);
            dout : out std_logic
        );
    end component;

    component sa_int
        port (
            clk       : in  std_logic;
            rst       : in  std_logic;
            en        : in  std_logic;
            din       : in  std_logic;
            signature : out std_logic_vector(39 downto 0)
        );
    end component;

    signal gen_out  : std_logic;
    signal dut_out  : std_logic;
    signal test_en  : std_logic;
    signal count    : unsigned(9 downto 0);
    signal s_done   : std_logic;

begin
    dut_out <= gen_out xor '1';

    gen_inst: lfsr_int_gen
        port map (
            clk  => clk,
            rst  => rst,
            en   => test_en,
            seed => x"0000000001",
            dout => gen_out
        );

    sa_inst: sa_int
        port map (
            clk       => clk,
            rst       => rst,
            en        => test_en,
            din       => dut_out,
            signature => signature
        );

    process(clk, rst)
    begin
        if rst = '1' then
            count <= (others => '0');
            test_en <= '0';
            s_done <= '0';
        elsif rising_edge(clk) then
            if start = '1' and s_done = '0' then
                test_en <= '1';
            end if;
            
            if test_en = '1' then
                if count = to_unsigned(1000, 10) then
                    test_en <= '0';
                    s_done <= '1';
                else
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;

    done <= s_done;
end architecture rtl;