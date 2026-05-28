set_property PACKAGE_PIN R6 [get_ports {data}]
set_property PACKAGE_PIN R7 [get_ports {we}]
set_property PACKAGE_PIN U8 [get_ports {re}]
set_property IOSTANDARD LVCMOS33 [get_ports {data we re}]

set_property PACKAGE_PIN P2 [get_ports {q}]
set_property IOSTANDARD LVCMOS33 [get_ports {q}]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets q_int]

#set_property CFGBVS VCCO [current_design]
#set_property CONFIG_VOLTAGE 3.3 [current_design]