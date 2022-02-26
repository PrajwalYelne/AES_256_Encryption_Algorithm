module InverseSbox(a,c);
    
  input  [7:0] a;
  output [7:0] c;
    
  reg [7:0] c;
       
   always @(a)
    case (a)
        8'h00:c=8'h52;
        8'h01:c=8'h09;
        8'h02:c=8'h6a;
        8'h03:c=8'hd5;
        8'h04:c=8'h30;
        8'h05:c=8'h36;
        8'h06:c=8'ha5;
        8'h07:c=8'h38;
        8'h08:c=8'hbf;
        8'h09:c=8'h40;
        8'h0a:c=8'ha3;
        8'h0b:c=8'h9e;
        8'h0c:c=8'h81;
        8'h0d:c=8'hf3;
        8'h0e:c=8'hd7;
        8'h0f:c=8'hfb;
        8'h10:c=8'h7c;
        8'h11:c=8'he3;
        8'h12:c=8'h39;
        8'h13:c=8'h82;
        8'h14:c=8'h9b;
        8'h15:c=8'h2f;
        8'h16:c=8'hff;
        8'h17:c=8'h87;
        8'h18:c=8'h34;
        8'h19:c=8'h8e;
        8'h1a:c=8'h43;
        8'h1b:c=8'h44;
        8'h1c:c=8'hc4;
        8'h1d:c=8'hde;
        8'h1e:c=8'he9;
        8'h1f:c=8'hcb;
        8'h20:c=8'h54;
        8'h21:c=8'h7b;
        8'h22:c=8'h94;
        8'h23:c=8'h32;
        8'h24:c=8'ha6;
        8'h25:c=8'hc2;
        8'h26:c=8'h23;
        8'h27:c=8'h3d;
