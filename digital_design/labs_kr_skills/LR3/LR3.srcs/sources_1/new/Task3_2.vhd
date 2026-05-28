library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity reg_file is
    generic (
        N : natural := 8;   
        M : natural := 8; 
        A : natural := 3    -- (log2(M))
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
end;

architecture Structural of reg_file is
    
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

    type reg_array is array (0 to M-1) of std_logic_vector(N-1 downto 0);
    signal reg_out : reg_array;
    signal en_reg  : std_logic_vector(M-1 downto 0);

begin
    
    process(wr_addr, wr_en)
    begin
        en_reg <= (others => '0');
        if wr_en = '1' then
            en_reg(to_integer(unsigned(wr_addr))) <= '1';
        end if;
    end process;

    gen_regs: for i in 0 to M-1 generate
        reg_i: reg_unit
            generic map ( N => N )
            port map (
                clk   => clk,
                rst_n => rst_n,
                en    => en_reg(i),
                d_i   => wr_data,
                d_o   => reg_out(i),
                q     => open
            );
    end generate;

    rd_data <= reg_out(to_integer(unsigned(rd_addr)));
end;