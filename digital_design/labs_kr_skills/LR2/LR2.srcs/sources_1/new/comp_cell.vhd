library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_cell is
    Generic ( tpd_and : time := 2 ns; tpd_or : time := 2 ns; tpd_inv : time := 1 ns );
    Port ( a, b : in std_logic;
           gt_in, lt_in, eq_in : in std_logic;
           gt_out, lt_out, eq_out : out std_logic );
end comp_cell;

architecture Structural of comp_cell is

    signal not_a, not_b : std_logic;
    signal gt_bit, lt_bit, eq_bit : std_logic;
    signal a_and_b, not_a_and_not_b : std_logic;
    signal gt_tmp, lt_tmp : std_logic;
begin
    inv_a: entity work.inv_d Generic map (tpd_inv) Port map (a, not_a);
    inv_b: entity work.inv_d Generic map (tpd_inv) Port map (b, not_b);
    
    -- a > b
    and_gt: entity work.and2_d Generic map (tpd_and) Port map (a, not_b, gt_bit); -- GT_BIT
    
    -- a < b
    and_lt: entity work.and2_d Generic map (tpd_and) Port map (not_a, b, lt_bit); -- LT_BIT
    
    -- a == b (~XNOR) 1 =1, 0 = 0
    and_eq1: entity work.and2_d Generic map (tpd_and) Port map (a, b, a_and_b);
    and_eq2: entity work.and2_d Generic map (tpd_and) Port map (not_a, not_b, not_a_and_not_b);
    or_eq:   entity work.or2_d  Generic map (tpd_or)  Port map (a_and_b, not_a_and_not_b, eq_bit);  -- EQ_BIT


    -- gt_tmp = eq_in AND gt_bit
    -- highest are equal (eq_in = 1) => gt_tmp = gt_bit (a, b compare result)
    -- highest are not equal (eq_in = 0) => gt_tmp = 0
    and_gt2: entity work.and2_d Generic map (tpd_and) Port map (eq_in, gt_bit, gt_tmp);
    
    -- gt_out = gt_in OR gt_tmp
    -- if highest are already give gt_in = 1 => output 1
    -- if gt_in = 0 => output gt_tmp
    or_gt:   entity work.or2_d  Generic map (tpd_or)  Port map (gt_in, gt_tmp, gt_out); -- !!!!! GT_OUT --> output
    -- if highest decided A > B (gt_in = 1) => gt_out = 1 (ignore current a, b).
    -- if highest are eqaul (eq_in = 1) => gt_out = gt_bit (a,b compare result).
    -- if highest decided A < B (lt_in = 1, gt_in = 0) => gt_out = 0 (because gt_tmp = 0).
    
    
    -- lt_tmp = eq_in AND lt_bit
    -- highest are equal (eq_in = 1) => lt_tmp = lt_bit (a, b compare result)
    -- highest are not equal (eq_in = 0) => lt_tmp = 0
    and_lt2: entity work.and2_d Generic map (tpd_and) Port map (eq_in, lt_bit, lt_tmp);
    
    -- lt_out = lt_in OR lt_temp
    -- if highest are already give lt_in = 1 => output 1
    -- if lt_in = 0 => output lt_tmp
    or_lt:   entity work.or2_d  Generic map (tpd_or)  Port map (lt_in, lt_tmp, lt_out); -- !!!!! LT_OUT --> output
    -- if highest decided A < B (lt_in = 1) => lt_out = 1 (ignore current a, b).
    -- if highest are eqaul (eq_in = 1) => lt_out = lt_bit (a,b compare result).
    -- if highest decided A > B (lt_in = 0, gt_in = 1) => lt_out = 0 (because lt_tmp = 0).



    -- eq_out = eq_in AND eq_bit
    -- highest are equal (eq_in = 1) and current a, b are equal (eq_bit = 1) => equal (eq_out = 1).
    -- other cases: are not equal yet
    and_eq_out: entity work.and2_d Generic map (tpd_and) Port map (eq_in, eq_bit, eq_out); -- !!!!! EQ_OUT --> output
    
end Structural;