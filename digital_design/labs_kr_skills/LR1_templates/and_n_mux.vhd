----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2026 05:37:36
-- Design Name: 
-- Module Name: and_n_mux - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AND_N_MUX is
    generic (
        N : integer := 4
    );
    port ( 
        x_in  : in std_logic_vector (N - 1 downto 0);   
        q_out : out std_logic
    );
end AND_N_MUX;

architecture structural of AND_N_MUX is
    component AND_2_MUX is
        port (
            a : in std_logic;
            b : in std_logic;
            q : out std_logic
        );
    end component;
    
signal int_value : std_logic_vector(N - 1 downto 0);

begin
    AND_START: AND_2_MUX
        port map (
            a => x_in(N - 1),
            b => x_in(N - 2),
            q => int_value(N - 1)
        );

    AND_N: for i in N - 1 downto 2 generate
        AND_2_Ni: AND_2_MUX
            port map (
                a => int_value(i),
                b => x_in(i - 2),
                q => int_value(i - 1)
            );    
    end generate;

    q_out <= int_value(1);

end structural;
