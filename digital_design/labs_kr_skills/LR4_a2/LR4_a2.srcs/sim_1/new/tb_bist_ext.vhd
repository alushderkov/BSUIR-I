library ieee;
use ieee.std_logic_1164.all;

entity tb_bist_ext is
end entity tb_bist_ext;

architecture sim of tb_bist_ext is
    signal clk       : std_logic := '0';
    signal rst       : std_logic := '1';
    signal start     : std_logic := '0';
    signal done      : std_logic;
    signal signature : std_logic_vector(39 downto 0);

    component bist_ext
        port (
            clk       : in  std_logic;
            rst       : in  std_logic;
            start     : in  std_logic;
            done      : out std_logic;
            signature : out std_logic_vector(39 downto 0)
        );
    end component;

begin
    clk <= not clk after 5 ns;

    uut: bist_ext
        port map (
            clk       => clk,
            rst       => rst,
            start     => start,
            done      => done,
            signature => signature
        );

    process
    begin
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        wait for 20 ns;
        
        start <= '1';
        wait for 10 ns;
        start <= '0';
        
        wait until done = '1';
        wait for 50 ns;
        
        wait;
    end process;
end architecture sim;