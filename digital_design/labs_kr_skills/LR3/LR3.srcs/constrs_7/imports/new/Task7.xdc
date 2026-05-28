# ========================================================
# XDC for reg_file_2r1w (task 7) on Nexys 4
# ========================================================
# Note: due to limited number of external pins,
# w_data[15:0] and r_data_2[15:0] ports are left unconstrained.
# This does not prevent synthesis and analysis of the circuit.
# ========================================================

# --- 100 MHz clock signal ---
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.0 -name sys_clk [get_ports clk]

# --- Asynchronous reset (active low) ---
set_property PACKAGE_PIN C12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# --- Write enable w_en: SW0 ---
set_property PACKAGE_PIN U9 [get_ports w_en]
set_property IOSTANDARD LVCMOS33 [get_ports w_en]

# --- Write address w_addr[4:0]: SW1..SW5 ---
set_property PACKAGE_PIN U8 [get_ports {w_addr[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {w_addr[4]}]
set_property PACKAGE_PIN R7 [get_ports {w_addr[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {w_addr[3]}]
set_property PACKAGE_PIN R6 [get_ports {w_addr[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {w_addr[2]}]
set_property PACKAGE_PIN R5 [get_ports {w_addr[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {w_addr[1]}]
set_property PACKAGE_PIN V7 [get_ports {w_addr[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {w_addr[0]}]

# --- Write data w_data[15:0] - not constrained (left unconnected) ---
# (if necessary, can be connected to unused switches, but not required for synthesis)

# --- Read enable port 1: center button BTNC ---
set_property PACKAGE_PIN E16 [get_ports r_en_1]
set_property IOSTANDARD LVCMOS33 [get_ports r_en_1]

# --- Read address port 1 r_addr_1[4:0]: SW6..SW10 ---
set_property PACKAGE_PIN V6 [get_ports {r_addr_1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_addr_1[4]}]
set_property PACKAGE_PIN V5 [get_ports {r_addr_1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_addr_1[3]}]
set_property PACKAGE_PIN U4 [get_ports {r_addr_1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_addr_1[2]}]
set_property PACKAGE_PIN V2 [get_ports {r_addr_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_addr_1[1]}]
set_property PACKAGE_PIN U2 [get_ports {r_addr_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_addr_1[0]}]

# --- Read output port 1 r_data_1[15:0]: LEDs LED0..LED15 ---
# LED0 (bit 15)
set_property PACKAGE_PIN T8 [get_ports {r_data_1[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[15]}]
set_property DRIVE 12 [get_ports {r_data_1[15]}]
set_property SLEW SLOW [get_ports {r_data_1[15]}]
# LED1 (bit 14)
set_property PACKAGE_PIN V9 [get_ports {r_data_1[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[14]}]
set_property DRIVE 12 [get_ports {r_data_1[14]}]
set_property SLEW SLOW [get_ports {r_data_1[14]}]
# LED2 (bit 13)
set_property PACKAGE_PIN R8 [get_ports {r_data_1[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[13]}]
set_property DRIVE 12 [get_ports {r_data_1[13]}]
set_property SLEW SLOW [get_ports {r_data_1[13]}]
# LED3 (bit 12)
set_property PACKAGE_PIN T6 [get_ports {r_data_1[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[12]}]
set_property DRIVE 12 [get_ports {r_data_1[12]}]
set_property SLEW SLOW [get_ports {r_data_1[12]}]
# LED4 (bit 11)
set_property PACKAGE_PIN T5 [get_ports {r_data_1[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[11]}]
set_property DRIVE 12 [get_ports {r_data_1[11]}]
set_property SLEW SLOW [get_ports {r_data_1[11]}]
# LED5 (bit 10)
set_property PACKAGE_PIN T4 [get_ports {r_data_1[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[10]}]
set_property DRIVE 12 [get_ports {r_data_1[10]}]
set_property SLEW SLOW [get_ports {r_data_1[10]}]
# LED6 (bit 9)
set_property PACKAGE_PIN U7 [get_ports {r_data_1[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[9]}]
set_property DRIVE 12 [get_ports {r_data_1[9]}]
set_property SLEW SLOW [get_ports {r_data_1[9]}]
# LED7 (bit 8)
set_property PACKAGE_PIN U6 [get_ports {r_data_1[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[8]}]
set_property DRIVE 12 [get_ports {r_data_1[8]}]
set_property SLEW SLOW [get_ports {r_data_1[8]}]
# LED8 (bit 7)
set_property PACKAGE_PIN V4 [get_ports {r_data_1[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[7]}]
set_property DRIVE 12 [get_ports {r_data_1[7]}]
set_property SLEW SLOW [get_ports {r_data_1[7]}]
# LED9 (bit 6)
set_property PACKAGE_PIN U3 [get_ports {r_data_1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[6]}]
set_property DRIVE 12 [get_ports {r_data_1[6]}]
set_property SLEW SLOW [get_ports {r_data_1[6]}]
# LED10 (bit 5)
set_property PACKAGE_PIN V1 [get_ports {r_data_1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[5]}]
set_property DRIVE 12 [get_ports {r_data_1[5]}]
set_property SLEW SLOW [get_ports {r_data_1[5]}]
# LED11 (bit 4)
set_property PACKAGE_PIN R1 [get_ports {r_data_1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[4]}]
set_property DRIVE 12 [get_ports {r_data_1[4]}]
set_property SLEW SLOW [get_ports {r_data_1[4]}]
# LED12 (bit 3)
set_property PACKAGE_PIN P5 [get_ports {r_data_1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[3]}]
set_property DRIVE 12 [get_ports {r_data_1[3]}]
set_property SLEW SLOW [get_ports {r_data_1[3]}]
# LED13 (bit 2)
set_property PACKAGE_PIN U1 [get_ports {r_data_1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[2]}]
set_property DRIVE 12 [get_ports {r_data_1[2]}]
set_property SLEW SLOW [get_ports {r_data_1[2]}]
# LED14 (bit 1)
set_property PACKAGE_PIN R2 [get_ports {r_data_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[1]}]
set_property DRIVE 12 [get_ports {r_data_1[1]}]
set_property SLEW SLOW [get_ports {r_data_1[1]}]
# LED15 (bit 0)
set_property PACKAGE_PIN P2 [get_ports {r_data_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_data_1[0]}]
set_property DRIVE 12 [get_ports {r_data_1[0]}]
set_property SLEW SLOW [get_ports {r_data_1[0]}]

# --- Read enable port 2: top button BTNU ---
set_property PACKAGE_PIN F15 [get_ports r_en_2]
set_property IOSTANDARD LVCMOS33 [get_ports r_en_2]

# --- Read address port 2 r_addr_2[4:0]: SW11..SW15 ---
set_property PACKAGE_PIN T3 [get_ports {r_addr_2[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_addr_2[4]}]
set_property PACKAGE_PIN T1 [get_ports {r_addr_2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_addr_2[3]}]
set_property PACKAGE_PIN R3 [get_ports {r_addr_2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_addr_2[2]}]
set_property PACKAGE_PIN P3 [get_ports {r_addr_2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_addr_2[1]}]
set_property PACKAGE_PIN P4 [get_ports {r_addr_2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r_addr_2[0]}]

# --- Read output port 2 r_data_2[15:0] - not constrained (left unconnected) ---