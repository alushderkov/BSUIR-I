library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity top5 is
    port (
        sys_clk  : in  std_logic;
        rst_n    : in  std_logic;
        en_sw    : in  std_logic;
        mode_sw  : in  std_logic_vector(1 downto 0);
        d_i_sw   : in  std_logic_vector(7 downto 0);
        led      : out std_logic_vector(7 downto 0)
    );
end;

architecture Structural of top5 is
    component freq_div_behav is
        generic ( DIVISOR : natural );
        port ( clk : in std_logic; rst_n : in std_logic; en : in std_logic; q : out std_logic );
    end component;

    component universal_counter is
        generic ( N : natural );
        port ( clk : in std_logic; rst_n : in std_logic; en : in std_logic;
               mode : in std_logic_vector(2 downto 0); d_i : in std_logic_vector(N-1 downto 0);
               q : out std_logic_vector(N-1 downto 0) );
    end component;

    signal clk_div : std_logic;
    signal mode_vec : std_logic_vector(2 downto 0);  
    constant DIV_VALUE : natural := 25_000_000; 
begin
    mode_vec <= "0" & mode_sw;


    div: freq_div_behav
        generic map ( DIVISOR => DIV_VALUE )
        port map (
            clk   => sys_clk,
            rst_n => rst_n,
            en    => '1',
            q     => clk_div
        );

    counter: universal_counter
        generic map ( N => 8 )
        port map (
            clk   => clk_div,
            rst_n => rst_n,
            en    => en_sw,
            mode  => mode_vec,
            d_i   => d_i_sw,
            q     => led
        );
end;