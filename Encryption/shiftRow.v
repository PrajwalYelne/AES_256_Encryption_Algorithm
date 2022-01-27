module shiftrow(sb,sr);

    input [127:0] sb;
    output [127:0] sr;

    assign         sr[127:120] = sb[127:120];  
    assign         sr[119:112] = sb[87:80];
    assign         sr[111:104] = sb[47:40];
    assign         sr[103:96] = sb[7:0];
  
    
