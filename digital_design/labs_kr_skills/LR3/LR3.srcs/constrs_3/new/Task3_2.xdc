# ========================================================
# Constraints for reg_file (8×8) on Nexys 4
# ========================================================

# --- Clock signal (100 MHz) ---
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.0 -name sys_clk [get_ports clk]

# --- Asynchronous reset (active low) ---
set_property PACKAGE_PIN C12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# --- Write enable: SW0 ---
set_property PACKAGE_PIN U9 [get_ports wr_en]
set_property IOSTANDARD LVCMOS33 [get_ports wr_en]

# --- Write address wr_addr[2:0] (3 bits) ---
# wr_addr[0] - SW1
set_property PACKAGE_PIN U8 [get_ports {wr_addr[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {wr_addr[0]}]
# wr_addr[1] - SW2
set_property PACKAGE_PIN R7 [get_ports {wr_addr[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {wr_addr[1]}]
# wr_addr[2] - SW3
set_property PACKAGE_PIN R6 [get_ports {wr_addr[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {wr_addr[2]}]

# --- Write data wr_data[7:0] (8 bits) ---
# wr_data[0] - SW4
set_property PACKAGE_PIN R5 [get_ports {wr_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {wr_data[0]}]
# wr_data[1] - SW5
set_property PACKAGE_PIN V7 [get_ports {wr_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {wr_data[1]}]
# wr_data[2] - SW6
set_property PACKAGE_PIN V6 [get_ports {wr_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {wr_data[2]}]
# wr_data[3] - SW7
set_property PACKAGE_PIN V5 [get_ports {wr_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {wr_data[3]}]
# wr_data[4] - SW8 (pin U4, commented in the board file but exists)
set_property PACKAGE_PIN U4 [get_ports {wr_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {wr_data[4]}]
# wr_data[5] - SW9 (pin V2)
set_property PACKAGE_PIN V2 [get_ports {wr_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {wr_data[5]}]
# wr_data[6] - SW10 (pin U2)
set_property PACKAGE_PIN U2 [get_ports {wr_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {wr_data[6]}]
# wr_data[7] - SW11 (pin T3)
set_property PACKAGE_PIN T3 [get_ports {wr_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {wr_data[7]}]

# --- Read address rd_addr[2:0] (3 bits) ---
# rd_addr[0] - SW12
set_property PACKAGE_PIN T1 [get_ports {rd_addr[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rd_addr[0]}]
# rd_addr[1] - SW13
set_property PACKAGE_PIN R3 [get_ports {rd_addr[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rd_addr[1]}]
# rd_addr[2] - SW14
set_property PACKAGE_PIN P3 [get_ports {rd_addr[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rd_addr[2]}]

# --- Output data rd_data[7:0] (LED0..LED7) ---
# LED0
set_property PACKAGE_PIN T8 [get_ports {rd_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rd_data[0]}]
set_property DRIVE 12 [get_ports {rd_data[0]}]
set_property SLEW SLOW [get_ports {rd_data[0]}]
# LED1
set_property PACKAGE_PIN V9 [get_ports {rd_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rd_data[1]}]
set_property DRIVE 12 [get_ports {rd_data[1]}]
set_property SLEW SLOW [get_ports {rd_data[1]}]
# LED2
set_property PACKAGE_PIN R8 [get_ports {rd_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rd_data[2]}]
set_property DRIVE 12 [get_ports {rd_data[2]}]
set_property SLEW SLOW [get_ports {rd_data[2]}]
# LED3
set_property PACKAGE_PIN T6 [get_ports {rd_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rd_data[3]}]
set_property DRIVE 12 [get_ports {rd_data[3]}]
set_property SLEW SLOW [get_ports {rd_data[3]}]
# LED4
set_property PACKAGE_PIN T5 [get_ports {rd_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rd_data[4]}]
set_property DRIVE 12 [get_ports {rd_data[4]}]
set_property SLEW SLOW [get_ports {rd_data[4]}]
# LED5
set_property PACKAGE_PIN T4 [get_ports {rd_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rd_data[5]}]
set_property DRIVE 12 [get_ports {rd_data[5]}]
set_property SLEW SLOW [get_ports {rd_data[5]}]
# LED6
set_property PACKAGE_PIN U7 [get_ports {rd_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rd_data[6]}]
set_property DRIVE 12 [get_ports {rd_data[6]}]
set_property SLEW SLOW [get_ports {rd_data[6]}]
# LED7
set_property PACKAGE_PIN U6 [get_ports {rd_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rd_data[7]}]
set_property DRIVE 12 [get_ports {rd_data[7]}]
set_property SLEW SLOW [get_ports {rd_data[7]}]

# (Optional) Unused switches and LEDs are left unconstrained