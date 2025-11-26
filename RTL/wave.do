onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /SYS_TOP_TB/RST_N_TB
add wave -noupdate -radix decimal /SYS_TOP_TB/UART_CLK_TB
add wave -noupdate -radix decimal /SYS_TOP_TB/REF_CLK_TB
add wave -noupdate /SYS_TOP_TB/DUT/clock_divider1/o_div_clk
add wave -noupdate /SYS_TOP_TB/DUT/clock_divider2/o_div_clk
add wave -noupdate -expand -group RX -radix decimal /SYS_TOP_TB/UART_RX_IN_TB
add wave -noupdate -expand -group RX -color {Violet Red} /SYS_TOP_TB/DUT/RX_TOP1/stop_error_RX
add wave -noupdate -expand -group RX -color {Violet Red} /SYS_TOP_TB/DUT/RX_TOP1/parity_error_RX
add wave -noupdate -expand -group RX /SYS_TOP_TB/DUT/RX_TOP1/P_DATA_RX
add wave -noupdate -expand -group RX -color {Violet Red} /SYS_TOP_TB/DUT/RX_TOP1/data_valid_RX
add wave -noupdate -expand -group DATA_SYNC /SYS_TOP_TB/DUT/DATA_SYNC1/enable_pulse
add wave -noupdate -expand -group DATA_SYNC /SYS_TOP_TB/DUT/DATA_SYNC1/sync_bus
add wave -noupdate -radix decimal -childformat {{{/SYS_TOP_TB/out[7]} -radix decimal} {{/SYS_TOP_TB/out[6]} -radix decimal} {{/SYS_TOP_TB/out[5]} -radix decimal} {{/SYS_TOP_TB/out[4]} -radix decimal} {{/SYS_TOP_TB/out[3]} -radix decimal} {{/SYS_TOP_TB/out[2]} -radix decimal} {{/SYS_TOP_TB/out[1]} -radix decimal} {{/SYS_TOP_TB/out[0]} -radix decimal}} -subitemconfig {{/SYS_TOP_TB/out[7]} {-height 15 -radix decimal} {/SYS_TOP_TB/out[6]} {-height 15 -radix decimal} {/SYS_TOP_TB/out[5]} {-height 15 -radix decimal} {/SYS_TOP_TB/out[4]} {-height 15 -radix decimal} {/SYS_TOP_TB/out[3]} {-height 15 -radix decimal} {/SYS_TOP_TB/out[2]} {-height 15 -radix decimal} {/SYS_TOP_TB/out[1]} {-height 15 -radix decimal} {/SYS_TOP_TB/out[0]} {-height 15 -radix decimal}} /SYS_TOP_TB/out
add wave -noupdate -expand -group rEGISTER /SYS_TOP_TB/DUT/Register_File1/WrEn
add wave -noupdate -expand -group rEGISTER /SYS_TOP_TB/DUT/Register_File1/RdEn
add wave -noupdate -expand -group rEGISTER /SYS_TOP_TB/DUT/Register_File1/RdData_valid
add wave -noupdate -expand -group rEGISTER -color {Medium Orchid} -itemcolor {Medium Orchid} /SYS_TOP_TB/DUT/Register_File1/RdData
add wave -noupdate -expand -group rEGISTER /SYS_TOP_TB/DUT/Register_File1/WrData
add wave -noupdate -expand -group rEGISTER /SYS_TOP_TB/DUT/Register_File1/regfile
add wave -noupdate -expand -group rEGISTER /SYS_TOP_TB/DUT/Register_File1/Address
add wave -noupdate -expand -group rEGISTER /SYS_TOP_TB/DUT/Register_File1/REG3
add wave -noupdate -expand -group rEGISTER /SYS_TOP_TB/DUT/Register_File1/REG2
add wave -noupdate -expand -group rEGISTER /SYS_TOP_TB/DUT/Register_File1/REG1
add wave -noupdate -expand -group rEGISTER /SYS_TOP_TB/DUT/Register_File1/REG0
add wave -noupdate -expand -group CTRL /SYS_TOP_TB/DUT/SYS_CTRL1/next_state
add wave -noupdate -expand -group CTRL /SYS_TOP_TB/DUT/SYS_CTRL1/current_state
add wave -noupdate -expand -group CTRL -color {Violet Red} -itemcolor {Violet Red} /SYS_TOP_TB/DUT/SYS_CTRL1/WrEn
add wave -noupdate -expand -group CTRL -color {Violet Red} -itemcolor {Violet Red} /SYS_TOP_TB/DUT/SYS_CTRL1/WrData
add wave -noupdate -expand -group CTRL -color {Violet Red} -itemcolor {Violet Red} /SYS_TOP_TB/DUT/SYS_CTRL1/RdEn
add wave -noupdate -expand -group CTRL /SYS_TOP_TB/DUT/SYS_CTRL1/RdData_Valid
add wave -noupdate -expand -group CTRL /SYS_TOP_TB/DUT/SYS_CTRL1/RdData
add wave -noupdate -expand -group CTRL /SYS_TOP_TB/DUT/SYS_CTRL1/TX_P_DATA
add wave -noupdate -expand -group CTRL /SYS_TOP_TB/DUT/SYS_CTRL1/TX_D_VLD
add wave -noupdate -expand -group CTRL /SYS_TOP_TB/DUT/SYS_CTRL1/second_frame
add wave -noupdate -expand -group CTRL /SYS_TOP_TB/DUT/SYS_CTRL1/ADDRESS_REG
add wave -noupdate -expand -group CTRL /SYS_TOP_TB/DUT/SYS_CTRL1/Address
add wave -noupdate -expand -group ALU /SYS_TOP_TB/DUT/ALU1/valid_data
add wave -noupdate -expand -group ALU /SYS_TOP_TB/DUT/ALU1/Enable
add wave -noupdate -expand -group ALU -color {Medium Orchid} -itemcolor {Medium Orchid} /SYS_TOP_TB/DUT/ALU1/ALU_OUT
add wave -noupdate -expand -group ALU /SYS_TOP_TB/DUT/ALU1/ALU_FUN
add wave -noupdate -expand -group {CLOCK GATING} /SYS_TOP_TB/DUT/CLK_gating1/Gated_CLK
add wave -noupdate -expand -group {CLOCK GATING} /SYS_TOP_TB/DUT/CLK_gating1/CLK_EN
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/wr_data
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/wq2_rptr_sync
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/wptr_async
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/waddr
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/rq2_wptr_sync
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/rptr_async
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/rd_data
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/raddr
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/R_INC
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/FULL
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/EMPTY
add wave -noupdate -expand -group FIFO /SYS_TOP_TB/DUT/ASYNC_FIFO1/fifo_mem_cntrl/mem
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/CLK
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/RST
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/SER/counter
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/ser_data
add wave -noupdate -expand -group Tx -color Blue -itemcolor Blue /SYS_TOP_TB/DUT/TOP_TX1/ser_en
add wave -noupdate -expand -group Tx -color Blue -itemcolor Blue /SYS_TOP_TB/DUT/TOP_TX1/ser_done
add wave -noupdate -expand -group Tx -color Blue -itemcolor Blue /SYS_TOP_TB/DUT/TOP_TX1/TX_OUT
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/PAR_TYP
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/PAR_EN
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/par_bit
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/P_DATA
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/mux_sel
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/DATA_VALID
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/DATA_LENGTH
add wave -noupdate -expand -group Tx /SYS_TOP_TB/DUT/TOP_TX1/BUSY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2343277134 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 330
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {2200634254 ps} {2562624024 ps}
