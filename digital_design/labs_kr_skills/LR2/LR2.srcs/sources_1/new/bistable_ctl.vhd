library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity bistable_ctl is
    Port ( data : in  std_logic;   -- input bit
           we   : in  std_logic;   -- write enabled 
           re   : in  std_logic;   -- read enabled 
           q    : out std_logic ); -- output bit
end;

architecture Structural of bistable_ctl is
    signal q_int, nq_int, mux_out : std_logic;
    attribute keep : string;
    attribute keep of q_int : signal is "true";
    attribute keep of nq_int : signal is "true";
    attribute dont_touch : string;
    attribute dont_touch of LUT1_inv1, LUT1_inv2 : label is "true";
begin
    -- mux: if we=1, connect data, else save nq_int
    mux_out <= data when we = '1' else nq_int;

    -- two inventors based on LUT1
    LUT1_inv1: LUT1 Generic map (INIT => "01") Port map (I0 => mux_out, O => q_int);
    LUT1_inv2: LUT1 Generic map (INIT => "01") Port map (I0 => q_int, O => nq_int);

    -- output with read enabled
    q <= q_int when re = '1' else '0';
end;