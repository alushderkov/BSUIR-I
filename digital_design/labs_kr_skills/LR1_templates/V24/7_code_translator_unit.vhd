----------------------------------------------------------------------------------
-- Variant 24 - Task 7: Code Translator (Structural with MUX2 and NOT)
-- Converts 7421 BCD code to Excess-3 code using only MUX2 and NOT gates
-- 
-- Boolean minimization with don't-care conditions (1011-1111 are invalid 7421):
-- L3 = G3·Ḡ2 + G2·G1
-- L2 = G3 + G2·Ḡ1
-- L1 = Ḡ3·Ḡ2·G1 + Ḡ3·G2·Ḡ1 + G3
-- L0 = 1 (always true for valid inputs)
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CCODE_TRANSLATOR_UNIT is
    generic (
        N : integer := 16
    );
    port (
        sw_in   : in std_logic_vector(N - 1 downto 0);
        led_out : out std_logic_vector(N - 1 downto 0)
    );
end CCODE_TRANSLATOR_UNIT;

architecture structural of CCODE_TRANSLATOR_UNIT is
-- Component declarations
component NOT_1 is
    port ( 
        a : in std_logic;
        q : out std_logic
    );
end component;

component AND_N_MUX is
    generic (
        N : integer := 4
    );
    port ( 
        x_in  : in std_logic_vector (N - 1 downto 0);   
        q_out : out std_logic
    );
end component;

component OR_N_MUX is
    generic (
        N : integer := 4
    );
    port ( 
        x_in  : in std_logic_vector (N - 1 downto 0);   
        q_out : out std_logic
    );
end component;

-- Internal signals
signal in_value     : std_logic_vector(3 downto 0);
signal out_value    : std_logic_vector(3 downto 0);
signal not_g3, not_g2, not_g1, not_g0 : std_logic;

-- Terms for L3
signal l3_term1, l3_term2 : std_logic;
signal l3_terms : std_logic_vector(1 downto 0);

-- Terms for L2  
signal l2_term1, l2_term2 : std_logic;
signal l2_terms : std_logic_vector(1 downto 0);

-- Terms for L1
signal l1_term1, l1_term2 : std_logic;
signal l1_terms : std_logic_vector(2 downto 0);

begin
    in_value <= sw_in(3 downto 0);
    
    -- Generate inverted inputs
    NOT_G3: NOT_1 port map (a => in_value(3), q => not_g3);
    NOT_G2: NOT_1 port map (a => in_value(2), q => not_g2);
    NOT_G1: NOT_1 port map (a => in_value(1), q => not_g1);
    NOT_G0: NOT_1 port map (a => in_value(0), q => not_g0);
    
    -- L3 = G3·Ḡ2 + G2·G1
    L3_TERM1_AND: AND_N_MUX 
        generic map (N => 2)
        port map (x_in(1) => in_value(3), x_in(0) => not_g2, q_out => l3_term1);
    L3_TERM2_AND: AND_N_MUX
        generic map (N => 2)
        port map (x_in(1) => in_value(2), x_in(0) => in_value(1), q_out => l3_term2);
    l3_terms <= (1 => l3_term1, 0 => l3_term2);
    L3_OR: OR_N_MUX
        generic map (N => 2)
        port map (x_in => l3_terms, q_out => out_value(3));
    
    -- L2 = G3 + G2·Ḡ1
    l2_term1 <= in_value(3);
    L2_TERM2_AND: AND_N_MUX
        generic map (N => 2)
        port map (x_in(1) => in_value(2), x_in(0) => not_g1, q_out => l2_term2);
    l2_terms <= (1 => l2_term1, 0 => l2_term2);
    L2_OR: OR_N_MUX
        generic map (N => 2)
        port map (x_in => l2_terms, q_out => out_value(2));
    
    -- L1 = Ḡ3·Ḡ2·G1 + Ḡ3·G2·Ḡ1 + G3
    L1_TERM1_AND: AND_N_MUX
        generic map (N => 3)
        port map (x_in(2) => not_g3, x_in(1) => not_g2, x_in(0) => in_value(1), q_out => l1_term1);
    L1_TERM2_AND: AND_N_MUX
        generic map (N => 3)
        port map (x_in(2) => not_g3, x_in(1) => in_value(2), x_in(0) => not_g1, q_out => l1_term2);
    l1_terms <= (2 => l1_term1, 1 => l1_term2, 0 => in_value(3));
    L1_OR: OR_N_MUX
        generic map (N => 3)
        port map (x_in => l1_terms, q_out => out_value(1));
    
    -- L0 = 1 (always set for valid inputs)
    out_value(0) <= '1';
    
    -- Output mapping
    led_out <= (N - 1 downto 4 => '0') & out_value;
    
end structural;
