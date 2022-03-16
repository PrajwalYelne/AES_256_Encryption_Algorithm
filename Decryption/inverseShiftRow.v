module InverseShiftRow(sb,sr);

  input [127:0] sb;
  output [127:0] sr;
  
  assign         sr[127:120]= sb[127:120];  
  assign         sr[87:80]= sb[119:112];
  assign          sr[47:40]= sb[111:104];
  assign         sr[7:0]= sb[103:96];
