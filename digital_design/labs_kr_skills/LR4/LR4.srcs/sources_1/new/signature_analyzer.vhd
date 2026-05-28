library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signature_analyzer is
    port (
        clk       : in  std_logic;
        rst       : in  std_logic; 
        en        : in  std_logic;
        data_in   : in  std_logic; 
        signature : out std_logic_vector(39 downto 0)   
    );
end signature_analyzer;

architecture rtl of signature_analyzer is
    signal q : std_logic_vector(39 downto 0) := (others => '0');
    signal feedback : std_logic;
begin
    
    feedback <= q(39) xor q(20) xor q(18) xor q(1) xor data_in;

    process(clk, rst)
    begin
        if rst = '1' then
            q <= (others => '0'); 
        elsif rising_edge(clk) then
            if en = '1' then
                q <= q(38 downto 0) & feedback;
            end if;
        end if;
    end process;

    signature <= q;
end rtl;