module InverseShiftRow(sb,sr);

  input [127:0] sb;
  output [127:0] sr;
  
  assign         sr[127:120]= sb[127:120];  
  assign         sr[87:80]= sb[119:112];
  assign          sr[47:40]= sb[111:104];
  assign         sr[7:0]= sb[103:96];
  
  assign          sr[95:88]=sb[95:88];
  assign          sr[55:48]=sb[87:80];
  assign           sr[15:8]=sb[79:72];
  assign          sr[103:96]=sb[71:64];
