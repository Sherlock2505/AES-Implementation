
module rounds(rc,data,keyin,keyout,y);

input [3:0]rc;
input [127:0]data;
input [127:0]keyin;
output [127:0]keyout;
output [127:0]y;

wire [127:0] w1,w2,w3;

KeyGeneration m0(rc,keyin,keyout);  // generates key 
bytessub m1(data,w1);// converts data using substitution table
rowshift m2(w1,w2);
columnmix m3(w2,w3);
assign y=keyout^w3;

endmodule