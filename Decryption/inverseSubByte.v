module InverseSubByte(data,sb);

  input [127:0] data;
  output [127:0] sb;
  
     InverseSbox q0( .a(data[127:120]),.c(sb[127:120]) );
     InverseSbox q1( .a(data[119:112]),.c(sb[119:112]) );
     InverseSbox q2( .a(data[111:104]),.c(sb[111:104]) );
     InverseSbox q3( .a(data[103:96]),.c(sb[103:96]) );
     
     InverseSbox q4( .a(data[95:88]),.c(sb[95:88]) );
     InverseSbox q5( .a(data[87:80]),.c(sb[87:80]) );
     InverseSbox q6( .a(data[79:72]),.c(sb[79:72]) );
     InverseSbox q7( .a(data[71:64]),.c(sb[71:64]) );
  
     InverseSbox q8( .a(data[63:56]),.c(sb[63:56]) );
     InverseSbox q9( .a(data[55:48]),.c(sb[55:48]) );
     InverseSbox q10(.a(data[47:40]),.c(sb[47:40]) );
     InverseSbox q11(.a(data[39:32]),.c(sb[39:32]) );
  
     InverseSbox q12(.a(data[31:24]),.c(sb[31:24]) );
     InverseSbox q13(.a(data[23:16]),.c(sb[23:16]) );
     InverseSbox q14(.a(data[15:8]),.c(sb[15:8]) );
     InverseSbox q16(.a(data[7:0]),.c(sb[7:0]) );

endmodule
