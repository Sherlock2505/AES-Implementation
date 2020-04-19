module m2by1(Y,s,I[0],I[1]);

input s,[1:0]I;
output Y;

assign Y = (~s&I[0]) | (s&I[1]);

endmodule