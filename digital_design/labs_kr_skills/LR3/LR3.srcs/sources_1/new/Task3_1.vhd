library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity reg_unit is
    generic (
        N : natural := 8
    );
    port (
        clk   : in  std_logic;
        rst_n : in  std_logic;
        en    : in  std_logic;
        d_i   : in  std_logic_vector(N-1 downto 0);
        d_o   : out std_logic_vector(N-1 downto 0);
        q     : out std_logic
    );
end;

architecture Structural of reg_unit is
  
    component d_flip_flop is
        port (
            D     : in  std_logic;
            clk   : in  std_logic;
            rst_n : in  std_logic;
            Q     : out std_logic
        );
    end component;

    signal reg_int : std_logic_vector(N-1 downto 0);
begin
 
    gen_reg: for i in 0 to N-1 generate
        signal d_ff_input : std_logic;
    begin
      
        d_ff_input <= d_i(i) when en = '1' else reg_int(i);

        ff: d_flip_flop
            port map (
                D     => d_ff_input,
                clk   => clk,
                rst_n => rst_n,
                Q     => reg_int(i)
            );
    end generate;

    d_o <= reg_int;
    q   <= '0'; 
end;