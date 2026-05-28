# ========================================================
# Constraints for reg_unit (N=8) on Nexys 4
# ========================================================

# --- Clock signal (100 MHz) ---
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.0 -name sys_clk [get_ports clk]

# --- Asynchronous reset (active low) ---
set_property PACKAGE_PIN C12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# --- Enable en: switch SW0 ---
set_property PACKAGE_PIN U9 [get_ports en]
set_property IOSTANDARD LVCMOS33 [get_ports en]

# --- Input data d_i (8 bits): SW1-SW8 ---
# SW1
set_property PACKAGE_PIN U8 [get_ports {d_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[0]}]
# SW2
set_property PACKAGE_PIN R7 [get_ports {d_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[1]}]
# SW3
set_property PACKAGE_PIN R6 [get_ports {d_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[2]}]
# SW4
set_property PACKAGE_PIN R5 [get_ports {d_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[3]}]
# SW5
set_property PACKAGE_PIN V7 [get_ports {d_i[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[4]}]
# SW6
set_property PACKAGE_PIN V6 [get_ports {d_i[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[5]}]
# SW7
set_property PACKAGE_PIN V5 [get_ports {d_i[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[6]}]
# SW8 (this pin is commented in the board file, but exists)
set_property PACKAGE_PIN U4 [get_ports {d_i[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[7]}]

# --- Output data d_o (8 bits): LED0-LED7 ---
# LED0
set_property PACKAGE_PIN T8 [get_ports {d_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_o[0]}]
set_property DRIVE 12 [get_ports {d_o[0]}]
set_property SLEW SLOW [get_ports {d_o[0]}]
# LED1
set_property PACKAGE_PIN V9 [get_ports {d_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_o[1]}]
set_property DRIVE 12 [get_ports {d_o[1]}]
set_property SLEW SLOW [get_ports {d_o[1]}]
# LED2
set_property PACKAGE_PIN R8 [get_ports {d_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_o[2]}]
set_property DRIVE 12 [get_ports {d_o[2]}]
set_property SLEW SLOW [get_ports {d_o[2]}]
# LED3
set_property PACKAGE_PIN T6 [get_ports {d_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_o[3]}]
set_property DRIVE 12 [get_ports {d_o[3]}]
set_property SLEW SLOW [get_ports {d_o[3]}]
# LED4
set_property PACKAGE_PIN T5 [get_ports {d_o[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_o[4]}]
set_property DRIVE 12 [get_ports {d_o[4]}]
set_property SLEW SLOW [get_ports {d_o[4]}]
# LED5
set_property PACKAGE_PIN T4 [get_ports {d_o[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_o[5]}]
set_property DRIVE 12 [get_ports {d_o[5]}]
set_property SLEW SLOW [get_ports {d_o[5]}]
# LED6
set_property PACKAGE_PIN U7 [get_ports {d_o[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_o[6]}]
set_property DRIVE 12 [get_ports {d_o[6]}]
set_property SLEW SLOW [get_ports {d_o[6]}]
# LED7
set_property PACKAGE_PIN U6 [get_ports {d_o[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_o[7]}]
set_property DRIVE 12 [get_ports {d_o[7]}]
set_property SLEW SLOW [get_ports {d_o[7]}]

# --- Additional output q: LED8 (pin V4) ---
set_property PACKAGE_PIN V4 [get_ports q]
set_property IOSTANDARD LVCMOS33 [get_ports q]
set_property DRIVE 12 [get_ports q]
set_property SLEW SLOW [get_ports q]

# (Optional) Disable automatic routing for unused switches
# This is not required, but may help avoid warnings.
# set_property BITSTREAM.GENERAL.UNUSEDPIN PULLDOWN [current_design]