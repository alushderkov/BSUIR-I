-- 7421 Code (G):           Excess-3 Code (L):
-- 0: 0000                  0: 0011
-- 1: 0001                  1: 0100
-- 2: 0010                  2: 0101
-- 3: 0011                  3: 0110
-- 4: 0100                  4: 0111
-- 5: 0101                  5: 1000
-- 6: 0110                  6: 1001
-- 7: 1000                  7: 1010
-- 8: 1001                  8: 1011
-- 9: 1010                  9: 1100


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity translator7 is
    Generic(
        N: integer := 4
    );
    Port ( 
        sw_i: in std_logic_vector(N - 1 downto 0);
        led_o: out std_logic_vector(N - 1 downto 0)
    );
end;

architecture Behavioral of translator7 is

    signal not_sw_i: std_logic_vector(N - 1 downto 0);
    
        -- ??? L3
        signal l3_term_g2g1, l3_term_g2g0 : std_logic;
        signal l3_sum1 : std_logic;
    
        -- ??? L2
        signal l2_term1, l2_term2, l2_term3, l2_term4 : std_logic;
        signal l2_sum1, l2_sum2, l2_sum3 : std_logic;
    
        -- ??? L1
        signal l1_term1, l1_term2, l1_term3 : std_logic;
        signal l1_term3_part : std_logic;
        signal l1_sum1, l1_sum2 : std_logic;
    
        -- ??? L0
        signal l0_term1, l0_term2 : std_logic;
        
        -- temp
        signal l2_term4_tmp : std_logic;

begin
    
    NOT_N: for i in 3 downto 0 generate
        NOT_i: entity work.INV Port map(a => sw_i(i), n_a => not_sw_i(i));
    end generate;
    
    ------------------------------------------------------------------------
    -- L3 = G3 + (G2*G1) + (G2*G0)
    ------------------------------------------------------------------------
    
    AND_L3_1: entity work.MUX2 
              Port map (
                  a => '0', b => sw_i(1), s => sw_i(2), q => l3_term_g2g1
              );

    AND_L3_2: entity work.MUX2 
              Port map (
                a => '0', b => sw_i(0), s => sw_i(2), q => l3_term_g2g0
              );

    OR_L3_1: entity work.MUX2 
             Port map (
                a => l3_term_g2g1, b => '1', s => sw_i(3), q => l3_sum1
             );

    OR_L3_2: entity work.MUX2 
             Port map (
                a => l3_term_g2g0, b => '1', s => l3_sum1, q => led_o(3)
             );


    ------------------------------------------------------------------------
    -- L2 = (G3*G1) + (!G2*G1) + (!G2*G0) + (G2*!G1*!G0)
    ------------------------------------------------------------------------
    
    AND_L2_1: entity work.MUX2 
              Port map (
                a => '0', b => sw_i(1), s => sw_i(3), q => l2_term1
              );

    AND_L2_2: entity work.MUX2 
              Port map (
                a => '0', b => sw_i(1), s => not_sw_i(2), q => l2_term2
              );

    AND_L2_3: entity work.MUX2 
              Port map (
                a => '0', b => sw_i(0), s => not_sw_i(2), q => l2_term3
              );

    AND_L2_4a: entity work.MUX2 
               Port map (
                 a => '0', b => not_sw_i(1), s => sw_i(2), q => l2_term4_tmp
               );
               
    AND_L2_4b: entity work.MUX2 
               Port map (
                 a => '0', b => not_sw_i(0), s => l2_term4_tmp, q => l2_term4
                );

    OR_L2_1: entity work.MUX2 
             Port map (
                a => l2_term2, b => '1', s => l2_term1, q => l2_sum1
             );
             
    OR_L2_2: entity work.MUX2 
             Port map (
               a => l2_term3, b => '1', s => l2_sum1, q => l2_sum2
             );
             
    OR_L2_3: entity work.MUX2 
             Port map (
               a => l2_term4, b => '1', s => l2_sum2, q => led_o(2)
             );

    ------------------------------------------------------------------------
    -- L1 = (G3*!G1) + (!G1*!G0) + (!G3*G1*G0)
    ------------------------------------------------------------------------
    
    AND_L1_1: entity work.MUX2 
              Port map (
                a => '0', b => not_sw_i(1), s => sw_i(3), q => l1_term1
              );

    AND_L1_2: entity work.MUX2 
              Port map (
                a => '0', b => not_sw_i(0), s => not_sw_i(1), q => l1_term2
              );

    AND_L1_3a: entity work.MUX2 
               Port map (
                 a => '0', b => sw_i(1), s => not_sw_i(3), q => l1_term3_part
               );
               
    AND_L1_3b: entity work.MUX2 
               Port map (
                 a => '0', b => sw_i(0), s => l1_term3_part, q => l1_term3
               );

    OR_L1_1: entity work.MUX2 
             Port map (
               a => l1_term2, b => '1', s => l1_term1, q => l1_sum1
             );
             
    OR_L1_2: entity work.MUX2 
             Port map (
               a => l1_term3, b => '1', s => l1_sum1, q => led_o(1)
             );

    ------------------------------------------------------------------------
    -- L0 = (!G3*!G0) + (G3*G0)
    ------------------------------------------------------------------------
    
    AND_L0_1: entity work.MUX2 
              Port map (
                a => '0', b => not_sw_i(0), s => not_sw_i(3), q => l0_term1
              );

    AND_L0_2: entity work.MUX2 
              Port map (
                a => '0', b => sw_i(0), s => sw_i(0), q => l0_term2
              );

    OR_L0_Final: entity work.MUX2 
                 Port map (
                   a => l0_term2, b => '1', s => l0_term1, q => led_o(0)
                 );

end;
