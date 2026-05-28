----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2026 03:14:40
-- Design Name: 
-- Module Name: lut_n - Behavioral
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

entity LUT_N is
    generic (
        N          : integer := 1;
        INITVECTOR : std_logic_vector := "00"
    );
    port (
        x_in  : in std_logic_vector(N - 1 downto 0);
        y_out : out std_logic
    ); 
    
end LUT_N;

architecture structural of LUT_N is
   component LUT_N is
      generic (
          N          : integer := 1;
          INITVECTOR : std_logic_vector := "00"
      );
      port (
          x_in  : in std_logic_vector(N - 1 downto 0);
          y_out : out std_logic
      ); 
   end component;
    
    component MUX_2 is
        port ( 
            a : in std_logic;
            b : in std_logic;
            s : in std_logic;
            q : out std_logic
        );
    end component;
   
    constant INITVECTOR_NORM : std_logic_vector(2**N - 1 downto 0) := INITVECTOR;
   
    signal a_value   : std_logic;
    signal b_value   : std_logic;
    signal out_value : std_logic;

begin
    GEN_LUT_N: if N > 1 generate 
        LUT_N_REC1: LUT_N
            generic map (
                N          => N - 1,
                INITVECTOR => INITVECTOR_NORM(2**N - 1 downto 2**(N - 1))
            )
            port map (
                x_in  => x_in(N - 2 downto 0),
                y_out => b_value   
            );
        
        LUT_N_REC2: LUT_N
            generic map (
                N          => N - 1,
                INITVECTOR => INITVECTOR_NORM(2**(N - 1) - 1 downto 0)
            )
            port map (
                x_in  => x_in(N - 2 downto 0),
                y_out => a_value   
            );
        
        MUX2: MUX_2 
            port map (
                a  => a_value,
                b  => b_value,
                s  => x_in(N - 1),
                q => out_value
            );
        
    end generate;   
    
    GEN_LUT_1: if N = 1 generate 
        MUX2: MUX_2 
            port map (
                a  => INITVECTOR_NORM(0),
                b  => INITVECTOR_NORM(1),
                s  => x_in(0),
                q => out_value
            );
            
    end generate;   

    y_out <= out_value;
end structural;
