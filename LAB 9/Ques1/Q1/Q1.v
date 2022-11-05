module Q1(input x,input y,output s,output c);

    assign s = x ^ y;
    assign c = x & y;
endmodule