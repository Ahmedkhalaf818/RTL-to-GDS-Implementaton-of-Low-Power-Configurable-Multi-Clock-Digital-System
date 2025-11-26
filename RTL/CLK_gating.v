module CLK_gating (
    input  wire CLK,
    input  wire CLK_EN,
    output wire  Gated_CLK
);

reg latch;

always @(CLK or CLK_EN) begin
    if (!CLK)
        latch = CLK_EN;
end 
assign Gated_CLK = latch & CLK;

endmodule