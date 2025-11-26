module parity_calc #(parameter DATA_LENGTH =4'd8)(
    input  wire CLK,
    input  wire RST,
    input  wire [DATA_LENGTH-1:0] P_DATA,
    input  wire PAR_TYP,
    input  wire Data_Valid,
	input  wire PAR_EN,
	input  wire busy,
    output reg  par_bit
);
reg [DATA_LENGTH-1:0] par_data;

always @(posedge CLK or negedge RST) begin
		if(!RST)  begin
                	par_data <= 'd0;
            	end
		else if (Data_Valid && !busy)
                   par_data <= P_DATA;
end 
always  @(posedge CLK or negedge RST) begin
	if (!RST) begin
		par_bit <= 1'b0;
	end
	else if (PAR_EN) begin
		if (PAR_TYP == 1'b1)
    	 	par_bit<= ~^par_data;
		else 
			par_bit<= ^par_data;
	end
end
endmodule
