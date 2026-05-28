Library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

entity decoder_N is 
    generic ( N : integer := 2);
    Port (
        EN : in std_logic;
        A : in std_logic_vector (N-1 downto 0);
        D : out std_logic_vector (2**N-1 downto 0)
    );
end;

Architecture Beh of decoder_N is
begin
    P0 : process (A,EN)
    variable dout : std_logic_vector (2**N-1 downto 0);
    variable code : integer range 0 to 2**N-1;
    begin
        code := conv_integer(A);
        dout := (others => '0');
        dout(code) := EN;
        D <= dout;
    end process P0;
end;