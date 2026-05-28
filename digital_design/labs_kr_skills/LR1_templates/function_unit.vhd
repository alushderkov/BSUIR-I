----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.02.2026 03:24:19
-- Design Name: 
-- Module Name: function_unit - Behavioral
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

entity FUNCTION_UNIT is
    port (
        x_in  : in std_logic_vector(3 downto 0);
        q_out : out std_logic
    );
end FUNCTION_UNIT;

architecture Structural of FUNCTION_UNIT is
component NOT_1 is
    port ( 
        a : in std_logic;
        q : out std_logic
    );
end component;

component AND_N is
    generic (
        N : integer := 4
    );
    port ( 
        x_in  : in std_logic_vector (N - 1 downto 0);   
        q_out : out std_logic
    );
end component;

component OR_N is
    generic (
        N : integer := 4
    );
    port ( 
        x_in  : in std_logic_vector (N - 1 downto 0);   
        q_out : out std_logic
    );
end component;

signal not_values : std_logic_vector(3 downto 0);
signal int_value  : std_logic_vector(3 downto 0);

begin
    NOT_N: for i in 3 downto 0 generate
        NOT_1_i: NOT_1 
            port map (
                a => x_in(i),
                q => not_values(i)
            );
    end generate;
    
    TERM1: AND_N 
        generic map (
            N => 3
        )
        port map (
            x_in(2) => not_values(3),
            x_in(1) => x_in(1),
            x_in(0) => x_in(0),
            q_out => int_value(3)
        );
        
    TERM2: AND_N 
        generic map (
            N => 3
        )
        port map (
            x_in(2) => not_values(3),
            x_in(1) => not_values(1),
            x_in(0) => not_values(0),
            q_out => int_value(2)
        );
        
    TERM3: AND_N 
        generic map (
            N => 2
        )
        port map (
            x_in(1) => not_values(3),
            x_in(0) => x_in(2),
            q_out => int_value(1)
        );  
        
    TERM4: AND_N 
        generic map (
            N => 2
        )
        port map (
            x_in(1) => x_in(2),
            x_in(0) => x_in(1),
            q_out => int_value(0)
        );
        
    FINALE_OR: OR_N
        port map (
            x_in(3) => int_value(3),   
            x_in(2) => int_value(2), 
            x_in(1) => int_value(1), 
            x_in(0) => int_value(0), 
            q_out => q_out
        );
                
end Structural;
