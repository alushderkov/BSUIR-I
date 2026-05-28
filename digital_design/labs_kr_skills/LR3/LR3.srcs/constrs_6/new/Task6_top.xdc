# ========================================================
# XDC for top6 (PWM controller without additional divider)
# on Nexys 4 board
# ========================================================

# --- System clock 100 MHz ---
set_property PACKAGE_PIN E3 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
create_clock -period 10.0 -name sys_clk [get_ports sys_clk]

# --- Reset (active low) - CPU_RESET button ---
set_property PACKAGE_PIN C12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# --- Enable - switch SW0 ---
set_property PACKAGE_PIN U9 [get_ports en_sw]
set_property IOSTANDARD LVCMOS33 [get_ports en_sw]

# --- Duty cycle duty_sw (8 bits) - switches SW1..SW8 ---
# duty_sw[7] - SW1
set_property PACKAGE_PIN U8 [get_ports {duty_sw[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_sw[7]}]
# duty_sw[6] - SW2
set_property PACKAGE_PIN R7 [get_ports {duty_sw[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_sw[6]}]
# duty_sw[5] - SW3
set_property PACKAGE_PIN R6 [get_ports {duty_sw[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_sw[5]}]
# duty_sw[4] - SW4
set_property PACKAGE_PIN R5 [get_ports {duty_sw[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_sw[4]}]
# duty_sw[3] - SW5
set_property PACKAGE_PIN V7 [get_ports {duty_sw[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_sw[3]}]
# duty_sw[2] - SW6
set_property PACKAGE_PIN V6 [get_ports {duty_sw[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_sw[2]}]
# duty_sw[1] - SW7
set_property PACKAGE_PIN V5 [get_ports {duty_sw[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_sw[1]}]
# duty_sw[0] - SW8 (pin U4, commented in the board file but available)
set_property PACKAGE_PIN U4 [get_ports {duty_sw[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_sw[0]}]

# --- PWM output - LED0 ---
set_property PACKAGE_PIN T8 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]
set_property DRIVE 12 [get_ports led]
set_property SLEW SLOW [get_ports led]