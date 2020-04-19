
module KeyGeneration(rc,keyIn,keyout);
    
   input [3:0] rc;
   input [127:0]keyIn;
   output [127:0] keyout;
   reg [32:0]t;

   wire [31:0] w0,w1,w2,w3,tem,gFunction;
         
               
       assign w0 = keyIn[127:96];
       assign w1 = keyIn[95:64];
       assign w2 = keyIn[63:32];
       assign w3 = keyIn[31:0];
       
       substitutionbox a1(.in(w3[23:16]),.out(tem[31:24]));
       substitutionbox a2(.in(w3[15:8]),.out(tem[23:16]));
       substitutionbox a3(.in(w3[7:0]),.out(tem[15:8]));
       substitutionbox a4(.in(w3[31:24]),.out(tem[7:0]));
	
	
	always@*
	begin
	case(rc)	
         4'h0: t=32'h01_00_00_00;
         4'h1: t=32'h02_00_00_00;
         4'h2: t=32'h04_00_00_00;
         4'h3: t=32'h08_00_00_00;
         4'h4: t=32'h10_00_00_00;
         4'h5: t=32'h20_00_00_00;
         4'h6: t=32'h40_00_00_00;
         4'h7: t=32'h80_00_00_00;
         4'h8: t=32'h1b_00_00_00;
         4'h9: t=32'h36_00_00_00;
         default: t=32'h00_00_00_00;
        endcase
	end
       
	assign gFunction = tem^t; 
       
       assign keyout[127:96]= w0 ^ gFunction ;
       assign keyout[95:64] = w0 ^ gFunction ^ w1;
       assign keyout[63:32] = w0 ^ gFunction ^ w1 ^ w2;
       assign keyout[31:0]  = w0 ^ gFunction ^ w1 ^ w2 ^ w3;


endmodule