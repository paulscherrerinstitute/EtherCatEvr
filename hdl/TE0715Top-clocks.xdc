# System Clocks

create_clock -period  7.0 -name mgtRefClk  [get_ports {mgtRefClkPPins[1]}]

# the sysClk is generated by the PS
