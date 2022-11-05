module Q2(input cin,input x,input y,output s,output cout);
    assign s = x ^ y ^ cin;
    assign cout = (x & y) | (x & cin) | (y & cin);
endmodule