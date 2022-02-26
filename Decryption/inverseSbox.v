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
