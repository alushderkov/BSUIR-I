library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RS_LATCH_NAND is
    port (
        S : in  std_logic;  
        R : in  std_logic;  
        Q : out std_logic;  
        nQ : out std_logic 
    );
end;

architecture structural of RS_LATCH_NAND is
attribute dont_touch : string;
attribute dont_touch of structural : architecture is "true";

    component LUT2 is
        generic ( INIT : std_logic_vector(3 downto 0) );
        port (
            I0 : in  std_logic;
            I1 : in  std_logic;
            O  : out std_logic
        );
    end component;

    signal q_int, nq_int : std_logic;

begin

    G1: LUT2
        generic map ( INIT => "0111" )
        port map (
            I0 => S,
            I1 => nq_int,
            O  => q_int
        );

    G2: LUT2
        generic map ( INIT => "0111" )
        port map (
            I0 => R,
            I1 => q_int,
            O  => nq_int
        );

    Q  <= q_int;
    nQ <= nq_int;

end;