module SYS_CTRL #(parameter data_width = 8)(
    input  wire                         CLK,
    input  wire                         RST,
    input  wire [(2*data_width)-1 : 0]  ALU_OUT,
    input  wire                         OUT_Valid,
    input  wire                         CTRL_FULL_IN,
    
    input  wire [data_width-1 : 0]      RdData,
    input  wire                         RdData_Valid,
    input  wire [data_width-1 : 0]      RX_P_DATA,
    input  wire                         RX_D_VLD,

    output reg [3:0]                   ALU_FUN,
    output reg                         ALU_EN,
    output reg                         CLK_EN,
    output reg [3:0]                    Address,
    output reg                          WrEn,
    output reg                          RdEn,
    output reg  [data_width-1 : 0]      WrData,
    output reg [data_width-1 : 0]      TX_P_DATA,
    output reg                         TX_D_VLD,
    output wire                         clk_div_en
);
localparam [7:0] CMD_AA = 8'hAA;
localparam [7:0] CMD_BB = 8'hBB;
localparam [7:0] CMD_CC = 8'hCC;
localparam [7:0] CMD_DD = 8'hDD;

// special gray coding for special transactions change one bit to each transaction
localparam IDLE             = 4'b0000,

           WRITE_REG_ADDRESS= 4'b0001, //change one bit from idle
           WRITE_REG_DATA   = 4'b0011,

           READ_REG_ADDRESS = 4'b0010, // change one bit from idle
           RD_REG_DATA      = 4'b1010,

           ALU_OP_A         = 4'b1000, // change one bit from idle
           ALU_OP_B         = 4'b1100,

           ALU_OPCODE       = 4'b0100, // change one bit from idle 
           ALU_FUNC         = 4'b0101,
           WR_IN_FIFO       = 4'b0111;

          
assign clk_div_en = 1'b1;
reg [3:0] current_state, next_state;
reg [3:0] ADDRESS_REG;
reg second_frame;
reg second_frame_reg;
 //current state Logic 
always @(posedge CLK or negedge RST) begin
    if (!RST)
        current_state <= IDLE;
    else
        current_state <= next_state;
end 

always @(posedge CLK or negedge RST) begin
    if (!RST)
        second_frame <= 1'b0;
    else
        second_frame <= second_frame_reg;
end

always @(posedge CLK or negedge RST) begin
    if (!RST)
        Address <= 4'b0000;
    else if ((current_state == WRITE_REG_ADDRESS) || (current_state == READ_REG_ADDRESS) ||(current_state == ALU_OP_A)||(current_state == WRITE_REG_ADDRESS))
        Address <= ADDRESS_REG;
end
 //next state Logic
always @(*)begin
case(current_state)
IDLE: begin 
    if(RX_D_VLD) begin
                case (RX_P_DATA)
                    CMD_AA:begin next_state = WRITE_REG_ADDRESS; end
                    CMD_BB:begin next_state = READ_REG_ADDRESS; end
                    CMD_CC:begin next_state = ALU_OP_A;end
                    CMD_DD:begin  next_state = ALU_OPCODE;end
                    default: next_state = IDLE;
                endcase
    end
    else begin
                next_state = IDLE;
    end
end
WRITE_REG_ADDRESS: begin
            if(RX_D_VLD) begin
                 next_state = WRITE_REG_DATA;
            end
            else begin
                next_state = WRITE_REG_ADDRESS;
            end
    end
WRITE_REG_DATA : begin
            if(RX_D_VLD) begin
                 next_state = IDLE;
            end
            else begin
                next_state = WRITE_REG_DATA;
            end
    end
READ_REG_ADDRESS: begin
            if(RX_D_VLD) begin
                 next_state = RD_REG_DATA;
            end
            else begin
                next_state = READ_REG_ADDRESS;
            end
    end
RD_REG_DATA: begin
            if (RdData_Valid) begin
                 next_state = IDLE;
            end
            else begin
                next_state = RD_REG_DATA;
            end
    end
ALU_OP_A: begin
            if(RX_D_VLD) begin
                 next_state = ALU_OP_B;
            end
            else begin
                next_state = ALU_OP_A;
            end
    end
ALU_OP_B: begin
            if(RX_D_VLD) begin
                 next_state = ALU_OPCODE;
            end
            else begin
                next_state = ALU_OP_B;
            end
    end
ALU_OPCODE : begin
            if(RX_D_VLD) begin
                 next_state = ALU_FUNC;
            end
            else begin
                next_state = ALU_OPCODE;
            end
end
ALU_FUNC: begin
    if (OUT_Valid) begin
       next_state = WR_IN_FIFO;
    end
    else begin
        next_state = ALU_FUNC;
    end
end
WR_IN_FIFO: begin
    if (!CTRL_FULL_IN && (second_frame)) begin
       next_state = IDLE;
    end
    else begin
        next_state = WR_IN_FIFO;
    end
end
default : begin next_state = IDLE; end
endcase
end
// output logic
always @(*)begin
second_frame_reg = 1'b0;
ADDRESS_REG = 4'b0000;
ALU_FUN = 4'b0000;
ALU_EN = 1'b0;
CLK_EN = 1'b0;
TX_D_VLD = 1'b0;
WrData = {data_width{1'b0}};
TX_P_DATA = {data_width{1'b0}};
WrEn = 1'b0;
RdEn = 1'b0;
case(current_state)
IDLE: begin
    if((RX_P_DATA == CMD_CC)) begin
        ADDRESS_REG = 4'b0000;
    end
    else begin
        ADDRESS_REG = 4'b1111;
    end
 end
WRITE_REG_ADDRESS: begin
                if (RX_D_VLD) begin
                    ADDRESS_REG = RX_P_DATA[3:0];
                end
                else begin
                    ADDRESS_REG = 4'b0000;
                end
 end
WRITE_REG_DATA: begin
                if (RX_D_VLD) begin
                    WrData = RX_P_DATA;
                    WrEn = 1'b1;
                end
                else begin
                    WrData = {data_width{1'b0}};
                    WrEn = 1'b0;
                end
    end
READ_REG_ADDRESS: begin 
             if(RX_D_VLD) begin
                ADDRESS_REG = RX_P_DATA[3:0];
            end
            else begin
               ADDRESS_REG = 4'b0000;
            end
end
RD_REG_DATA: begin
            if (RdData_Valid) begin
                RdEn = 1'b0;
                if(!CTRL_FULL_IN) begin
                    TX_P_DATA = RdData;
                    TX_D_VLD = 1'b1;
                end
                else begin
                 TX_P_DATA = {data_width{1'b0}};
                 TX_D_VLD = 1'b0;
                end
            end
            else begin
                RdEn = 1'b1;
            end
end
ALU_OP_A: begin 
            if (RX_D_VLD) begin
               WrData = RX_P_DATA;
               WrEn = 1'b1;
               ADDRESS_REG = 4'b0001;
            end
            else begin
              
               WrData = {data_width{1'b0}};
               WrEn = 1'b0;
            end
    end
ALU_OP_B: begin 
            if (RX_D_VLD) begin
               WrData = RX_P_DATA;
               WrEn = 1'b1;
               CLK_EN = 1'b1;
            end
            else begin
               ADDRESS_REG = 4'b0000;
               WrData = {data_width{1'b0}};
               WrEn = 1'b0;
            end
    end
ALU_OPCODE: begin
            CLK_EN = 1'b1;
            if (RX_D_VLD) begin
               ALU_FUN = RX_P_DATA[3:0];
               ALU_EN = 1'b1;
            end
            else begin
               ALU_FUN = 4'b0000;
               ALU_EN = 1'b0;
            end
    end
ALU_FUNC : begin
    if(OUT_Valid) begin
        ALU_EN = 1'b0;
        CLK_EN = 1'b0;
    end
    else begin 
        ALU_EN = 1'b1;
        CLK_EN = 1'b1;
    end
end
WR_IN_FIFO: begin
    if(!CTRL_FULL_IN && second_frame == 1'b0) begin
        TX_P_DATA=ALU_OUT[data_width-1 : 0];
        TX_D_VLD     = 1'b1;
        second_frame_reg = 1'b1;
    end
    else if(!CTRL_FULL_IN && second_frame == 1'b1) begin
        TX_P_DATA=ALU_OUT[(2*data_width)-1 : data_width];
        TX_D_VLD     = 1'b1;
    end
    else begin
        TX_D_VLD     = 1'b0;
        TX_P_DATA=0;
    end
end
endcase
end
endmodule
