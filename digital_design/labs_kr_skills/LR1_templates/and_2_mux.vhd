----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2026 05:37:36
-- Design Name: 
-- Module Name: and_2_mux - Behavioral
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

entity AND_2_MUX is
    port (
        a : in std_logic;
        b : in std_logic;
        q : out std_logic
    );
end AND_2_MUX;

architecture structural of and_2_mux is
    component MUX_2 is
        port ( 
            a : in std_logic;
            b : in std_logic;
            s : in std_logic;
            q : out std_logic
        );
    end component;

begin
    MUX_2_N1: MUX_2
        port map (
            a => '0',
            b => b,
            s => a,
            q => q    
        );
        
end structural;
