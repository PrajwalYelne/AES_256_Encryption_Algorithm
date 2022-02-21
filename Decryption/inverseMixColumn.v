module InverseMixColumn(a,mcl);
  input [127:0] a;
  output [127:0] mcl;
  
  MixColumnHelper j1(.rc(a[127:96]),.mcl(mcl[127:96]));
  MixColumnHelper j2(.rc(a[95:64]),.mcl(mcl[95:64]));
  MixColumnHelper j3(.rc(a[63:32]),.mcl(mcl[63:32]));
  MixColumnHelper j4(.rc(a[31:0]),.mcl(mcl[31:0]));
  
endmodule
