

module TB_multiply();

reg [3:0]A, B;
wire [7:0]s;

integer seed1, seed2;
integer i;

multiply m1(A,B,s);

initial 
begin

for(i=0;i<10;i=i+1)
begin

#10 

A = $random(seed1)%16;

B = $random(seed2)%16;

$display("A = %d B = %d and Ouptut=%d ",A,B,s);
end
$stop();
end


endmodule