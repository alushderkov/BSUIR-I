# ========================================================
# Constraints for RS latch on Nexys 4
# ========================================================

# --- Switches (inputs) ---
# S (Set)   - SW0
set_property PACKAGE_PIN U9 [get_ports S]
set_property IOSTANDARD LVCMOS33 [get_ports S]

# R (Reset) - SW1
set_property PACKAGE_PIN U8 [get_ports R]
set_property IOSTANDARD LVCMOS33 [get_ports R]

# --- LEDs (outputs) ---
# Q   - LED0
set_property PACKAGE_PIN T8 [get_ports Q]
set_property IOSTANDARD LVCMOS33 [get_ports Q]

# nQ  - LED1
set_property PACKAGE_PIN V9 [get_ports nQ]
set_property IOSTANDARD LVCMOS33 [get_ports nQ]

# (Optional) Output driver configuration
# Increase drive strength for brighter LEDs
set_property DRIVE 12 [get_ports Q]
set_property DRIVE 12 [get_ports nQ]
set_property SLEW SLOW [get_ports Q]
set_property SLEW SLOW [get_ports nQ]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets G1/O]
# (Optional) If the project uses a clock signal,
# but it is not connected in this module, the create_clock command can be commented out.
# For completeness, add constraints for the system clock (not used in this module)
# create_clock -period 10.0 -name sys_clk [get_ports {CLOCK}]