library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu is
    Generic (
        SW_I_SIZE: integer := 16;
        LED_O_SIZE: integer := 6;
        SHIFT: integer := 3
    );
    Port (
        sw_i: in std_logic_vector(SW_I_SIZE - 1 downto 0);
        led_o: out std_logic_vector(LED_O_SIZE - 1 downto 0)
     );
end;

architecture Behavioral of alu is
    constant operand4: integer := SW_I_SIZE - 1;
    constant operand3: integer := SW_I_SIZE - LED_O_SIZE;
    constant operand2: integer := SW_I_SIZE - LED_O_SIZE - 1;
    constant operand1: integer := 4;
    constant operand0: integer := 3;
                
begin
    with sw_i(operand0 downto 0) select
    
        led_o <=
         
            sw_i(operand4 downto operand3) 
            nand 
            sw_i(operand2 downto operand1)
            when "0001",
             
            std_logic_vector(
                unsigned(sw_i(operand4 downto operand3)) 
                - 
                unsigned(sw_i(operand2 downto operand1))
            ) when "0010",
             
            std_logic_vector(
                shift_left(
                    unsigned(sw_i(operand4 downto operand3)), 
                    to_integer(unsigned(sw_i(operand2 downto operand1)))
                )
            ) when "0100",
             
            sw_i(operand4 downto operand3) 
            xor 
            sw_i(operand2 downto operand1) 
            when "1000",
            
        "000000" when others;                        

end;
