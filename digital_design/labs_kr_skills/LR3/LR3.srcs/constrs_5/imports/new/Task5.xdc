# ========================================================
# Constraints for universal_counter (N=8) on Nexys 4
# ========================================================

# --- Clock signal (100 MHz) ---
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.0 -name sys_clk [get_ports clk]

# --- Asynchronous reset (active low) ---
set_property PACKAGE_PIN C12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# --- Enable en: SW0 ---
set_property PACKAGE_PIN U9 [get_ports en]
set_property IOSTANDARD LVCMOS33 [get_ports en]

# --- Mode mode[2:0] ---
# mode[2] - SW1 (MSB, not used in the code)
set_property PACKAGE_PIN U8 [get_ports {mode[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mode[2]}]
# mode[1] - SW2
set_property PACKAGE_PIN R7 [get_ports {mode[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mode[1]}]
# mode[0] - SW3
set_property PACKAGE_PIN R6 [get_ports {mode[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mode[0]}]

# --- Input data d_i[7:0] (8 bits) ---
# d_i[7] - SW4
set_property PACKAGE_PIN R5 [get_ports {d_i[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[7]}]
# d_i[6] - SW5
set_property PACKAGE_PIN V7 [get_ports {d_i[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[6]}]
# d_i[5] - SW6
set_property PACKAGE_PIN V6 [get_ports {d_i[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[5]}]
# d_i[4] - SW7
set_property PACKAGE_PIN V5 [get_ports {d_i[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[4]}]
# d_i[3] - SW8
set_property PACKAGE_PIN U4 [get_ports {d_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[3]}]
# d_i[2] - SW9
set_property PACKAGE_PIN V2 [get_ports {d_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[2]}]
# d_i[1] - SW10
set_property PACKAGE_PIN U2 [get_ports {d_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[1]}]
# d_i[0] - SW11
set_property PACKAGE_PIN T3 [get_ports {d_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_i[0]}]

# --- Output data q[7:0] (LEDs LED0..LED7) ---
# q[7] - LED0
set_property PACKAGE_PIN T8 [get_ports {q[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q[7]}]
set_property DRIVE 12 [get_ports {q[7]}]
set_property SLEW SLOW [get_ports {q[7]}]
# q[6] - LED1
set_property PACKAGE_PIN V9 [get_ports {q[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q[6]}]
set_property DRIVE 12 [get_ports {q[6]}]
set_property SLEW SLOW [get_ports {q[6]}]
# q[5] - LED2
set_property PACKAGE_PIN R8 [get_ports {q[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q[5]}]
set_property DRIVE 12 [get_ports {q[5]}]
set_property SLEW SLOW [get_ports {q[5]}]
# q[4] - LED3
set_property PACKAGE_PIN T6 [get_ports {q[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q[4]}]
set_property DRIVE 12 [get_ports {q[4]}]
set_property SLEW SLOW [get_ports {q[4]}]
# q[3] - LED4
set_property PACKAGE_PIN T5 [get_ports {q[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q[3]}]
set_property DRIVE 12 [get_ports {q[3]}]
set_property SLEW SLOW [get_ports {q[3]}]
# q[2] - LED5
set_property PACKAGE_PIN T4 [get_ports {q[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q[2]}]
set_property DRIVE 12 [get_ports {q[2]}]
set_property SLEW SLOW [get_ports {q[2]}]
# q[1] - LED6
set_property PACKAGE_PIN U7 [get_ports {q[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q[1]}]
set_property DRIVE 12 [get_ports {q[1]}]
set_property SLEW SLOW [get_ports {q[1]}]
# q[0] - LED7
set_property PACKAGE_PIN U6 [get_ports {q[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q[0]}]
set_property DRIVE 12 [get_ports {q[0]}]
set_property SLEW SLOW [get_ports {q[0]}]