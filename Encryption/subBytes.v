module subbytes(data,sb);

    input [127:0] data;
    output [127:0] sb;

         sbox q0( .a(data[127:120]),.c(sb[127:120]) );
         sbox q1( .a(data[119:112]),.c(sb[119:112]) );
         sbox q2( .a(data[111:104]),.c(sb[111:104]) );
         sbox q3( .a(data[103:96]),.c(sb[103:96]) );
  
         
