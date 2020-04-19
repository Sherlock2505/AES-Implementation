module FA_Xor(a,b,c_in1,c_in2,Y,c_out1,c_out2,s0,s1);

input a,b,c_in1,c_in2,s0,s1;

output c_out1,c_out2,Y;
wire axs0,bxs1;


assign axs0 = s0^a;
assign bxs1 = s1^b;




wire w1 = axs0^bxs1^c_in1;
assign c_out1 = axs0&bxs1|bxs1&c_in1|c_in1&axs0;

assign Y = w1^c_in2;
assign c_out2 = w1&c_in2;



 
endmodule