## Variant 24 - Task 4: Boolean Function Unit Constraints
## Maps 4 switches to function inputs, 1 LED to output

## Output LED
set_property PACKAGE_PIN T8 [get_ports {q_out}]
set_property IOSTANDARD LVCMOS33 [get_ports {q_out}]

## Input Switches (x_in[3:0])
set_property PACKAGE_PIN R6 [get_ports {x_in[3]}]
set_property PACKAGE_PIN R7 [get_ports {x_in[2]}]
set_property PACKAGE_PIN U8 [get_ports {x_in[1]}]
set_property PACKAGE_PIN U9 [get_ports {x_in[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {x_in[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {x_in[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {x_in[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {x_in[0]}]
