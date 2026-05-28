# ========================================================
# XDC for pwm_controller module (top-level) on Nexys 4
# ========================================================

# --- 100 MHz clock signal ---
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.0 -name sys_clk [get_ports clk]

# --- Reset (active low) - CPU_RESET button ---
set_property PACKAGE_PIN C12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# --- Enable - switch SW0 ---
set_property PACKAGE_PIN U9 [get_ports en]
set_property IOSTANDARD LVCMOS33 [get_ports en]

# --- Duty cycle duty_cycle (8 bits) - switches SW1..SW8 ---
# duty_cycle[7] - SW1
set_property PACKAGE_PIN U8 [get_ports {duty_cycle[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_cycle[7]}]
# duty_cycle[6] - SW2
set_property PACKAGE_PIN R7 [get_ports {duty_cycle[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_cycle[6]}]
# duty_cycle[5] - SW3
set_property PACKAGE_PIN R6 [get_ports {duty_cycle[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_cycle[5]}]
# duty_cycle[4] - SW4
set_property PACKAGE_PIN R5 [get_ports {duty_cycle[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_cycle[4]}]
# duty_cycle[3] - SW5
set_property PACKAGE_PIN V7 [get_ports {duty_cycle[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_cycle[3]}]
# duty_cycle[2] - SW6
set_property PACKAGE_PIN V6 [get_ports {duty_cycle[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_cycle[2]}]
# duty_cycle[1] - SW7
set_property PACKAGE_PIN V5 [get_ports {duty_cycle[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_cycle[1]}]
# duty_cycle[0] - SW8 (pin U4, commented in the board file but available)
set_property PACKAGE_PIN U4 [get_ports {duty_cycle[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {duty_cycle[0]}]

# --- PWM output - LED0 ---
set_property PACKAGE_PIN T8 [get_ports pwm_out]
set_property IOSTANDARD LVCMOS33 [get_ports pwm_out]
# Increase drive strength for brightness
set_property DRIVE 12 [get_ports pwm_out]
set_property SLEW SLOW [get_ports pwm_out]