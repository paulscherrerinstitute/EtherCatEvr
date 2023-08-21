# mgtStatus read into status register
set_false_path -through [get_pins -of_objects [get_cells -hier -regex {([^/]*[/]){0,1}U_Top/B_LOC_REGS[.]r_reg[[]regs[]][[]1[]].*}] -filter {REF_PIN_NAME==D}]

# refclk mux
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks *TimingGtp_i*TXOUTCLK] -group [get_clocks -include_generated_clocks {mgtRefClkFab[1]}]
set_false_path -through [get_pins -hier -regex {.*B_MGT[.]U_TXOUTCLK_MUX/S0}] -to [get_clocks *TimingGtp_i*TXOUTCLK]
set_false_path -through [get_pins -hier -regex {.*B_MGT[.]U_TXOUTCLK_MUX/S1}] -to [get_clocks mgtRefClkFab*]
