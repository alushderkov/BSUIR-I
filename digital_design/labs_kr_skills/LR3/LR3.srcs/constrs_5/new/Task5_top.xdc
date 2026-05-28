# ========================================================
# Constraints for top5 (assignment 5) on Nexys 4
# ========================================================

# --- Clock signal (100 MHz) ---
set_property PACKAGE_PIN E3 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
create_clock -period 10.0 -name sys_clk [get_ports sys_clk]

# --- Asynchronous reset (active low) ---
set_property PACKAGE_PIN C12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# --- Enable en_sw: SW0 ---
set_property PACKAGE_PIN U9 [get_ports en_sw]
set_property IOSTANDARD LVCMOS33 [get_ports en_sw]

# --- Mode mode_sw[1:0] ---
# mode_sw[1] - SW1
set_property PACKAGE_PIN U8 [get_ports {mode_sw[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mode_sw[1]}]
# mode_sw[0] - SW2
set_property PACKAGE_PIN R7 [get_ports {mode_sw[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mode_sw[0]}]

# --- Input data d_i_sw[7:0] (8 bits) ---
# d_i_sw[7] - SW3
set_property PACKAGE_PIN R6 [get_ports {d_i_sw[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i_sw[7]}]
# d_i_sw[6] - SW4
set_property PACKAGE_PIN R5 [get_ports {d_i_sw[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i_sw[6]}]
# d_i_sw[5] - SW5
set_property PACKAGE_PIN V7 [get_ports {d_i_sw[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i_sw[5]}]
# d_i_sw[4] - SW6
set_property PACKAGE_PIN V6 [get_ports {d_i_sw[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i_sw[4]}]
# d_i_sw[3] - SW7
set_property PACKAGE_PIN V5 [get_ports {d_i_sw[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i_sw[3]}]
# d_i_sw[2] - SW8
set_property PACKAGE_PIN U4 [get_ports {d_i_sw[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i_sw[2]}]
# d_i_sw[1] - SW9
set_property PACKAGE_PIN V2 [get_ports {d_i_sw[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i_sw[1]}]
# d_i_sw[0] - SW10
set_property PACKAGE_PIN U2 [get_ports {d_i_sw[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i_sw[0]}]

# --- Output LEDs led[7:0] (LED0..LED7) ---
# led[7] - LED0
set_property PACKAGE_PIN T8 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property DRIVE 12 [get_ports {led[7]}]
set_property SLEW SLOW [get_ports {led[7]}]
# led[6] - LED1
set_property PACKAGE_PIN V9 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property DRIVE 12 [get_ports {led[6]}]
set_property SLEW SLOW [get_ports {led[6]}]
# led[5] - LED2
set_property PACKAGE_PIN R8 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property DRIVE 12 [get_ports {led[5]}]
set_property SLEW SLOW [get_ports {led[5]}]
# led[4] - LED3
set_property PACKAGE_PIN T6 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property DRIVE 12 [get_ports {led[4]}]
set_property SLEW SLOW [get_ports {led[4]}]
# led[3] - LED4
set_property PACKAGE_PIN T5 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property DRIVE 12 [get_ports {led[3]}]
set_property SLEW SLOW [get_ports {led[3]}]
# led[2] - LED5
set_property PACKAGE_PIN T4 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property DRIVE 12 [get_ports {led[2]}]
set_property SLEW SLOW [get_ports {led[2]}]
# led[1] - LED6
set_property PACKAGE_PIN U7 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property DRIVE 12 [get_ports {led[1]}]
set_property SLEW SLOW [get_ports {led[1]}]
# led[0] - LED7
set_property PACKAGE_PIN U6 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property DRIVE 12 [get_ports {led[0]}]
set_property SLEW SLOW [get_ports {led[0]}]