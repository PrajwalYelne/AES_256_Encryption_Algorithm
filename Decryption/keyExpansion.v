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
    
       sbox a1(.a(w7[23:16]),.c(tem[31:24]));
       sbox a2(.a(w7[15:8]),.c(tem[23:16]));
       sbox a3(.a(w7[7:0]),.c(tem[15:8]));
       sbox a4(.a(w7[31:24]),.c(tem[7:0]));
    
       sbox s1(.a(t1[31:24]),.c(t2[31:24]));
       sbox s2(.a(t1[23:16]),.c(t2[23:16]));
       sbox s3(.a(t1[15:8]),.c(t2[15:8]));
       sbox s4(.a(t1[7:0]),.c(t2[7:0]));
