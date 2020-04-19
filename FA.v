module FA(a,b,c,sum,carry);

input a,b,c;
output sum , carry;

wire w0;

assign w0 = a^b;
assign sum = w0^c;

assign carry = (a&b)|(b&c)|(c&a);

endmodule