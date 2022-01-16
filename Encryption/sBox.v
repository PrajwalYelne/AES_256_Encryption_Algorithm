module sbox(a,c);
    
input  [7:0] a;
output [7:0] c;
    
reg [7:0] c;
    
    always @(a)
    case (a)
       	   8'h00: c=8'h63;
	   8'h01: c=8'h7c;
	   8'h02: c=8'h77;
      	   8'h03: c=8'h7b;
	   8'h04: c=8'hf2;
	   8'h05: c=8'h6b;
	   8'h06: c=8'h6f;
	   8'h07: c=8'hc5;
	   8'h08: c=8'h30;
	   8'h09: c=8'h01;
	   8'h0a: c=8'h67;
	   8'h0b: c=8'h2b;
	   8'h0c: c=8'hfe;
	   8'h0d: c=8'hd7;
	   8'h0e: c=8'hab;
	   8'h0f: c=8'h76;
	   8'h10: c=8'hca; 
