----------------------------------------------------------------------------------
-- Variant 24 - Task 4: Boolean Function Implementation (Structural)
-- Implements F = 2B4C using minimal gates
-- F(x3,x2,x1,x0) minimized using Karnaugh map
--
-- Karnaugh Map for F=2B4C:
--      x1x0
-- x3x2  00  01  10  11
--  00    0   0   1   1
--  01    0   0   1   1
--  11    0   1   0   1
--  10    0   1   0   0
--
-- Minimized SOP: F = x2·x1 + x3·x2·x0 + x̄3·x1·x0
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FUNCTION_UNIT is
    port (
        x_in  : in std_logic_vector(3 downto 0);
        q_out : out std_logic
    );
end FUNCTION_UNIT;

architecture Structural of FUNCTION_UNIT is
component NOT_1 is
    port ( 
        a : in std_logic;
        q : out std_logic
    );
end component;

component AND_2 is
    port ( 
        x_in  : in std_logic_vector (1 downto 0);   
        q_out : out std_logic
    );
end component;

component AND_N is
    generic (
        N : integer := 4
    );
    port ( 
        x_in  : in std_logic_vector (N - 1 downto 0);   
        q_out : out std_logic
    );
end component;

component OR_N is
    generic (
        N : integer := 4
    );
    port ( 
        x_in  : in std_logic_vector (N - 1 downto 0);   
        q_out : out std_logic
    );
end component;

signal not_x3    : std_logic;
signal term1     : std_logic; -- x2·x1
signal term2     : std_logic; -- x3·x2·x0
signal term3     : std_logic; -- x̄3·x1·x0
signal int_value : std_logic_vector(2 downto 0);

begin
    -- Inverter for x3
    NOT_X3_GEN: NOT_1 
        port map (
            a => x_in(3),
            q => not_x3
        );
    
    -- Term 1: x2·x1
    TERM1_GEN: AND_2
        port map (
            x_in(1) => x_in(2),
            x_in(0) => x_in(1),
            q_out => term1
        );
        
    -- Term 2: x3·x2·x0
    TERM2_GEN: AND_N 
        generic map (N => 3)
        port map (
            x_in(2) => x_in(3),
            x_in(1) => x_in(2),
            x_in(0) => x_in(0),
            q_out => term2
        );
        
    -- Term 3: x̄3·x1·x0
    TERM3_GEN: AND_N 
        generic map (N => 3)
        port map (
            x_in(2) => not_x3,
            x_in(1) => x_in(1),
            x_in(0) => x_in(0),
            q_out => term3
        );
    
    -- Collect terms
    int_value <= (2 => term1, 1 => term2, 0 => term3);
    
    -- Final OR
    FINALE_OR: OR_N
        generic map (N => 3)
        port map (
            x_in => int_value,
            q_out => q_out
        );
                
end Structural;
