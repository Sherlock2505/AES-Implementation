module multiply(A,B,S);

input [3:0]A;
input [3:0]B;
output [7:0]S;

wire [3:0]T1;

wire [3:0]T2;

wire [3:0]T3;

wire [3:0]T4;

wire [3:0]O1;

wire [3:0]O2;

wire [3:0]O3;

wire [2:0]C_OUT;

wire [3:0]I1;

wire [3:0]I2;

wire T;
assign T=A[0]&B[0];

assign S[0]=T;

assign T1[0]=A[1]&B[0];
assign T1[1]=A[2]&B[0];
assign T1[2]=A[3]&B[0];
assign T1[3]=0;

assign T2[0]=A[0]&B[1];
assign T2[1]=A[1]&B[1];
assign T2[2]=A[2]&B[1];
assign T2[3]=A[3]&B[1];

assign T3[0]=A[0]&B[2];
assign T3[1]=A[1]&B[2];
assign T3[2]=A[2]&B[2];
assign T3[3]=A[3]&B[2];

assign T4[0]=A[0]&B[3];
assign T4[1]=A[1]&B[3];
assign T4[2]=A[2]&B[3];
assign T4[3]=A[3]&B[3];

Four_bit M1(T1,T2,O1,C_OUT[0]);

assign I1[0]=O1[1];
assign I1[1]=O1[2];
assign I1[2]=O1[3];
assign I1[3]=C_OUT[0];

assign S[1]=O1[0];

Four_bit M2(T3,I1,O2,C_OUT[1]);

assign I2[0]=O2[1];
assign I2[1]=O2[2];
assign I2[2]=O2[3];
assign I2[3]=C_OUT[1];

assign S[2]=O2[0];

Four_bit M3(T4,I2,O3,C_OUT[2]);

assign S[3]=O3[0];
assign S[4]=O3[1];
assign S[5]=O3[2];
assign S[6]=O3[3];
assign S[7]=C_OUT[2];

endmodule