###################################################################

# Created by write_sdc on Sat Oct 4 07:24:43 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports test_mode]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports SE]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[4]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports {SI[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports UART_RX_IN]
set_load -pin_load 0.1 [get_ports {SO[4]}]
set_load -pin_load 0.1 [get_ports {SO[3]}]
set_load -pin_load 0.1 [get_ports {SO[2]}]
set_load -pin_load 0.1 [get_ports {SO[1]}]
set_load -pin_load 0.1 [get_ports {SO[0]}]
set_load -pin_load 0.1 [get_ports UART_TX_O]
set_load -pin_load 0.1 [get_ports parity_error]
set_load -pin_load 0.1 [get_ports framing_error]
set_case_analysis 1 [get_ports test_mode]
create_clock [get_ports REF_CLK]  -name REF_CLK1  -period 10  -waveform {0 5}
set_clock_latency 0  [get_clocks REF_CLK1]
set_clock_uncertainty -setup 0.2  [get_clocks REF_CLK1]
set_clock_uncertainty -hold 0.1  [get_clocks REF_CLK1]
set_clock_transition -min -fall 0.05 [get_clocks REF_CLK1]
set_clock_transition -min -rise 0.05 [get_clocks REF_CLK1]
set_clock_transition -max -fall 0.05 [get_clocks REF_CLK1]
set_clock_transition -max -rise 0.05 [get_clocks REF_CLK1]
create_clock [get_ports UART_CLK]  -name UART_CLK1  -period 271.267  -waveform {0 135.634}
set_clock_latency 0  [get_clocks UART_CLK1]
set_clock_uncertainty -setup 0.2  [get_clocks UART_CLK1]
set_clock_uncertainty -hold 0.1  [get_clocks UART_CLK1]
set_clock_transition -min -fall 0.05 [get_clocks UART_CLK1]
set_clock_transition -min -rise 0.05 [get_clocks UART_CLK1]
set_clock_transition -max -fall 0.05 [get_clocks UART_CLK1]
set_clock_transition -max -rise 0.05 [get_clocks UART_CLK1]
create_generated_clock [get_pins U0_clock_divider/o_div_clk]  -name TX_CLOCK  -source [get_ports UART_CLK]  -master_clock UART_CLK1  -divide_by 32  -add
set_clock_latency 0  [get_clocks TX_CLOCK]
set_clock_uncertainty -setup 0.2  [get_clocks TX_CLOCK]
set_clock_uncertainty -hold 0.1  [get_clocks TX_CLOCK]
create_generated_clock [get_pins U1_clock_divider/o_div_clk]  -name RX_CLOCK  -source [get_ports UART_CLK]  -master_clock UART_CLK1  -divide_by 1  -add
set_clock_latency 0  [get_clocks RX_CLOCK]
set_clock_uncertainty -setup 0.2  [get_clocks RX_CLOCK]
set_clock_uncertainty -hold 0.1  [get_clocks RX_CLOCK]
create_generated_clock [get_pins U0_CLK_gating/Gated_CLK]  -name ALU_CLK  -source [get_ports REF_CLK]  -master_clock REF_CLK1  -divide_by 1  -add
set_clock_latency 0  [get_clocks ALU_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks ALU_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks ALU_CLK]
create_clock [get_ports scan_clk]  -name DFTCLK  -period 10  -waveform {0 5}
set_clock_latency 0  [get_clocks DFTCLK]
set_clock_uncertainty -setup 0.2  [get_clocks DFTCLK]
set_clock_uncertainty -hold 0.1  [get_clocks DFTCLK]
set_clock_transition -min -fall 0.05 [get_clocks DFTCLK]
set_clock_transition -max -fall 0.05 [get_clocks DFTCLK]
set_clock_transition -min -rise 0.05 [get_clocks DFTCLK]
set_clock_transition -max -rise 0.05 [get_clocks DFTCLK]
set_input_delay -clock RX_CLOCK  54.2535  [get_ports UART_RX_IN]
set_input_delay -clock DFTCLK  2  [get_ports {SI[4]}]
set_input_delay -clock DFTCLK  2  [get_ports {SI[3]}]
set_input_delay -clock DFTCLK  2  [get_ports {SI[2]}]
set_input_delay -clock DFTCLK  2  [get_ports {SI[1]}]
set_input_delay -clock DFTCLK  2  [get_ports {SI[0]}]
set_input_delay -clock DFTCLK  2  [get_ports SE]
set_input_delay -clock DFTCLK  2  [get_ports test_mode]
set_output_delay -clock TX_CLOCK  1736.11  [get_ports UART_TX_O]
set_output_delay -clock RX_CLOCK  54.2535  [get_ports parity_error]
set_output_delay -clock RX_CLOCK  54.2535  [get_ports framing_error]
set_output_delay -clock DFTCLK  2  [get_ports {SO[4]}]
set_output_delay -clock DFTCLK  2  [get_ports {SO[3]}]
set_output_delay -clock DFTCLK  2  [get_ports {SO[2]}]
set_output_delay -clock DFTCLK  2  [get_ports {SO[1]}]
set_output_delay -clock DFTCLK  2  [get_ports {SO[0]}]
set_clock_groups -asynchronous -name UART_CLK1_1 -group [list [get_clocks UART_CLK1] [get_clocks TX_CLOCK] [get_clocks RX_CLOCK]] -group [list [get_clocks REF_CLK1] [get_clocks ALU_CLK]] -group [get_clocks DFTCLK]
set_case_analysis 1 test_mode
set_case_analysis 0 SE
