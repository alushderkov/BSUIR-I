library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity reg_file_2r1w is
    generic (
        ADDR_WIDTH : natural := 5;
        DATA_WIDTH : natural := 16
    );
    port (
        clk         : in  std_logic;
        rst_n       : in  std_logic;

        w_en        : in  std_logic;
        w_addr      : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        w_data      : in  std_logic_vector(DATA_WIDTH-1 downto 0);

        r_en_1      : in  std_logic;
        r_addr_1    : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        r_data_1    : out std_logic_vector(DATA_WIDTH-1 downto 0);

        r_en_2      : in  std_logic;
        r_addr_2    : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        r_data_2    : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end;

architecture Behavioral of reg_file_2r1w is

    type reg_array is array (0 to 2**ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal registers : reg_array;


    signal write_addr_int : integer range 0 to 2**ADDR_WIDTH-1;
    signal write_en_int   : std_logic;
begin
    write_addr_int <= to_integer(unsigned(w_addr));
    write_en_int   <= w_en;

    
    write_process: process (clk, rst_n)
    begin
        if rst_n = '0' then
            
            for i in registers'range loop
                registers(i) <= (others => '0');
            end loop;
        elsif rising_edge(clk) then
            if write_en_int = '1' then
                registers(write_addr_int) <= w_data;
            end if;
        end if;
    end process;

    
    read_port_1: process (r_en_1, r_addr_1, write_en_int, write_addr_int, w_data, registers)
        variable addr_int : integer;
    begin
        addr_int := to_integer(unsigned(r_addr_1));
        if r_en_1 = '1' then
           
            if (write_en_int = '1') and (addr_int = write_addr_int) then
                r_data_1 <= w_data;
            else
                r_data_1 <= registers(addr_int);
            end if;
        else
            r_data_1 <= (others => '0');  
        end if;
    end process;

    read_port_2: process (r_en_2, r_addr_2, write_en_int, write_addr_int, w_data, registers)
        variable addr_int : integer;
    begin
        addr_int := to_integer(unsigned(r_addr_2));
        if r_en_2 = '1' then
            if (write_en_int = '1') and (addr_int = write_addr_int) then
                r_data_2 <= w_data;
            else
                r_data_2 <= registers(addr_int);
            end if;
        else
            r_data_2 <= (others => '0');
        end if;
    end process;

end;