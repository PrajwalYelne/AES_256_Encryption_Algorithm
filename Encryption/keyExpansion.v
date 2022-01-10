module keyExpansion(rc,key,keyout);
    
   input [3:0] rc;
   input [255:0]key;
   output [255:0] keyout;
   
   wire [31:0] w0,w1,w2,w3,w4,w5,w6,w7,tem,t1,t2;
    
       assign w0 = key[255:224];
       assign w1 = key[223:192];
       assign w2 = key[191:160];
       assign w3 = key[159:128];        
       assign w4 = key[127:96];
       assign w5 = key[95:64];
       assign w6 = key[63:32];
       assign w7 = key[31:0];
 
       assign keyout[255:224]= w0 ^ tem ^ rcon(rc);
       assign keyout[223:192] = w0 ^ tem ^ rcon(rc)^ w1;
       assign keyout[191:160] = w0 ^ tem ^ rcon(rc)^ w1 ^ w2;
       assign keyout[159:128]  = w0 ^ tem ^ rcon(rc)^ w1 ^ w2 ^ w3;
       
       assign t1 = w0 ^ tem ^ rcon(rc)^ w1 ^ w2 ^ w3;

       assign keyout[127:96]=t2^w4;
       assign keyout[95:64]=t2^w4^w5;
       assign keyout[63:32]=t2^w4^w5^w6;
       assign keyout[31:0]=t2^w4^w5^w6^w7;
