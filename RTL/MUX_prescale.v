module MUX_prescale #(parameter div_ratio_width = 8)(
    input wire [5:0] sel,
    input wire [div_ratio_width-1:0] in0,
    input wire [div_ratio_width-1:0] in1,
    input wire [div_ratio_width-1:0] in2,
    input wire [div_ratio_width-1:0] in3,
    output reg [div_ratio_width-1:0] out
   
);
    
    always @(*) begin
        case (sel)
            6'd32: out = in0;
            6'd16: out = in1;
            6'd8:  out = in2;
            6'd4:  out = in3;
            default: out = in0;
        endcase
    end
    
endmodule