module PULSE_GEN(
    input  wire CLK,
    input  wire RST_n, // Active low reset
    input  wire LVL_SIG,
    output wire pulse_out
);

reg LVL_SIG_reg;

always @(posedge CLK or negedge RST_n) begin
    if (!RST_n) begin
        LVL_SIG_reg <= 1'b0;
    end
    else begin
        LVL_SIG_reg <= LVL_SIG;
    end
end

assign pulse_out = LVL_SIG & ~LVL_SIG_reg;

endmodule