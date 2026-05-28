# ========================================================
# Constraints for freq_div_behav on Nexys 4
# ========================================================

# --- Clock signal (100 MHz) ---
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.0 -name sys_clk [get_ports clk]

# --- Asynchronous reset (active low) ---
set_property PACKAGE_PIN C12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# --- Enable: switch SW0 ---
set_property PACKAGE_PIN U9 [get_ports en]
set_property IOSTANDARD LVCMOS33 [get_ports en]

# --- Output q: LED0 ---
set_property PACKAGE_PIN T8 [get_ports q]
set_property IOSTANDARD LVCMOS33 [get_ports q]
set_property DRIVE 12 [get_ports q]
set_property SLEW SLOW [get_ports q]

# (Optional) If you use other LEDs for debugging,
# add them similarly, but this module has only one output.