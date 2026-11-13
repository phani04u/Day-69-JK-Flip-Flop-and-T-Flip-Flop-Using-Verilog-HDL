`timescale 1ns / 1ps
module JK_FF(
    input J,
    input K,
    input CLK,
    output reg  Q,
    output  Q_BAR
    );
    assign Q_BAR = ~Q;
    always  @(posedge CLK) begin 
       if( J == 0 && K == 0) begin 
           Q <= Q;
         end
       else if (J == 0 && K == 1) begin 
            Q <= 1'b0;
         end
       else if (J == 1 && K == 0) begin 
             Q <= 1'b1;
          end
      else begin 
          Q <= ~Q;
          end
     end
endmodule
