module Add_Sub(A,B,s1,s0,Y);

input [7:0] A, B;
input s1,s0;

output [8:0]Y;

wire [8:0] c_out1 , c_out2;

FA_Xor FAx0(.a(A[0]),.b(B[0]),.c_in1(s0),.c_in2(s1),.Y(Y[0]),.c_out1(c_out1[0]),.c_out2(c_out2[0]),.s0(s0),.s1(s1));

FA_Xor FAx1(.a(A[1]),.b(B[1]),.c_in1(c_out1[0]),.c_in2(c_out2[0]),.Y(Y[1]),.c_out1(c_out1[1]),.c_out2(c_out2[1]),.s0(s0),.s1(s1));

FA_Xor FAx2(.a(A[2]),.b(B[2]),.c_in1(c_out1[1]),.c_in2(c_out2[1]),.Y(Y[2]),.c_out1(c_out1[2]),.c_out2(c_out2[2]),.s0(s0),.s1(s1));

FA_Xor FAx3(.a(A[3]),.b(B[3]),.c_in1(c_out1[2]),.c_in2(c_out2[2]),.Y(Y[3]),.c_out1(c_out1[3]),.c_out2(c_out2[3]),.s0(s0),.s1(s1));

FA_Xor FAx4(.a(A[4]),.b(B[4]),.c_in1(c_out1[3]),.c_in2(c_out2[3]),.Y(Y[4]),.c_out1(c_out1[4]),.c_out2(c_out2[4]),.s0(s0),.s1(s1));

FA_Xor FAx5(.a(A[5]),.b(B[5]),.c_in1(c_out1[4]),.c_in2(c_out2[4]),.Y(Y[5]),.c_out1(c_out1[5]),.c_out2(c_out2[5]),.s0(s0),.s1(s1));

FA_Xor FAx6(.a(A[6]),.b(B[6]),.c_in1(c_out1[5]),.c_in2(c_out2[5]),.Y(Y[6]),.c_out1(c_out1[6]),.c_out2(c_out2[6]),.s0(s0),.s1(s1));

FA_Xor FAx7(.a(A[7]),.b(B[7]),.c_in1(c_out1[6]),.c_in2(c_out2[6]),.Y(Y[7]),.c_out1(c_out1[7]),.c_out2(c_out2[7]),.s0(s0),.s1(s1));

FA_Xor FAx8(.a(A[7]),.b(B[7]),.c_in1(c_out1[7]),.c_in2(c_out2[7]),.Y(Y[8]),.c_out1(c_out1[8]),.c_out2(c_out2[8]),.s0(s0),.s1(s1));

endmodule