module MixColumnHelper(rc,mcl);
  input [31:0] rc;
  output [31:0] mcl;
  
      assign mcl[31:24] =  mule(rc[31:24])^mulb(rc[23:16])^muld(rc[15:8])^mul9(rc[7:0]);
      assign mcl[23:16] =  mul9(rc[31:24])^mule(rc[23:16])^mulb(rc[15:8])^muld(rc[7:0]);
      assign mcl[15:8] =  muld(rc[31:24])^mul9(rc[23:16])^mule(rc[15:8])^mulb(rc[7:0]);
      assign mcl[7:0] =  mulb(rc[31:24])^muld(rc[23:16])^mul9(rc[15:8])^mule(rc[7:0]);
  
  function [7:0]	mul9;
      input	[7:0]	rc;
      case(rc)	
         8'h00:mul9=8'h00;
         8'h01:mul9=8'h09;
         8'h02:mul9=8'h12;
         8'h03:mul9=8'h1b;
         8'h04:mul9=8'h24;
         8'h05:mul9=8'h2d;
         8'h06:mul9=8'h36;
         8'h07:mul9=8'h3f;
         8'h08:mul9=8'h48;
         8'h09:mul9=8'h41;
         8'h0a:mul9=8'h5a;
         8'h0b:mul9=8'h53;
         8'h0c:mul9=8'h6c;
         8'h0d:mul9=8'h65;
         8'h0e:mul9=8'h7e;
         8'h0f:mul9=8'h77;
