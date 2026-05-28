library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity compact_bist_scheme is
    generic (TEST_LENGTH : integer := 10000);
    port (
        clk       : in  std_logic;
        start     : in  std_logic;
        done      : out std_logic;
        signature : out std_logic_vector(39 downto 0)
    );
end compact_bist_scheme;

architecture rtl of compact_bist_scheme is
    signal rst_test : std_logic := '0';
    signal test_en  : std_logic := '0';
    signal lfsr_stimuli : std_logic_vector(39 downto 0);
    signal dut_out : std_logic;
    signal counter : integer range 0 to TEST_LENGTH := 0;
    type state_type is (IDLE, TESTING, FINISHED);
    signal state : state_type := IDLE;
begin
    U_GEN: entity work.lfsr_galois
        port map (
            clk      => clk,
            rst      => rst_test,
            en       => test_en,
            dout_par => lfsr_stimuli,
            dout_ser => open
        );

    dut_out <= lfsr_stimuli(3) xor (lfsr_stimuli(15) and lfsr_stimuli(25)) xor lfsr_stimuli(38);

    U_SA: entity work.signature_analyzer
        port map (
            clk       => clk,
            rst       => rst_test,
            en        => test_en,
            data_in   => dut_out,
            signature => signature
        );

    process(clk)
    begin
        if rising_edge(clk) then
            case state is
                when IDLE =>
                    done <= '0';
                    test_en <= '0';
                    rst_test <= '1';
                    counter <= 0;
                    if start = '1' then
                        rst_test <= '0';
                        state <= TESTING;
                    end if;

                when TESTING =>
                    test_en <= '1';
                    if counter = TEST_LENGTH - 1 then
                        state <= FINISHED;
                    else
                        counter <= counter + 1;
                    end if;

                when FINISHED =>
                    test_en <= '0';
                    done <= '1';
                    if start = '0' then
                        state <= IDLE;
                    end if;
            end case;
        end if;
    end process;
end rtl;