module keyExpansion(rc,key,keyout);
    
   input [3:0] rc;
   input [255:0]key;
   output [255:0] keyout;
   
   wire [31:0] w0,w1,w2,w3,w4,w5,w6,w7,tem,t1,t2;
