module sync_1ff_tb;

reg CLK;
reg D;
wire Q;
wire QB;

sync_1ff DUT (.CLK(CLK),.D(D),.Q(Q),.QB(QB));

initial
begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial
begin
  $dumpfile("sync_1ff.vcd");
  $dumpvars(0,sync_1ff_tb);

    D = 0;

    #12 D = 1;
    #15 D = 0;
    #13 D = 1;
    #20 D = 0;

    #30 $finish;
end

endmodule
