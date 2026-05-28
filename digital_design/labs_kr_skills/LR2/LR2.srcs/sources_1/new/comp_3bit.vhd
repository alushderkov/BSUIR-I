library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_3bit is
    Port ( a, b : in std_logic_vector(2 downto 0);
           gt, lt, eq : out std_logic );
end;

architecture Structural of comp_3bit is
    signal gt2, lt2, eq2 : std_logic; -- outputs after oldest (second bit)
    signal gt1, lt1, eq1 : std_logic; -- after middle (first bit)
begin
    -- oldest (second bit) – initial conditions: eq_in=1, gt_in=lt_in=0
    cell2: entity work.comp_cell
        Generic map (tpd_and => 2 ns, tpd_or => 2 ns, tpd_inv => 1 ns)
        Port map (a(2), b(2), '0', '0', '1', gt2, lt2, eq2);

    -- middle (first bit)
    cell1: entity work.comp_cell
        Generic map (tpd_and => 2 ns, tpd_or => 2 ns, tpd_inv => 1 ns)
        Port map (a(1), b(1), gt2, lt2, eq2, gt1, lt1, eq1);

    -- smallest (zero bit) - finished output
    cell0: entity work.comp_cell
        Generic map (tpd_and => 2 ns, tpd_or => 2 ns, tpd_inv => 1 ns)
        Port map (a(0), b(0), gt1, lt1, eq1, gt, lt, eq);
end;