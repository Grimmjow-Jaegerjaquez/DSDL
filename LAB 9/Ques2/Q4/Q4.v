module fulladd(input cin,input x,input y,output s,output cout);
    assign s = x ^ y ^ cin;
    assign cout = (x & y) | (x & cin) | (y & cin);
endmodule

module Q4(input cin,input [3:0]x,input [3:0]y,output [3:0]s,output cout);
    wire [2:0]c;
    
    fulladd a1(cin,x[0],y[0],s[0],c[0]);
    fulladd a2(c[0],x[1],y[1],s[1],c[1]);
    fulladd a3(c[1],x[2],y[3],s[2],c[2]);
    fulladd a4(c[2],x[3],y[3],s[3],cout);
endmodule