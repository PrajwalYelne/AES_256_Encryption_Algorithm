module InverseRounds(clk,data,keyin,rndout);
  input clk;
  input [127:0]data;
  input [127:0]keyin;
  output [127:0]rndout;

  wire [127:0] sb,sr,mcl;
  
  InverseShiftRow t2(.sb(data),.sr(sb));
  InverseSubByte t1(.data(sb),.sb(sr));
  assign mcl = sr^ keyin;
  InverseMixColumn t3(.a(mcl),.mcl(rndout));

endmodule
