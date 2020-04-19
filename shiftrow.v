
module rowshift(x,y);

input [127:0] x;
output [127:0] y;

assign y[7:0] = x[39:32]; 
assign y[15:8] = x[79:72];
assign y[23:16] = x[119:112];
assign y[31:24] = x[31:24];
assign y[39:32] = x[71:64];
assign y[47:40] = x[111:104];
assign y[55:48] = x[23:16];
assign y[63:56] = x[63:56];
assign y[71:64] = x[103:96];
assign y[79:72] = x[15:8];
assign y[87:80] = x[55:48];
assign y[95:88] = x[95:88];
assign y[103:96] = x[7:0];
assign y[111:104] = x[47:40];
assign y[119:112] = x[87:80];
assign y[127:120] = x[127:120];

endmodule

