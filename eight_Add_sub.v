module eight_Add_sub(a,b,p);

input [7:0] a, b;
output [15:0] p;

wire [7:0] w1, w2;

assign w1[0] = a[0]^a[7];
assign w1[1] = a[1]^a[7];
assign w1[2] = a[2]^a[7];
assign w1[3] = a[3]^a[7];
assign w1[4] = a[4]^a[7];
assign w1[5] = a[5]^a[7];
assign w1[6] = a[6]^a[7];
assign w1[7] = a[7]^a[7];

wire c;
assign c=a[7]^b[7];

assign w2[0] = b[0]^b[7];
assign w2[1] = b[1]^b[7];
assign w2[2] = b[2]^b[7];
assign w2[3] = b[3]^b[7];
assign w2[4] = b[4]^b[7];
assign w2[5] = b[5]^b[7];
assign w2[6] = b[6]^b[7];
assign w2[7] = b[7]^b[7];

wire [7:0] w3, w4;
wire [8:0] w5, w6;

assign w3[0] = a[7];
assign w3[1] = 0;
assign w3[2] = 0;
assign w3[3] = 0;
assign w3[4] = 0;
assign w3[5] = 0;
assign w3[6] = 0;
assign w3[7] = 0;

assign w4[0] = b[7];
assign w4[1] = 0;
assign w4[2] = 0;
assign w4[3] = 0;
assign w4[4] = 0;
assign w4[5] = 0;
assign w4[6] = 0;
assign w4[7] = 0;

Add_Sub as1(w1,w3,0,0,w5);
Add_Sub as2(w2,w4,0,0,w6);

wire [3:0] y1,y2,y3,y4;

assign y1[0]=w5[0];
assign y1[1]=w5[1];
assign y1[2]=w5[2];
assign y1[3]=w5[3];

assign y2[0]=w5[4];
assign y2[1]=w5[5];
assign y2[2]=w5[6];
assign y2[3]=w5[7];

assign y3[0]=w6[0];
assign y3[1]=w6[1];
assign y3[2]=w6[2];
assign y3[3]=w6[3];

assign y4[0]=w6[4];
assign y4[1]=w6[5];
assign y4[2]=w6[6];
assign y4[3]=w6[7];

wire [8:0] o1,o2,o3,o4;

multiply m1(y3,y1,o1);

multiply m2(y3,y2,o2);

multiply m3(y4,y1,o3);

multiply m4(y4,y2,o4);


assign p[0]=o1[0];
assign p[1]=o1[1];
assign p[2]=o1[2];
assign p[3]=o1[3];

wire [7:0] t1,t2,t3,t4;

assign t1[0]=o1[4];
assign t1[1]=o1[5];
assign t1[2]=o1[6];
assign t1[3]=o1[7];
assign t1[4]=0;
assign t1[5]=0;
assign t1[6]=0;
assign t1[7]=0;

wire [8:0] p1,p2,p3;
Add_Sub as3(o2,o3,0,0,p1);

assign t2[0]=p1[0];
assign t2[1]=p1[1];
assign t2[2]=p1[2];
assign t2[3]=p1[3];
assign t2[4]=p1[4];
assign t2[5]=p1[5];
assign t2[6]=p1[6];
assign t2[7]=p1[7];

Add_Sub as4(t1,t2,0,0,p2);

assign p[4]=p2[0];
assign p[5]=p2[1];
assign p[6]=p2[2];
assign p[7]=p2[3];

assign t3[0]=p2[4];
assign t3[1]=p2[5];
assign t3[2]=p2[6];
assign t3[3]=p2[7];
assign t3[4]=p1[8];
assign t3[5]=0;
assign t3[6]=0;
assign t3[7]=0;


Add_Sub as5(t3,o4,0,0,p3);

assign p[8]=p3[0];
assign p[9]=p3[1];
assign p[10]=p3[2];
assign p[11]=p3[3];
assign p[12]=p3[4];
assign p[13]=p3[5];
assign p[14]=p3[6];
assign p[15]=p3[7];

endmodule 