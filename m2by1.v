module mux2x1(y,s,i0,i1);

input s,i0,i1;

output y;

assign y = (~s&i0) | (s&i1);

endmodule