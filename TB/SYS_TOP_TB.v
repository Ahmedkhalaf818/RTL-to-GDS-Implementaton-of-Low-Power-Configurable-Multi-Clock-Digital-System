`timescale 1ns / 1ps
module SYS_TOP_TB;
    parameter DATA_WIDTH_TB   = 8;
    parameter RF_ADDR_TB      = 4;
    parameter NUM_STAGE_RST_TB = 2;
    parameter NUM_STAGE_FIFO_TB = 2;
    parameter RF_DEPTH_TB   = 16;
    parameter FIFO_ADDR_WIDTH_TB =4;

     reg                   RST_N_TB;
     reg                   UART_CLK_TB;
     reg                   REF_CLK_TB;
     reg                   UART_RX_IN_TB;
     wire                  UART_TX_O_TB;
     wire                  parity_error_TB; 
     wire                  framing_error_TB; 
SYS_TOP #(
    .DATA_WIDTH(DATA_WIDTH_TB),
    .RF_ADDR(RF_ADDR_TB),
    .NUM_STAGE_RST(NUM_STAGE_RST_TB),
    .NUM_STAGE_FIFO(NUM_STAGE_FIFO_TB),
    .RF_DEPTH(RF_DEPTH_TB),
    .FIFO_ADDR_WIDTH(FIFO_ADDR_WIDTH_TB)
) DUT (
    .RST_N(RST_N_TB),
    .UART_CLK(UART_CLK_TB),
    .REF_CLK(REF_CLK_TB),
    .UART_RX_IN(UART_RX_IN_TB),
    .UART_TX_O(UART_TX_O_TB),
    .parity_error(parity_error_TB), 
    .framing_error(framing_error_TB) 
);
localparam [7:0] CMD_AA = 8'hAA;
localparam [7:0] CMD_BB = 8'hBB;
localparam [7:0] CMD_CC = 8'hCC;
localparam [7:0] CMD_DD = 8'hDD;

localparam REF_CLK_PERIOD = 10 ; // 100 MHz clock period
localparam UART_CLK_PERIOD = 271.267 ; // 3.6864 MHz clock period
reg [7:0] out;
initial begin
reset_system();
initialize_signals();
/*CMD_AA :start write command*/
uart_send_data(CMD_AA);
#(UART_CLK_PERIOD*8*out);
uart_send_data(8'h0F); // write to address 0f
#(UART_CLK_PERIOD*8*out);
uart_send_data(8'h55); // write to address data 55
#(UART_CLK_PERIOD*8*out);
/*CMD_AA :Finish write command*/
/*CMD_BB:start read command*/
uart_send_data(CMD_BB);
#(UART_CLK_PERIOD*8*out);
uart_send_data(8'h0F); // read from address 0f
#(UART_CLK_PERIOD*8*out);
/*CMD_AA :Finish read command*/
/*CMD_CC:start ALU command*/
uart_send_data(CMD_CC);
#(UART_CLK_PERIOD*8*out);
uart_send_data(8'h01); 
#(UART_CLK_PERIOD*8*out);
uart_send_data(8'h2); 
#(UART_CLK_PERIOD*8*out);
uart_send_data(8'ha7);
#(UART_CLK_PERIOD*8*out);
/*CMD_BB:Finish ALU command*/
/*CMD_CC:start ALU_NOP command*/
uart_send_data(8'hDD); 
#(UART_CLK_PERIOD*8*out);
uart_send_data(8'h1); // function
#(UART_CLK_PERIOD*22*out);
/*CMD_CC:Finish ALU_NOP command*/

$stop;
end
task initialize_signals;
begin
    UART_CLK_TB = 0;
    REF_CLK_TB = 0;
    UART_RX_IN_TB = 1;
end
endtask
task reset_system; 
begin
    RST_N_TB = 0;
    #(REF_CLK_PERIOD);
    RST_N_TB = 1;
end
endtask
task uart_send_data;
input [7:0] data;
integer i;
integer parity;
begin
UART_RX_IN_TB = 1'b0;
#(UART_CLK_PERIOD*out);
for (i = 0; i < 8; i = i + 1) begin
    UART_RX_IN_TB = data[i]; // Send data bits
    #(UART_CLK_PERIOD*out);
end
//UART_RX_IN_TB = parity; // Parity bit
if(DUT.Register_File1.REG2[0]) begin
    if(DUT.Register_File1.REG2[1]) begin // odd parity
        parity = ~(^data);
    end
    else begin
        parity = ^data; 
    end
 UART_RX_IN_TB = parity; 
#(UART_CLK_PERIOD*out);
end

UART_RX_IN_TB = 1'b1; // Stop bit
end
endtask
 always @(*) begin
        case (DUT.Register_File1.REG2[7:2]) // prescale[7:3]
            6'd32: out = 8'd32;
            6'd16: out = 8'd16;
            6'd8:  out = 8'd8;
            6'd4:  out = 8'd4;
            default: out = 8'd32;
        endcase
    end

always #(REF_CLK_PERIOD / 2.0) REF_CLK_TB = ~REF_CLK_TB; 
always #(UART_CLK_PERIOD / 2.0) UART_CLK_TB = ~UART_CLK_TB; 
endmodule