
module AES_TB();

reg [127:0]key;
reg [127:0]datain;
wire [127:0]dataout;


aesencryption a(.datain(datain),.key(key),.dataout(dataout));

initial
begin

#100
datain = 128'h3243F6A8885A308D313198A2E0370734;
key = 128'h2B7E151628AED2A6ABF7158809CF4F3C;


if(dataout!=128'h3925841D02DC09FBDC118597196A0B32) 
$display("error!");
else  
$display("verified");

#100
datain = 128'h12FADE2DE38EC36FBB85DB26A345ADF9;
key = 128'h8F5D151628AED2A6ABF7158809CF23F8;


if(dataout==128'h08380A1721934AA459619C04FCCED698) 
$display("error!");

else
$display("verified");

end 
endmodule