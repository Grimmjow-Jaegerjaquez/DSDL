module halfadd(input x,input y,output s,output c);

    assign s = x ^ y;
    assign c = x & y;
endmodule

module Q3(input x,input y,input z,output s,output c);

    wire ha1_s,ha1_c,ha2_s,ha2_c,out_s,out_c;

    halfadd h1(x,y,ha1_s,ha1_c);
    halfadd h2(z,ha1_s,ha2_s,ha2_c);

    assign s = ha2_s;
    assign c = ha1_c | ha2_c;

endmodule