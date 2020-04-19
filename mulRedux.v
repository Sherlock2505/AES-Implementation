module mulRedux(B1,B2,B3,B4,out);
input [7:0] B1,B2,B3,B4;
output [7:0] out;

assign out[7]=B1[6] ^ B2[6] ^ B2[7] ^ B3[7] ^ B4[7];
assign out[6]=B1[5] ^ B2[5] ^ B2[6] ^ B3[6] ^ B4[6];
assign out[5]=B1[4] ^ B2[4] ^ B2[5] ^ B3[5] ^ B4[5];
assign out[4]=B1[3] ^ B1[7] ^ B2[3] ^ B2[4] ^ B2[7] ^ B3[4] ^ B4[4];
assign out[3]=B1[2] ^ B1[7] ^ B2[2] ^ B2[3] ^ B2[7] ^ B3[3] ^ B4[3];
assign out[2]=B1[1] ^ B2[1] ^ B2[2] ^ B3[2] ^ B4[2];
assign out[1]=B1[0] ^ B1[7] ^ B2[0] ^ B2[1] ^ B2[7] ^ B3[1] ^ B4[1];
assign out[0]=B1[7] ^ B2[7] ^ B2[0] ^ B3[0] ^ B4[0];

endmodule