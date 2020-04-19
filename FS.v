module FS(a,b,c,diff,borrow);

input a,b,c;
output diff,borrow;

wire w0;

assign w0 = a^b;
assign diff = w0^c;

assign borrow = (~a&c)+(~a&b)+(b&c);

endmodule