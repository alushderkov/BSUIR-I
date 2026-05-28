library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_RS_LATCH_NAND is
end tb_RS_LATCH_NAND;

architecture Behavioral of tb_RS_LATCH_NAND is

    component RS_LATCH_NAND is
        port (
            S : in  std_logic;
            R : in  std_logic;
            Q : out std_logic;
            nQ : out std_logic
        );
    end component;

    signal S_tb, R_tb : std_logic := '1';
    signal Q_tb, nQ_tb : std_logic;

begin

    UUT: RS_LATCH_NAND
        port map (
            S => S_tb,
            R => R_tb,
            Q => Q_tb,
            nQ => nQ_tb
        );

    stimulus: process
    begin
        -- Initial wait to allow signals to settle
        S_tb <= '1'; R_tb <= '1';
        wait for 10 ns;

        -- 1. Set mode: S = '0', R = '1'
        S_tb <= '0';
        R_tb <= '1';
        wait for 20 ns;
        -- Expect Q = '1', nQ = '0'

        -- 2. Hold mode: S = '1', R = '1'
        S_tb <= '1';
        R_tb <= '1';
        wait for 20 ns;
        -- Q and nQ should remain unchanged

        -- 3. Reset mode: S = '1', R = '0'
        S_tb <= '1';
        R_tb <= '0';
        wait for 20 ns;
        -- Expect Q = '0', nQ = '1'

        -- 4. Hold mode after reset: S = '1', R = '1'
        S_tb <= '1';
        R_tb <= '1';
        wait for 20 ns;
        -- State is preserved

        -- 5. Forbidden combination: S = '0', R = '0'
        S_tb <= '0';
        R_tb <= '0';
        wait for 20 ns;
        -- Expect Q = '1', nQ = '1' (both outputs 1)

        -- 6. Return to hold mode: S = '1', R = '1'
        S_tb <= '1';
        R_tb <= '1';
        wait for 20 ns;
        
        wait;
    end process;

end Behavioral;