set_property PACKAGE_PIN R6 [get_ports {a[2]}]
set_property PACKAGE_PIN R7 [get_ports {a[1]}]
set_property PACKAGE_PIN U8 [get_ports {a[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[*]}]
   
set_property PACKAGE_PIN R5 [get_ports {b[2]}] 
set_property PACKAGE_PIN V7 [get_ports {b[1]}]
set_property PACKAGE_PIN V6 [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[*]}]

set_property PACKAGE_PIN P2 [get_ports gt]
set_property PACKAGE_PIN R2 [get_ports lt]
set_property PACKAGE_PIN U1 [get_ports eq]
set_property IOSTANDARD LVCMOS33 [get_ports {gt lt eq}]