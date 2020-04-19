module mux8_by_2(Y,a,b,c,i);

input a,b,c;
input [7:0]i;
output Y;

wire[5:0]w;

m2by1 m1(w[0],a,i[0],i[1]);
m2by1 m2(w[1],a,i[2],i[3]);
m2by1 m3(w[2],a,i[4],i[5]);
m2by1 m4(w[3],a,i[6],i[7]);
m2by1 m5(w[4],b,w[0],w[1]);
m2by1 m6(w[5],b,w[2],w[3]);
m2by1 m7(Y,c,w[4],w[5]);

endmodule