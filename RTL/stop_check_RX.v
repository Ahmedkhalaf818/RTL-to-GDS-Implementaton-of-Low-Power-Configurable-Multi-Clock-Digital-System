module stop_check_RX (
input  wire  CLK_stop,
input  wire  RST_stop,
input  wire  stp_chk_en,
input  wire  sample_bit_par_chk,
//output reg   stp_err_chk,
output reg   Stop_Error
);
/*
reg stp_err_chk;
always @(*) begin
    if (stp_chk_en) begin
        stp_err_chk = ~sample_bit_par_chk;
    end
    else begin
        stp_err_chk = 1'b0;
    end
end
*/
always @(posedge CLK_stop or negedge RST_stop) begin
    if(!RST_stop)  begin
        Stop_Error <= 1'b0;
    end 
    else if(stp_chk_en) begin
        Stop_Error <=~sample_bit_par_chk;
    end/*
    else begin
        Stop_Error = 1'b0;
    end*/
end
endmodule
