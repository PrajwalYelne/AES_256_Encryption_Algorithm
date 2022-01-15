module rounndlast(clk,rin,keylastin,fout);
  input clk;
  input [127:0]rin;
  input [127:0]keylastin;
  output [127:0]fout;

  wire [127:0] sb,sr;
  subbytes t1(rin,sb);
  shiftrow t2(sb,sr);
  assign fout= keylastin^sr;

endmodule
