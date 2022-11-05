`timescale 1ns/1ns
`include "Q4.v"

module Q4_tb();

reg cin;
reg [3:0]x,y;
wire cout; wire [3:0]s;


Q4 Q_4(cin,x,y,s,cout);
initial begin
    $dumpfile("Q4_tb.vcd");
    $dumpvars(0,Q4_tb);
    cin=1'b0;
    x[0]=1'b1; x[1]=1'b0; x[2]=1'b1; x[3]=1'b0; 
    y[0]=1'b1; y[1]=1'b0; y[2]=1'b1; y[3]=1'b0; 
    #20;    
    cin=1'b0;
    x[0]=1'b1; x[1]=1'b1; x[2]=1'b1; x[3]=1'b0; 
    y[0]=1'b0; y[1]=1'b0; y[2]=1'b0; y[3]=1'b1;
    #20;
    $display("Test complete");
end
endmodule