module mux16_by_2(Y,a,b,c,d,i);

input a,b,c,d;
input [15:0]i;
output Y;

wire[13:0]w;

m2by1 m1(w[0],d,i[0],i[1]);
m2by1 m2(w[1],d,i[2],i[3]);
m2by1 m3(w[2],d,i[4],i[5]);
m2by1 m4(w[3],d,i[6],i[7]);
m2by1 m5(w[4],d,i[8],i[9]);
m2by1 m6(w[5],d,i[10],i[11]);
m2by1 m7(w[6],d,i[12],i[13]);
m2by1 m8(w[7],d,i[14],i[15]);
m2by1 m9(w[8],c,w[0],w[1]);
m2by1 m10(w[9],c,w[2],w[3]);
m2by1 m11(w[10],c,w[4],w[5]);
m2by1 m12(w[11],c,w[6],w[7]);
m2by1 m13(w[12],b,w[8],w[9]);
m2by1 m14(w[13],b,w[10],w[11]);
m2by1 m15(Y,a,w[12],w[13]);

endmodule
