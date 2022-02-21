module InverseRounds(clk,data,keyin,rndout);
  input clk;
  input [127:0]data;
  input [127:0]keyin;
  output [127:0]rndout;

  wire [127:0] sb,sr,mcl;
