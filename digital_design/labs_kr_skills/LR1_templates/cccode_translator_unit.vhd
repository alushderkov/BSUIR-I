----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2026 03:42:28
-- Design Name: 
-- Module Name: ccode_translator_unit - Behavioral
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


library IEEE;----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2026 02:34:04
-- Design Name: 
-- Module Name: code_translator_unit - Behavioral
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

entity CCCODE_TRANSLATOR_UNIT is
    generic (
        N : integer := 16
    );
    port (
        sw_in   : in std_logic_vector(N - 1 downto 0);
        led_out : out std_logic_vector(N - 1 downto 0)
    );
end CCCODE_TRANSLATOR_UNIT;

architecture structural of CCCODE_TRANSLATOR_UNIT is
    component NOT_1 is
        port ( 
            a : in std_logic;
            q : out std_logic
        );
    end component;

    component OR_N_MUX is
        generic (
            N : integer := 4
        );
        port ( 
            x_in  : in std_logic_vector (N - 1 downto 0);   
            q_out : out std_logic
        );
    end component;

    component AND_N_MUX is
        generic (
            N : integer := 4
        );
        port ( 
            x_in  : in std_logic_vector (N - 1 downto 0);   
            q_out : out std_logic
        );
    end component;  

    signal in_value     : std_logic_vector(8 downto 0);
    signal out_value    : std_logic_vector(3 downto 0);
    signal inv_in_value : std_logic_vector(8 downto 0);
    signal minterms     : std_logic_vector(8 downto 0); 
    
    signal out_bit_3_minterms : std_logic_vector(4 downto 0);  
    signal out_bit_2_minterms : std_logic_vector(4 downto 0); 
    signal out_bit_1_minterms : std_logic_vector(4 downto 0); 
    signal out_bit_0_minterms : std_logic_vector(4 downto 0); 
    
begin  
    in_value <= sw_in(8 downto 0);
    
    NOT_N: for i in 8 downto 0 generate
        NOT_1_Ni: NOT_1
            port map (
                a => in_value(i),
                q => inv_in_value(i)
            );   
    end generate;
    
    AND_N_ARRAY: for i in 8 downto 0 generate 
        signal temp : std_logic_vector(8 downto 0);
    begin
         temp <= inv_in_value(8 downto i+1) & in_value(i) & inv_in_value(i-1 downto 0);
        ARN_N_Ni: AND_N_MUX
            generic map (
                N => 9
            )
            port map (
                x_in  => temp,
                q_out => minterms(i)
            );   
    end generate;
    
    out_bit_3_minterms <= (
        4 => minterms(8), 3 => minterms(7), 
        2 => minterms(6), 1 => minterms(5), 
        0 => minterms(4)
    );
    
    out_bit_2_minterms <= (
        4 => minterms(8), 3 => minterms(7), 
        2 => minterms(6), 1 => minterms(5), 
        0 => minterms(3)
    );
    
    out_bit_1_minterms <= (
        4 => minterms(8), 3 => minterms(7), 
        2 => minterms(2), 1 => minterms(1), 
        0 => minterms(4)
    );
    out_bit_0_minterms <= (
        4 => minterms(8), 3 => minterms(6), 
        2 => minterms(4), 1 => minterms(2), 
        0 => minterms(0)
    );  
    
    OR_N_N3: OR_N_MUX
        generic map (
            N => 5
        )
        port map (
            x_in  => out_bit_3_minterms,
            q_out => out_value(3)
        );
        
    OR_N_N2: OR_N_MUX
        generic map (
            N => 5
        )
        port map (
            x_in  => out_bit_2_minterms,
            q_out => out_value(2)
        );
            
    OR_N_N1: OR_N_MUX
        generic map (
            N => 5
        )
        port map (
            x_in  => out_bit_1_minterms,
            q_out => out_value(1)
        );
                
    OR_N_N0: OR_N_MUX
        generic map (
            N => 5
        )
        port map (
            x_in  => out_bit_0_minterms,
            q_out => out_value(0)
        );                                    
        
    led_out <= (N - 1 downto 4 => '0') & out_value;   
  
end structural;
