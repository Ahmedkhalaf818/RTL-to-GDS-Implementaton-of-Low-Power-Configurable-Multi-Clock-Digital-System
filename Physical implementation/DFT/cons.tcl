set REF_CLK_name REF_CLK1
set REF_CLK_port REF_CLK
set LAT_CLK 0
set UNCERTAIN_CLK_hold 0.1
set UNCERTAIN_CLK_setup 0.2
set TRANS_CLK 0.05
set delay_config 1
##REF_CLK -master_clock
create_clock -name "$REF_CLK_name" -period 10 -waveform {0 5} [get_ports $REF_CLK_port]
set_clock_latency $LAT_CLK [get_clocks $REF_CLK_name]
set_clock_uncertainty -hold $UNCERTAIN_CLK_hold [get_clocks $REF_CLK_name]
set_clock_uncertainty -setup $UNCERTAIN_CLK_setup [get_clocks $REF_CLK_name]
set_clock_transition $TRANS_CLK [get_clocks $REF_CLK_name]
set_dont_touch_network [get_ports $REF_CLK_port]




##UART_CLK -master_clock
set UART_CLK_name UART_CLK1
set UART_CLK_port UART_CLK
create_clock -name "$UART_CLK_name" -period 271.2673611  [get_ports $UART_CLK_port]
set_clock_latency $LAT_CLK [get_clocks $UART_CLK_name]
set_clock_uncertainty -hold $UNCERTAIN_CLK_hold [get_clocks $UART_CLK_name]
set_clock_uncertainty -setup $UNCERTAIN_CLK_setup [get_clocks $UART_CLK_name]
set_clock_transition $TRANS_CLK [get_clocks $UART_CLK_name]
set_dont_touch_network [get_ports $UART_CLK_port]

## TX generated CLK default
set TX_CLK_name TX_CLOCK
create_generated_clock -name $TX_CLK_name -source [get_ports $UART_CLK_port] -master_clock $UART_CLK_name -divide_by 32 [get_ports U0_clock_divider/o_div_clk]
set_clock_latency $LAT_CLK [get_clocks $TX_CLK_name ]
set_clock_uncertainty -hold $UNCERTAIN_CLK_hold [get_clocks $TX_CLK_name ]
set_clock_uncertainty -setup $UNCERTAIN_CLK_setup [get_clocks $TX_CLK_name ]
set_dont_touch_network [get_ports U0_clock_divider/o_div_clk]
## RX generated CLK :the fastest:div_ratio=1
set RX_CLK_name RX_CLOCK
create_generated_clock -name $RX_CLK_name -source [get_ports $UART_CLK_port] -master_clock $UART_CLK_name -divide_by $delay_config [get_ports U1_clock_divider/o_div_clk]
set_clock_latency $LAT_CLK [get_clocks $RX_CLK_name ]
set_clock_uncertainty -hold $UNCERTAIN_CLK_hold [get_clocks $RX_CLK_name ]
set_clock_uncertainty -setup $UNCERTAIN_CLK_setup [get_clocks $RX_CLK_name ]
set_dont_touch_network [get_ports U1_clock_divider/o_div_clk]
## gated generated CLK
set gated_CLK_name ALU_CLK
create_generated_clock -name $gated_CLK_name -source [get_ports $REF_CLK_port] -master_clock $REF_CLK_name  [get_ports U0_CLK_gating/Gated_CLK] -divide_by 1
set_clock_latency $LAT_CLK [get_clocks $gated_CLK_name ]
set_clock_uncertainty -hold $UNCERTAIN_CLK_hold [get_clocks $gated_CLK_name ]
set_clock_uncertainty -setup $UNCERTAIN_CLK_setup [get_clocks $gated_CLK_name ]
set_dont_touch_network [get_ports U0_CLK_gating/Gated_CLK]
## dft clock start
set DFT_CLK_NAME DFTCLK
set DFT_CLK_PER 10
set DFT_CLK_SETUP_SKEW 0.2
set DFT_CLK_HOLD_SKEW 0.1
set DFT_CLK_LAT 0
set DFT_CLK_RISE 0.05
set DFT_CLK_FALL 0.05

create_clock -name $DFT_CLK_NAME -period $DFT_CLK_PER -waveform "0 [expr $DFT_CLK_PER/2]" [get_ports scan_clk]
set_clock_uncertainty -setup $DFT_CLK_SETUP_SKEW [get_clocks $DFT_CLK_NAME]
set_clock_uncertainty -hold $DFT_CLK_HOLD_SKEW  [get_clocks $DFT_CLK_NAME]
set_clock_transition -rise $DFT_CLK_RISE  [get_clocks $DFT_CLK_NAME]
set_clock_transition -fall $DFT_CLK_FALL  [get_clocks $DFT_CLK_NAME]
set_clock_latency $DFT_CLK_LAT [get_clocks $DFT_CLK_NAME]

## dft clock finish
##RST_N CONSTRAINTS
set_dont_touch_network [get_ports RST_N]
## clcoks grouping
set_clock_groups -asynchronous -group [get_clocks "$UART_CLK_name $TX_CLK_name $RX_CLK_name"] -group [get_clocks "$REF_CLK_name $gated_CLK_name"] -group [get_clocks "$DFT_CLK_NAME"]
##set_input_delay
set in_delay [expr 0.2*271.2673611]
set in2_delay  [expr 0.2*$DFT_CLK_PER]
set_input_delay $in_delay [get_ports UART_RX_IN] -clock $RX_CLK_name
set_input_delay $in2_delay [get_ports SI] -clock $DFT_CLK_NAME
set_input_delay $in2_delay [get_ports SE] -clock $DFT_CLK_NAME
set_input_delay $in2_delay [get_ports test_mode] -clock $DFT_CLK_NAME
## set_output_delay
set out_delay1 [expr 0.2*271.2673611*32]
set out_delay2 [expr 0.2*271.2673611*$delay_config]
set out_delay3 [expr 0.2*$DFT_CLK_PER]
set_output_delay   $out_delay1 [get_ports UART_TX_O] -clock $TX_CLK_name
set_output_delay   $out_delay2 [get_ports parity_error] -clock $RX_CLK_name
set_output_delay   $out_delay2 [get_ports framing_error] -clock $RX_CLK_name
set_output_delay   $out_delay3 [get_ports SO] -clock $DFT_CLK_NAME
## set_driving_cell
set_driving_cell -library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -lib_cell "BUFX2M" -pin Y [get_ports UART_RX_IN]
set_driving_cell -library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -lib_cell "BUFX2M" -pin Y [get_port test_mode]
set_driving_cell -library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -lib_cell "BUFX2M" -pin Y [get_port SI]
set_driving_cell -library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -lib_cell "BUFX2M" -pin Y [get_port SE]
## set load
set load 0.1
set_load $load [get_ports UART_TX_O]
set_load $load [get_ports parity_error]
set_load $load [get_ports framing_error]
set_load $load  [get_port SO]
## set_operating_conditions
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"  -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"
set_case_analysis 1 [get_port test_mode]

