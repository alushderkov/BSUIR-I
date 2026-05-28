library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity pwm_controller is
    generic (
        COUNTER_WIDTH : natural := 8   
    );
    port (
        clk         : in  std_logic;
        rst_n       : in  std_logic;                     
        en          : in  std_logic;                     
        duty_cycle  : in  std_logic_vector(COUNTER_WIDTH-1 downto 0); 
        pwm_out     : out std_logic                      
    );
end;

architecture Behavioral of pwm_controller is
    signal counter : unsigned(COUNTER_WIDTH-1 downto 0);
    signal max_val : unsigned(COUNTER_WIDTH-1 downto 0);
begin
    max_val <= (others => '1');

    process (clk, rst_n)
    begin
        if rst_n = '0' then
            counter <= (others => '0');
        elsif rising_edge(clk) then
            if en = '1' then
                if counter = max_val then
                    counter <= (others => '0');
                else
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;

    pwm_out <= '1' when (counter < unsigned(duty_cycle)) else '0';
end;