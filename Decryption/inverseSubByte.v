module InverseSubByte(data,sb);

  input [127:0] data;
  output [127:0] sb;
  
     InverseSbox q0( .a(data[127:120]),.c(sb[127:120]) );
     InverseSbox q1( .a(data[119:112]),.c(sb[119:112]) );
     InverseSbox q2( .a(data[111:104]),.c(sb[111:104]) );
     InverseSbox q3( .a(data[103:96]),.c(sb[103:96]) );
     
     
