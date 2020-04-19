
module lastRound(rc,rin,keylastin,out);

input [3:0]rc;
input [127:0]rin;
input [127:0]keylastin;
output [127:0]out;

wire [127:0] w1,w2,keyout;

KeyGeneration t0(rc,keylastin,keyout);
bytessub t1(rin,w1);
rowshift t2(w1,w2);
assign out= keyout^w2;

endmodule