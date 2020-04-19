module m2by1(Y,s,I[0],I[1]);

input s,I[0],I[1];
output Y;

assign Y = (~s&I[0]) + (s&I[1]);

endmodule