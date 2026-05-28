--         	G (7421)	L (Excess-3)
--0	       0000	        0011
--1	       0001	        0100
--2	       0010	        0101
--3	       0011	        0110
--4	       0100	        0111
--5	       0101	        1000
--6	       0110	        1001
--7	       1000	        1010
--8	       1001	        1011
--9	       1010	        1100

--  L3 = G3 + G2·G1 + G2·G0

--  L2 = G3·G1 + ¬G2·G1 + ¬G2·G0 + G2·¬G1·¬G0

--  L1 = G3·¬G1 + ¬G1·¬G0 + ¬G3·G1·G0

--  L0 = ¬G3·¬G0 + G3·G0


library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity translator_structural is
    Port ( sw_i : in  std_logic_vector (3 downto 0);
           led_o : out std_logic_vector (3 downto 0) );
end;

architecture Structural of translator_structural is
    component inv is Port (a : in std_logic; y : out std_logic); end component;
    component and2 is Port (a,b : in std_logic; y : out std_logic); end component;
    component or2  is Port (a,b : in std_logic; y : out std_logic); end component;

    signal not_sw_i : std_logic_vector(3 downto 0); 
    signal l3_and1, l3_and2, l3_or1 : std_logic;
    signal l2_and1, l2_and2, l2_and3, l2_and4a, l2_and4, l2_or1, l2_or2 : std_logic;
    signal l1_and1, l1_and2, l1_and3a, l1_and3b, l1_or1 : std_logic;
    signal l0_and1, l0_and2 : std_logic;
begin
  
    inv3: inv Port map (sw_i(3), not_sw_i(3));
    inv2: inv Port map (sw_i(2), not_sw_i(2));
    inv1: inv Port map (sw_i(1), not_sw_i(1));
    inv0: inv Port map (sw_i(0), not_sw_i(0));

    -- L3 = g3 + (g2·g1) + (g2·g0)
    and_l3_1: and2 Port map (sw_i(2), sw_i(1), l3_and1);
    and_l3_2: and2 Port map (sw_i(2), sw_i(0), l3_and2);
    or_l3_1:  or2  Port map (sw_i(3), l3_and1, l3_or1);
    or_l3_2:  or2  Port map (l3_or1, l3_and2, led_o(3));

    -- L2 = (g3·g1) + (¬g2·g1) + (¬g2·g0) + (g2·¬g1·¬g0)
    and_l2_1: and2 Port map (sw_i(3), sw_i(1), l2_and1);
    and_l2_2: and2 Port map (not_sw_i(2), sw_i(1), l2_and2);
    and_l2_3: and2 Port map (not_sw_i(2), sw_i(0), l2_and3);
    and_l2_4a: and2 Port map (not_sw_i(1), not_sw_i(0), l2_and4a);   -- ¬g1·¬g0
    and_l2_4b: and2 Port map (sw_i(2), l2_and4a, l2_and4); -- g2·(¬g1·¬g0)
    or_l2_1:  or2 Port map (l2_and1, l2_and2, l2_or1);
    or_l2_2:  or2 Port map (l2_or1, l2_and3, l2_or2);
    or_l2_3:  or2 Port map (l2_or2, l2_and4, led_o(2));

    -- L1 = (g3·¬g1) + (¬g1·¬g0) + (¬g3·g1·g0)
    and_l1_1: and2 Port map (sw_i(3), not_sw_i(1), l1_and1);
    and_l1_2: and2 Port map (not_sw_i(1), not_sw_i(0), l1_and2);
    and_l1_3a: and2 Port map (sw_i(1), sw_i(0), l1_and3a);    -- g1·g0
    and_l1_3b: and2 Port map (not_sw_i(3), l1_and3a, l1_and3b); -- ¬g3·(g1·g0)
    or_l1_1:  or2 Port map (l1_and1, l1_and2, l1_or1);
    or_l1_2:  or2 Port map (l1_or1, l1_and3b, led_o(1));

    -- L0 = (¬g3·¬g0) + (g3·g0)
    and_l0_1: and2 Port map (not_sw_i(3), not_sw_i(0), l0_and1);
    and_l0_2: and2 Port map (sw_i(3), sw_i(0), l0_and2);
    or_l0:    or2 Port map (l0_and1, l0_and2, led_o(0));
end;