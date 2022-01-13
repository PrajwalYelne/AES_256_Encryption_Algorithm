
module mixcolumn(a,mcl);
input [127:0] a;
output [127:0] mcl;

assign mcl[127:120]= mixcolumn32 (a[127:120],a[119:112],a[111:104],a[103:96]);
assign mcl[119:112]= mixcolumn32 (a[119:112],a[111:104],a[103:96],a[127:120]);
assign mcl[111:104]= mixcolumn32 (a[111:104],a[103:96],a[127:120],a[119:112]);
assign mcl[103:96]= mixcolumn32 (a[103:96],a[127:120],a[119:112],a[111:104]);

assign mcl[95:88]= mixcolumn32 (a[95:88],a[87:80],a[79:72],a[71:64]);
assign mcl[87:80]= mixcolumn32 (a[87:80],a[79:72],a[71:64],a[95:88]);
assign mcl[79:72]= mixcolumn32 (a[79:72],a[71:64],a[95:88],a[87:80]);
assign mcl[71:64]= mixcolumn32 (a[71:64],a[95:88],a[87:80],a[79:72]);

assign mcl[63:56]= mixcolumn32 (a[63:56],a[55:48],a[47:40],a[39:32]);
assign mcl[55:48]= mixcolumn32 (a[55:48],a[47:40],a[39:32],a[63:56]);
assign mcl[47:40]= mixcolumn32 (a[47:40],a[39:32],a[63:56],a[55:48]);
assign mcl[39:32]= mixcolumn32 (a[39:32],a[63:56],a[55:48],a[47:40]);
  
assign mcl[31:24]= mixcolumn32 (a[31:24],a[23:16],a[15:8],a[7:0]);
assign mcl[23:16]= mixcolumn32 (a[23:16],a[15:8],a[7:0],a[31:24]);
assign mcl[15:8]= mixcolumn32 (a[15:8],a[7:0],a[31:24],a[23:16]);
assign mcl[7:0]= mixcolumn32 (a[7:0],a[31:24],a[23:16],a[15:8]);
