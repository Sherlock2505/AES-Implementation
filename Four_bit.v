module Four_bit(A,B,Y,c);

input [3:0]A, B ;
wire [3:0]c_out;
output [3:0]Y,c;

FA m1(A[0],B[0],0,Y[0],c_out[0]);
FA m2(A[1],B[1],c_out[0],Y[1],c_out[1]);
FA m3(A[2],B[2],c_out[1],Y[2],c_out[2]);
FA m4(A[3],B[3],c_out[2],Y[3],c_out[3]);

assign c = c_out[3];

endmodule