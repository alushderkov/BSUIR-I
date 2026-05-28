Library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

entity decoder_3x8_beh_v2 is 
    Port (
        EN : in std_logic;
        A : in std_logic_vector (2 downto 0);
        D : out std_logic_vector (7 downto 0)
    );
end;

Architecture Beh of decoder_3x8_beh_v2 is
begin
    P0 : process (A,EN)
    variable dout : std_logic_vector (7 downto 0);
    variable code : integer range 0 to 7;
    begin
        code := conv_integer(A);
        dout := (others => '0');
        dout(code) := EN;
        D <= dout;
    end process P0;
end;