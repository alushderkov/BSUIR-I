library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity top6 is
    port (
        sys_clk  : in  std_logic; 
        rst_n    : in  std_logic;
        en_sw    : in  std_logic;
        duty_sw  : in  std_logic_vector(7 downto 0);
        led      : out std_logic
    );
end;

architecture Structural of top6 is
    component pwm_controller is
        generic ( COUNTER_WIDTH : natural );
        port (
            clk         : in  std_logic;
            rst_n       : in  std_logic;
            en          : in  std_logic;
            duty_cycle  : in  std_logic_vector(COUNTER_WIDTH-1 downto 0);
            pwm_out     : out std_logic
        );
    end component;
begin
    pwm: pwm_controller
        generic map ( COUNTER_WIDTH => 8 )
        port map (
            clk         => sys_clk,
            rst_n       => rst_n,
            en          => en_sw,
            duty_cycle  => duty_sw,
            pwm_out     => led
        );
end;