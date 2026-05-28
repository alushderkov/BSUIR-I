library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity universal_counter is
    generic (
        N : natural := 8  
    );
    port (
        clk   : in  std_logic;
        rst_n : in  std_logic;          
        en    : in  std_logic;         
        mode  : in  std_logic_vector(2 downto 0); 
        d_i   : in  std_logic_vector(N-1 downto 0);
        q     : out std_logic_vector(N-1 downto 0) 
    );
end;

architecture Behavioral of universal_counter is
    signal q_reg : std_logic_vector(N-1 downto 0);
begin
    process (clk, rst_n)
    begin
        if rst_n = '0' then
            q_reg <= (others => '0'); 
        elsif rising_edge(clk) then
            if en = '1' then
                case mode(1 downto 0) is 
                    when "00" =>  
                        q_reg <= q_reg(N-2 downto 0) & '0';
                    when "01" => 
                        q_reg <= '0' & q_reg(N-1 downto 1);
                    when "10" => 
                        q_reg <= d_i;
                    when others =>
                        q_reg <= q_reg;
                end case;
            end if;
        end if;
    end process;
    q <= q_reg;
end;