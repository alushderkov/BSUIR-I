library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity bistable is
    Port ( q : out std_logic );
end;

architecture Structural of bistable is
    signal q_int, nq_int : std_logic;
    attribute keep : string;
    attribute keep of q_int : signal is "true";
    attribute keep of nq_int : signal is "true";
    attribute dont_touch : string;
    attribute dont_touch of LUT1_inst0, LUT1_inst1 : label is "true";
begin
    LUT1_inst0: LUT1
        Generic map (INIT => "01")   -- inventor
        Port map (I0 => q_int, O => nq_int);
    LUT1_inst1: LUT1
        Generic map (INIT => "01")
        Port map (I0 => nq_int, O => q_int);
    q <= q_int;
end;