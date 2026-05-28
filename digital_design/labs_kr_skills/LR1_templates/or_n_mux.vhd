----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2026 05:37:36
-- Design Name: 
-- Module Name: or_n_mux - Behavioral
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

entity OR_N_MUX is
    generic (
        N : integer := 4
    );
    port ( 
        x_in  : in std_logic_vector (N - 1 downto 0);   
        q_out : out std_logic
    );
end OR_N_MUX;

architecture structural of OR_N_MUX is
    component AND_N_MUX is
        generic (
            N : integer := 4
        );
        port ( 
            x_in  : in std_logic_vector (N - 1 downto 0);   
            q_out : out std_logic
        );
    end component;
    
    component NOT_1 is
        port ( 
            a : in std_logic;
            q : out std_logic
        );
    end component;

signal inv_x_in  : std_logic_vector(N - 1 downto 0);
signal int_q_out : std_logic; 

begin
    NOT_N: for i in N - 1 downto 0 generate
        NOT_1_Ni: NOT_1
            port map (
                a => x_in(i),
                q => inv_x_in(i)
            );   
    end generate;
    
    AND_N: AND_N_MUX
        generic map (
            N => N
        )
        port map (
            x_in  => inv_x_in,
            q_out => int_q_out
        );
        
    NOT_1_FIN: NOT_1 
        port map (
            a => int_q_out,
            q => q_out
        );

end structural;
