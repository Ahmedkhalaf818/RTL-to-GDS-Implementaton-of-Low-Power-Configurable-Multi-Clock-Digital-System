module Register_File #(parameter reg_WIDTH = 8, ADDR = 4, Depth = 16) (
    input  wire                   CLK,
    input  wire                   RST,
    input  wire                   WrEn,
    input  wire                   RdEn,
    input  wire [ADDR-1 : 0]      Address,
    input  wire [reg_WIDTH-1 : 0] WrData,
    output reg  [reg_WIDTH-1 : 0] RdData,
    output reg                    RdData_valid,
    output wire [reg_WIDTH-1 : 0] REG0,
    output wire [reg_WIDTH-1 : 0] REG1,
    output wire [reg_WIDTH-1 : 0] REG2, 
    output wire [reg_WIDTH-1 : 0] REG3
);
// reg datawidth => name => depth

reg [reg_WIDTH-1 : 0] regfile [Depth-1 : 0];
integer I;

    always @ (posedge CLK or negedge RST) 
	  begin
        if (!RST)
            begin
                RdData <= 'd0;
                RdData_valid <= 1'b0;
                for (I = 0; I < Depth; I = I + 1) begin
                    if (I == 2) begin
                        regfile[I] <= 'b1000_0001; // prescale[7:2] , parity_en , parity_type
                    end
                    else if (I == 3) begin
                        regfile[I] <= 'b0010_0000; // div_ratio
                    end
                    else begin
                        regfile[I] <= 'd0;
                    end
                end 
            end
        else if (WrEn && (!RdEn)) begin
             regfile[Address] <= WrData;
        end
        else if (RdEn && (!WrEn)) begin
                    RdData <= regfile[Address];
                    RdData_valid <= 1'b1;
        end
        else begin
            RdData_valid <= 1'b0;
        end
      end
assign REG0 = regfile[0];
assign REG1 = regfile[1];
assign REG2 = regfile[2];
assign REG3 = regfile[3];

endmodule