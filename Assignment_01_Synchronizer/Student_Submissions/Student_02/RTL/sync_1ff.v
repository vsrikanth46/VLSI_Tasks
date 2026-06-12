module sync_1ff (
    input  wire CLK,
    input  wire D,
    output reg  Q,
    output wire QB
);

always @(posedge CLK)
begin
    Q <= D;
end

assign QB = ~Q;

endmodule
