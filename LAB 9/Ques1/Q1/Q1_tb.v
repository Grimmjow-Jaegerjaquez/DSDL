`timescale 1ns/1ns
`include "Q1.v"

module Q1_tb();
reg x,y;
wire s,c;
Q1 Q_1(x,y,s,c);
initial begin
    $dumpfile("Q1_tb.vcd");
    $dumpvars(0,Q1_tb);
    x = 0 ;y = 0 ;#20;
    x = 0 ;y = 1 ;#20;
    x = 1 ;y = 0 ;#20;
    x = 1 ;y = 1 ;#20;

    $display("Test Complete");
end
endmodule