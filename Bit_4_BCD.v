module Bit_4_BCD(a,b,c,d,x);

input a,b,c,d;

output [4:0]x;

assign x[0]=d;

assign x[1]=(a&b&(~c))+(~a)&c;

assign x[2]=(~a)&b+c&b;

assign x[3]=a&(~b)&(~c);

assign x[4]=a&b+a&c;

endmodule

