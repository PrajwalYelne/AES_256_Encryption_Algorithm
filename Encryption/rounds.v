module rounds(clk,data,keyin,rndout);
  input clk;
  input [127:0]data;
  input [127:0]keyin;
  output [127:0]rndout;

  wire [127:0] sb,sr,mcl;
  
  subbytes t1(data,sb);
  shiftrow t2(sb,sr);
  mixcolumn t3(sr,mcl);
  assign rndout= keyin^mcl;

endmodule
