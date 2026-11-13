`timescale 1ns / 1ps
module JK_FF_TB;
reg J, K, CLK;
wire Q, Q_BAR;
JK_FF UUT(
    .J(J),
    .K(K),
    .CLK(CLK),
    .Q(Q),
    .Q_BAR(Q_BAR)
);
integer i;
always #5 CLK = ~CLK;
initial begin
    CLK = 1'b0;
    J = 1'b0;
    K = 1'b0;

    $display("TIME   J   K   Q   Q_BAR");

    for (i = 0; i < 4; i = i + 1) begin
        {J, K} = i;
        #10;

        $display("%0t     %b   %b   %b   %b",
                  $time, J, K, Q, Q_BAR);
    end

    $finish;

end

endmodule