
module bytessub(x,y);

input [127:0] x;
output [127:0] y;

substitutionbox s0(.in(x[7:0]),.out(y[7:0]) );
substitutionbox s1(.in(x[15:8]),.out(y[15:8]) );
substitutionbox s2(.in(x[23:16]),.out(y[23:16]) );	  
substitutionbox s3(.in(x[31:24]),.out(y[31:24]) );
substitutionbox s4(.in(x[39:32]),.out(y[39:32]) );
substitutionbox s5(.in(x[47:40]),.out(y[47:40]) );
substitutionbox s6(.in(x[55:48]),.out(y[55:48]) );
substitutionbox s7(.in(x[63:56]),.out(y[63:56]) );
substitutionbox s8(.in(x[71:64]),.out(y[71:64]) );
substitutionbox s9(.in(x[79:72]),.out(y[79:72]) );
substitutionbox s10(.in(x[87:80]),.out(y[87:80]) );
substitutionbox s11(.in(x[95:88]),.out(y[95:88]) );
substitutionbox s12(.in(x[103:96]),.out(y[103:96]) );
substitutionbox s13(.in(x[111:104]),.out(y[111:104]) );
substitutionbox s14(.in(x[119:112]),.out(y[119:112]) );
substitutionbox s15(.in(x[127:120]),.out(y[127:120]) );

endmodule
