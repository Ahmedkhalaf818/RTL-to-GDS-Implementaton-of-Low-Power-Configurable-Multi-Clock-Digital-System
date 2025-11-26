module ALU #(parameter data_width=8, func_width= 4)(
input  wire                       CLK,
input  wire                       RST,
input  wire [data_width-1 : 0]    A,
input  wire [data_width-1 : 0]    B,
input  wire [func_width-1 : 0]    ALU_FUN,
input  wire                       Enable,
//output reg                        Carry_Flag,
//output reg                        Arith_flag,
//output reg                        Logic_flag,
//output reg                        CMP_flag,
//output reg                        Shift_flag,
output reg                        valid_data,
output reg [(2*data_width)-1 : 0] ALU_OUT
);
always @ (posedge CLK or negedge RST) begin
	if(!RST) begin
		valid_data <= 1'b0;
		ALU_OUT <= {2*data_width{1'b0}};
	end
	else begin
		if(Enable) begin
			valid_data <= 1'b1;
			case (ALU_FUN)
			    //4'b0000:begin {Carry_Flag,ALU_OUT} <= A + B; end
				4'b0000:begin ALU_OUT <= A + B; end
				4'b0001:begin ALU_OUT <= A - B; end
				4'b0010:begin ALU_OUT <= A * B; end
				4'b0011:begin ALU_OUT <= A / B; end
				4'b0100:begin ALU_OUT <= A & B; end
				4'b0101:begin ALU_OUT <= A | B; end
				4'b0110:begin ALU_OUT <= ~(A & B); end
				4'b0111:begin ALU_OUT <= ~(A | B); end
				4'b1000:begin ALU_OUT <= A ^ B; end
				4'b1001:begin ALU_OUT <= A ~^ B; end
				4'b1010:
					begin 
						if (A == B) begin
							ALU_OUT <= 16'd1;
						end
						else begin
						ALU_OUT <= 16'd0;
						end
	 				end
				4'b1011:
					begin 
						if (A > B) begin
							ALU_OUT <= 16'd2;
						end
						else begin
						ALU_OUT <= 16'd0;
						end
	 				end
				4'b1100:
					begin 
						if (A < B) begin
							ALU_OUT <= 16'd3;
						end
						else begin
							ALU_OUT <= 16'd0;
						end
	 				end
				4'b1101: begin ALU_OUT <= A >> 1;end
				4'b1110: begin ALU_OUT <= A << 1;end
				default: begin ALU_OUT <= 16'd0; end 
			endcase
		end
		else begin
			valid_data <= 1'b0;
			ALU_OUT <= {2*data_width{1'b0}};
		end
	end

end
/*
always @ (posedge CLK) begin
case (ALU_FUN)
		4'b0000:
		begin 
			Arith_flag <= 1'b1; 
			Logic_flag <= 1'b0;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b0;
		end
		4'b0001:
		begin 
			Arith_flag <= 1'b1; 
			Logic_flag <= 1'b0;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b0;
		end
		4'b0010:
		begin 
			Arith_flag <= 1'b1; 
			Logic_flag <= 1'b0;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b0;
		end
		4'b0011:
		begin 
			Arith_flag <= 1'b1; 
			Logic_flag <= 1'b0;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b0;
		end
		
		4'b0100:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b1;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b0;
		end
		4'b0101:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b1;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b0;
		end
		4'b0110:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b1;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b0;
		end
		4'b0111:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b1;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b0;
		end
		4'b1000:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b1;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b0;
		end
		4'b1001:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b1;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b0;
		end
		4'b1010:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b0;
			CMP_flag   <= 1'b1;
			Shift_flag <= 1'b0;
		end
		4'b1011:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b0;
			CMP_flag   <= 1'b1;
			Shift_flag <= 1'b0;
		end
		4'b1100:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b0;
			CMP_flag   <= 1'b1;
			Shift_flag <= 1'b0;
		end
		4'b1101:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b0;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b1;
		end
		4'b1110:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b0;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b1;
		end
		default:
		begin 
			Arith_flag <= 1'b0; 
			Logic_flag <= 1'b0;
			CMP_flag   <= 1'b0;
			Shift_flag <= 1'b0;
		end
	endcase
end
*/
endmodule
