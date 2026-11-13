`timescale 1ns / 1ps

module T_FF_TB;

reg T, CLK, RST;
wire Q, Q_bar;

T_FF uut(
    .CLK(CLK),
    .T(T),
    .RST(RST),
    .Q(Q),
    .Q_bar(Q_bar)
);

integer i;

always #5 CLK = ~CLK;

initial begin
    CLK = 0;
    T = 0;
    RST = 1;

    #10;
    RST = 0;

    for (i = 0; i < 2; i = i + 1) begin
        T = i;
        #20;
    end

    $finish;
end

endmodule