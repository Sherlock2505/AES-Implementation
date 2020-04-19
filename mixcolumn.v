
module columnmix(dataIn,dataOut);
input [127:0] dataIn;
output [127:0] dataOut;

mulRedux m1(dataIn[127:120],dataIn[119:112],dataIn[111:104],dataIn[103:96],dataOut[127:120]);
mulRedux m2(dataIn[119:112],dataIn[111:104],dataIn[103:96],dataIn[127:120],dataOut[119:112]);
mulRedux m3(dataIn[111:104],dataIn[103:96],dataIn[127:120],dataIn[119:112],dataOut[111:104]);
mulRedux m4(dataIn[103:96],dataIn[127:120],dataIn[119:112],dataIn[111:104],dataOut[103:96]);

mulRedux m5(dataIn[95:88],dataIn[87:80],dataIn[79:72],dataIn[71:64],dataOut[95:88]);
mulRedux m6(dataIn[87:80],dataIn[79:72],dataIn[71:64],dataIn[95:88],dataOut[87:80]);
mulRedux m7(dataIn[79:72],dataIn[71:64],dataIn[95:88],dataIn[87:80],dataOut[79:72]);
mulRedux m8(dataIn[71:64],dataIn[95:88],dataIn[87:80],dataIn[79:72],dataOut[71:64]);

mulRedux m9(dataIn[63:56],dataIn[55:48],dataIn[47:40],dataIn[39:32],dataOut[63:56]);
mulRedux m10(dataIn[55:48],dataIn[47:40],dataIn[39:32],dataIn[63:56],dataOut[55:48]);
mulRedux m11(dataIn[47:40],dataIn[39:32],dataIn[63:56],dataIn[55:48],dataOut[47:40]);
mulRedux m12(dataIn[39:32],dataIn[63:56],dataIn[55:48],dataIn[47:40],dataOut[39:32]);

mulRedux m13(dataIn[31:24],dataIn[23:16],dataIn[15:8],dataIn[7:0],dataOut[31:24]);
mulRedux m14(dataIn[23:16],dataIn[15:8],dataIn[7:0],dataIn[31:24],dataOut[23:16]);
mulRedux m15(dataIn[15:8],dataIn[7:0],dataIn[31:24],dataIn[23:16],dataOut[15:8]);
mulRedux m16(dataIn[7:0],dataIn[31:24],dataIn[23:16],dataIn[15:8],dataOut[7:0]);

endmodule