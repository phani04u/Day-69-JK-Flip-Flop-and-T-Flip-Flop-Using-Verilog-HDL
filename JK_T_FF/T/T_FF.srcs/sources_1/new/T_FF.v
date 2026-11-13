`timescale 1ns / 1ps

module T_FF(
    input T,
    input CLK,
    input RST,
    output reg Q,
    output Q_bar
);

assign Q_bar = ~Q;

always @(posedge CLK) begin
    if (RST)
        Q <= 1'b0;
    else if (T == 0)
        Q <= Q;
    else
        Q <= ~Q;
end

endmodule