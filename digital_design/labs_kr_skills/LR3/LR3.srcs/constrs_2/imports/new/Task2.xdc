# ========================================================
# Constraints for D flip-flop (d_flip_flop) on Nexys 4
# ========================================================

# --- Input D: switch SW0 ---
set_property PACKAGE_PIN U9 [get_ports D]
set_property IOSTANDARD LVCMOS33 [get_ports D]

# --- Clock input: button BTNC (active high) ---
set_property PACKAGE_PIN E16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# --- Asynchronous reset (active low): button CPU_RESET ---
set_property PACKAGE_PIN C12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# --- Output Q: LED0 ---
set_property PACKAGE_PIN T8 [get_ports Q]
set_property IOSTANDARD LVCMOS33 [get_ports Q]
# Increase drive strength for brighter LED
set_property DRIVE 12 [get_ports Q]
set_property SLEW SLOW [get_ports Q]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clk}]