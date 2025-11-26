module SYS_TOP #(
    parameter DATA_WIDTH   = 8,
    parameter RF_ADDR      = 4,
    parameter NUM_STAGE_RST = 2,
    parameter NUM_STAGE_FIFO = 2,
    parameter RF_DEPTH   = 16,
    parameter FIFO_ADDR_WIDTH =4
)(
    input  wire                  RST_N,
    input  wire                  UART_CLK,
    input  wire                  REF_CLK,
    input  wire                  UART_RX_IN, //done 
    output wire                  UART_TX_O,
    output wire                  parity_error, //done
    output wire                  framing_error //done
);
// Internal signals
//reset blocks
wire RST_SYNC_1, RST_SYNC_2;
//CLOCK gating
wire Gated_EN;
wire ALU_CLK;
//Register file
wire [DATA_WIDTH-1 : 0] REG0_OP_A, REG1_OP_B, REG2_UART_config, REG3_DIV_ratio;
wire WrEn_RF, RdEn_RF;
wire [RF_ADDR-1 : 0] Address_RF;
wire [DATA_WIDTH-1 : 0] WrData_RF;
wire [DATA_WIDTH-1 : 0] RdData_RF;
wire RdData_valid_RF;
//ALU
wire [3:0] ALU_FUN_in;
wire ALU_ENABLE_in;
wire ALU_DATA_VALID_out;
//CTRL
wire [(2*DATA_WIDTH)-1 : 0] CTRL_ALU_OUT;
wire SYNC_EN_OUT;
wire [DATA_WIDTH-1:0] CTRL_SYNC_DATA;
//FIFO
wire FIFO_FULL, FIFO_EMPTY;
wire [DATA_WIDTH-1 : 0] FIFO_RD_DATA;
wire FIFO_WR_INC;
wire [DATA_WIDTH-1 : 0] FIFO_WR_DATA;
//MUX prescale
wire [7:0] div_ratio_prescale; //output of custom MUX
//clock divider
wire TX_CLK; //out of clock divider1
wire RX_CLK; //out of clock divider2
wire always_on;
//PULSE_GEN
wire BUSY_PG;
wire PULSE_PG;
//RX_TOP
wire [DATA_WIDTH-1 : 0] SYNC_P_DATA_RX;
wire SYNC_data_valid_RX;

RST_SYN #(.NUM_STAGE(NUM_STAGE_RST)) RST_SYN1(
.CLK(REF_CLK),
.RST(RST_N),
.SYNC_RST(RST_SYNC_1)
);

RST_SYN #(.NUM_STAGE(NUM_STAGE_RST)) RST_SYN2(
.CLK(UART_CLK),
.RST(RST_N),
.SYNC_RST(RST_SYNC_2)
);

CLK_gating CLK_gating1(
.CLK(REF_CLK),
.CLK_EN(Gated_EN), 
.Gated_CLK(ALU_CLK)
);
/*
TLATNCAX2M CLK_gating1(
.CK(REF_CLK),
.E(Gated_EN), 
.ECK(ALU_CLK)
);*/

Register_File #(
    .reg_WIDTH(DATA_WIDTH),
    .ADDR(RF_ADDR),
    .Depth(RF_DEPTH)
) Register_File1(
.CLK(REF_CLK),
.RST(RST_SYNC_1),
.WrEn(WrEn_RF),
.RdEn(RdEn_RF),
.Address(Address_RF),
.WrData(WrData_RF),
.RdData(RdData_RF),
.RdData_valid(RdData_valid_RF),
.REG0(REG0_OP_A), 
.REG1(REG1_OP_B),
.REG2(REG2_UART_config),
.REG3(REG3_DIV_ratio)
);
MUX_prescale #(.div_ratio_width(8)) MUX_prescale1(
.sel(REG2_UART_config[7:2]),
.in0(8'd1),
.in1(8'd2),
.in2(8'd4),
.in3(8'd8),
.out(div_ratio_prescale)
);

clock_divider #(.div_ratio_width(8)) clock_divider1(
.i_ref_clk(UART_CLK),
.i_rst_n(RST_SYNC_2),
.i_clk_en(always_on),
.i_div_ratio(REG3_DIV_ratio),
.o_div_clk(TX_CLK)
);
clock_divider #(.div_ratio_width(8)) clock_divider2(
.i_ref_clk(UART_CLK),
.i_rst_n(RST_SYNC_2),
.i_clk_en(always_on),
.i_div_ratio(div_ratio_prescale),
.o_div_clk(RX_CLK)
);

PULSE_GEN PULSE_GEN1(
.CLK(TX_CLK),
.RST_n(RST_SYNC_2),
.LVL_SIG(BUSY_PG),
.pulse_out(PULSE_PG)
);

ALU #(.data_width(DATA_WIDTH), .func_width(4)) ALU1(
.CLK(ALU_CLK),
.RST(RST_SYNC_1),
.A(REG0_OP_A),
.B(REG1_OP_B),
.ALU_FUN(ALU_FUN_in),
.Enable(ALU_ENABLE_in),
.valid_data(ALU_DATA_VALID_out),
.ALU_OUT(CTRL_ALU_OUT)
);
ASYNC_FIFO #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(FIFO_ADDR_WIDTH),
    .NUM_STAGES(NUM_STAGE_FIFO))ASYNC_FIFO1(
    .wclk(REF_CLK),
    .rclk(TX_CLK),
    .wrst_n(RST_SYNC_1),
    .rrst_n(RST_SYNC_2),
    .W_INC(FIFO_WR_INC),
    .R_INC(PULSE_PG),
    .wr_data(FIFO_WR_DATA),
    .FULL(FIFO_FULL),
    .EMPTY(FIFO_EMPTY),
    .rd_data(FIFO_RD_DATA)
    );
DATA_SYNC #(.NUM_STAGE(2), .BUS_WIDTH(DATA_WIDTH)) DATA_SYNC1(
.clk(REF_CLK),
.rst_n(RST_SYNC_1),
.unsync_bus(SYNC_P_DATA_RX),
.bus_enable(SYNC_data_valid_RX),
.sync_bus(CTRL_SYNC_DATA),
.enable_pulse(SYNC_EN_OUT)
);

RX_TOP #(.DATA_LENGTH(DATA_WIDTH)) RX_TOP1(
.CLK_RX(RX_CLK),  
.RST_RX(RST_SYNC_2),
.RX_IN_RX(UART_RX_IN),
.PAR_EN_RX(REG2_UART_config[0]),
.PAR_TYP_RX(REG2_UART_config[1]),
.prescale_RX(REG2_UART_config[7:2]),
.P_DATA_RX(SYNC_P_DATA_RX),
.data_valid_RX(SYNC_data_valid_RX),
.parity_error_RX(parity_error),
.stop_error_RX(framing_error)
);
TOP_TX #(.DATA_LENGTH(DATA_WIDTH)) TOP_TX1(
.RST(RST_SYNC_2),
.CLK(TX_CLK),
.P_DATA(FIFO_RD_DATA),
.PAR_EN(REG2_UART_config[0]),
.PAR_TYP(REG2_UART_config[1]),
.DATA_VALID(~FIFO_EMPTY),
.TX_OUT(UART_TX_O),
.BUSY(BUSY_PG)
); 

SYS_CTRL #(.data_width(DATA_WIDTH)) SYS_CTRL1(
.CLK(REF_CLK),
.RST(RST_SYNC_1),
.ALU_OUT(CTRL_ALU_OUT),
.OUT_Valid(ALU_DATA_VALID_out),
.RdData_Valid(RdData_valid_RF),
.RX_P_DATA(CTRL_SYNC_DATA),
.RX_D_VLD(SYNC_EN_OUT),
.ALU_FUN(ALU_FUN_in),
.CTRL_FULL_IN(FIFO_FULL),
.ALU_EN(ALU_ENABLE_in),
.CLK_EN(Gated_EN),
.Address(Address_RF),
.WrEn(WrEn_RF),
.RdEn(RdEn_RF),
.WrData(WrData_RF),
.RdData(RdData_RF),
.TX_P_DATA(FIFO_WR_DATA),
.TX_D_VLD(FIFO_WR_INC),
.clk_div_en(always_on)
);

endmodule