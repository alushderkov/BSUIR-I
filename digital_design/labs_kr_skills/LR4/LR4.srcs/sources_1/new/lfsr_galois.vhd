library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lfsr_galois is
    port (
        clk      : in  std_logic;
        rst      : in  std_logic;
        en       : in  std_logic;
        dout_par : out std_logic_vector(39 downto 0);
        dout_ser : out std_logic
    );
end lfsr_galois;

architecture galois of lfsr_galois is
    signal q : std_logic_vector(39 downto 0) := (others => '1');
    signal q_next : std_logic_vector(39 downto 0);
    signal feedback : std_logic;
begin
    feedback <= q(39);
    q_next <= (q(38 downto 0) & feedback) xor 
              (20 => feedback, 18 => feedback, 1 => feedback, others => '0');

    process(clk, rst)
    begin
        if rst = '1' then
            q <= (others => '1');
        elsif rising_edge(clk) then
            if en = '1' then
                q <= q_next;
            end if;
        end if;
    end process;

    dout_par <= q;
    dout_ser <= q(39);
        
end;