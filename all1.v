module all1(a,b,c,d,o);

input a,b,c,d;
output o;

assign o = (a&b&c)+(~a&b&c)+(a&b&d)+(a&d)+(c&d)+(~a&~c&~d);

endmodule