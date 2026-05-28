-- | `x[3:0]` (decimal) | `x[3] x[2] x[1] x[0]` | F (binary, from 2B4C) |
-- | :-------------------- | :-------------------------------- | :-------------------- |
-- | 0                     | 0000                              | 0                     |
-- | 1                     | 0001                              | 0                     |
-- | 2                     | 0010                              | 1                     | !!!
-- | 3                     | 0011                              | 0_                    |
-- | 4                     | 0100                              | 1                     | !!!
-- | 5                     | 0101                              | 0                     |
-- | 6                     | 0110                              | 1                     | !!!
-- | 7                     | 0111                              | 1_                    | !!!
-- | 8                     | 1000                              | 0                     |
-- | 9                     | 1001                              | 1                     | !!!
-- | 10                    | 1010                              | 0                     |
-- | 11                    | 1011                              | 0_                    |
-- | 12                    | 1100                              | 1                     | !!!
-- | 13                    | 1101                              | 1                     | !!!
-- | 14                    | 1110                              | 0                     |
-- | 15                    | 1111                              | 0                     |

-- 2B4C = 0010_1011_0100_1100

-- F(x3,x2,x1,x0) = !x3!x2x1!x0 + !x3x2!x1!x0 + !x3x2x1!x0 + !x3x2x1x0 + x3!x2!x1x0 + x3x2!x1!x0 + x3x2!x1x0 =
-- = !(!x3!x2)!x1!x0 + x3x2!x1 + !x3!x0!(!x2!x1) + !x3x2x1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity F is
    Generic (
        N: integer := 4
    );
    Port (
        x: in std_logic_vector(N - 1 downto 0);
        F: out std_logic    
    );
end;

architecture Structural of F is
    signal x_not3: std_logic := not x(3);
    signal x_not2: std_logic := not x(2);
    signal x_not1: std_logic := not x(1);
    signal x_not0: std_logic := not x(0);
    signal x23_not23: std_logic := not (x_not3 and x_not2);
    signal x21_not21: std_logic := not (x_not2 and x_not1);
    
    signal and1, and2, and3, and4: std_logic;

begin
    
    term1: entity work.AND_N port map (
        inputs(0) => x23_not23,
        inputs(1) => x_not2,
        inputs(2) => x_not1,
        output => and1
    );
    
    term2: entity work.AND_N port map (
        inputs(0) => x(3),
        inputs(1) => x(2),
        inputs(2) => x_not1,
        output => and2
    );
    
    term3: entity work.AND_N port map (
        inputs(0) => x_not3,
        inputs(1) => x_not0,
        inputs(2) => x21_not21,
        output => and3
    );
    
    term4: entity work.AND_N port map (
        inputs(0) => x_not3,
        inputs(1) => x(2),
        inputs(2) => x(1),
        output => and4
    );
    
    mdnf: entity work.OR_N port map (
        inputs(0) => and1,
        inputs(1) => and2,
        inputs(2) => and2,
        inputs(3) => and4,
        output => F
    );

end;