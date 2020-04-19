module all(a,b,c);

input a,b;

output [5:0]c;

assign c[0]=a&b;

assign c[1]=a|b;

assign c[2]=~(a&b);

assign c[3]=~(a|b);

assign c[4]=a^b;

assign c[5]=~(a^b);

endmodule