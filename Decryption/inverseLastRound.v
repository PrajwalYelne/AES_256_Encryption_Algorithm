module InverseLastRound(clk,rin,keylastin,fout);
  
  input clk;
  input [127:0]rin;
  input [127:0]keylastin;
  output [127:0]fout;
  
  wire [127:0] sb,sr;

  InverseShiftRow t2(.sb(rin),.sr(sb));
  InverseSubByte t1(.data(sb),.sb(sr));
  assign fout= keylastin^sr;

endmodule

