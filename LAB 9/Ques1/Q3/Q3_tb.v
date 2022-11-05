`timescale 1ns/1ns
`include "Q3.v"

module Q3_tb();

reg x,y,z;
wire s,c;

Q3 Q_3(x,y,z,s,c);
initial begin
    $dumpfile("Q3_tb.vcd");
    $dumpvars(0,Q3_tb);
    x = 0; y = 0; z = 0; #20;
    x = 0; y = 0; z = 1; #20;
    x = 0; y = 1; z = 0; #20;
    x = 0; y = 1; z = 1; #20;
    x = 1; y = 0; z = 0; #20;
    x = 1; y = 0; z = 1; #20;
    x = 1; y = 1; z = 0; #20;
    x = 1; y = 1; z = 1; #20;
    $display("Test Completed");
end
endmodule