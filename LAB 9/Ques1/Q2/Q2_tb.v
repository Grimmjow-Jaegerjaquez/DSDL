`timescale 1ns/1ns
`include "Q2.v"

module Q2_tb();
reg x,y,cin;
wire cout,s;
Q2 Q_2(cin,x,y,s,cout);
initial begin
    $dumpfile("Q2_tb.vcd");
    $dumpvars(0,Q2_tb);
    x = 0; y = 0; cin = 0; #20;    
    x = 0; y = 0; cin = 1; #20;
    x = 0; y = 1; cin = 0; #20;
    x = 0; y = 1; cin = 1; #20;
    x = 1; y = 0; cin = 0; #20;
    x = 1; y = 0; cin = 1; #20;
    x = 1; y = 1; cin = 0; #20;
    x = 1; y = 1; cin = 1; #20;

    $display("Test Completed");
end
endmodule