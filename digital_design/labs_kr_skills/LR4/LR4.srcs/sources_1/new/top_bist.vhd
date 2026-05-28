library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_bist is
    port (
        CLK100MHZ : in  std_logic;
        BTNC      : in  std_logic;                    
        SW        : in  std_logic_vector(1 downto 0); 
        LED       : out std_logic_vector(15 downto 0);
        RGB1_Red  : out std_logic;                    
        RGB1_Green: out std_logic                     
    );
end top_bist;

architecture rtl of top_bist is
    signal done_sig      : std_logic;
    signal signature_sig : std_logic_vector(39 downto 0);
begin

    U_BIST: entity work.compact_bist_scheme
        generic map (
            TEST_LENGTH => 100000000
        )
        port map (
            clk       => CLK100MHZ,
            start     => BTNC,
            done      => done_sig,
            signature => signature_sig
        );

    process(SW, signature_sig)
    begin
        case SW is
            when "00" =>
                LED <= signature_sig(15 downto 0);
            when "01" =>
                LED <= signature_sig(31 downto 16);
            when "10" =>
                LED <= x"00" & signature_sig(39 downto 32);
            when others =>
                LED <= (others => '0');
        end case;
    end process;

    
    RGB1_Green <= done_sig;
    RGB1_Red   <= not done_sig;

end rtl;