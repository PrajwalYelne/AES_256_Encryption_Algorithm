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
         8'h10:mul9=8'h90;
         8'h11:mul9=8'h99;
         8'h12:mul9=8'h82;
         8'h13:mul9=8'h8b;
         8'h14:mul9=8'hb4;
         8'h15:mul9=8'hbd;
         8'h16:mul9=8'ha6;
         8'h17:mul9=8'haf;
         8'h18:mul9=8'hd8;
         8'h19:mul9=8'hd1;
         8'h1a:mul9=8'hca;
         8'h1b:mul9=8'hc3;
         8'h1c:mul9=8'hfc;
         8'h1d:mul9=8'hf5;
         8'h1e:mul9=8'hee;
         8'h1f:mul9=8'he7;
         8'h20:mul9=8'h3b;
         8'h21:mul9=8'h32;
         8'h22:mul9=8'h29;
         8'h23:mul9=8'h20;
         8'h24:mul9=8'h1f;
         8'h25:mul9=8'h16;
         8'h26:mul9=8'h0d;
         8'h27:mul9=8'h04;
         8'h28:mul9=8'h73;
         8'h29:mul9=8'h7a;
         8'h2a:mul9=8'h61;
         8'h2b:mul9=8'h68;
         8'h2c:mul9=8'h57;
         8'h2d:mul9=8'h5e;
         8'h2e:mul9=8'h45;
         8'h2f:mul9=8'h4c;
         8'h30:mul9=8'hab;
         8'h31:mul9=8'ha2;
         8'h32:mul9=8'hb9;
         8'h33:mul9=8'hb0;
         8'h34:mul9=8'h8f;
         8'h35:mul9=8'h86;
         8'h36:mul9=8'h9d;
         8'h37:mul9=8'h94;
         8'h38:mul9=8'he3;
         8'h39:mul9=8'hea;
         8'h3a:mul9=8'hf1;
         8'h3b:mul9=8'hf8;
         8'h3c:mul9=8'hc7;
         8'h3d:mul9=8'hce;
         8'h3e:mul9=8'hd5;
         8'h3f:mul9=8'hdc;
         8'h40:mul9=8'h76;
         8'h41:mul9=8'h7f;
         8'h42:mul9=8'h64;
         8'h43:mul9=8'h6d;
         8'h44:mul9=8'h52;
         8'h45:mul9=8'h5b;
         8'h46:mul9=8'h40;
         8'h47:mul9=8'h49;
         8'h48:mul9=8'h3e;
         8'h49:mul9=8'h37;
         8'h4a:mul9=8'h2c;
         8'h4b:mul9=8'h25;
         8'h4c:mul9=8'h1a;
         8'h4d:mul9=8'h13;
         8'h4e:mul9=8'h08;
         8'h4f:mul9=8'h01;
         8'h50:mul9=8'he6;
         8'h51:mul9=8'hef;
         8'h52:mul9=8'hf4;
         8'h53:mul9=8'hfd;
         8'h54:mul9=8'hc2;
         8'h55:mul9=8'hcb;
         8'h56:mul9=8'hd0;
         8'h57:mul9=8'hd9;
         8'h58:mul9=8'hae;
         8'h59:mul9=8'ha7;
         8'h5a:mul9=8'hbc;
         8'h5b:mul9=8'hb5;
         8'h5c:mul9=8'h8a;
         8'h5d:mul9=8'h83;
         8'h5e:mul9=8'h98;
         8'h5f:mul9=8'h91;
         8'h60:mul9=8'h4d;
         8'h61:mul9=8'h44;
         8'h62:mul9=8'h5f;
         8'h63:mul9=8'h56;
         8'h64:mul9=8'h69;
         8'h65:mul9=8'h60;
         8'h66:mul9=8'h7b;
         8'h67:mul9=8'h72;
         8'h68:mul9=8'h05;
         8'h69:mul9=8'h0c;
         8'h6a:mul9=8'h17;
         8'h6b:mul9=8'h1e;
         8'h6c:mul9=8'h21;
         8'h6d:mul9=8'h28;
         8'h6e:mul9=8'h33;
         8'h6f:mul9=8'h3a;
         8'h70:mul9=8'hdd;
         8'h71:mul9=8'hd4;
         8'h72:mul9=8'hcf;
         8'h73:mul9=8'hc6;
         8'h74:mul9=8'hf9;
         8'h75:mul9=8'hf0;
         8'h76:mul9=8'heb;
         8'h77:mul9=8'he2;
         8'h78:mul9=8'h95;
         8'h79:mul9=8'h9c;
         8'h7a:mul9=8'h87;
         8'h7b:mul9=8'h8e;
         8'h7c:mul9=8'hb1;
         8'h7d:mul9=8'hb8;
         8'h7e:mul9=8'ha3;
         8'h7f:mul9=8'haa;
         8'h80:mul9=8'hec;
         8'h81:mul9=8'he5;
         8'h82:mul9=8'hfe;
         8'h83:mul9=8'hf7;
         8'h84:mul9=8'hc8;
         8'h85:mul9=8'hc1;
         8'h86:mul9=8'hda;
         8'h87:mul9=8'hd3;
         8'h88:mul9=8'ha4;
         8'h89:mul9=8'had;
         8'h8a:mul9=8'hb6;
         8'h8b:mul9=8'hbf;
         8'h8c:mul9=8'h80;
         8'h8d:mul9=8'h89;
         8'h8e:mul9=8'h92;
         8'h8f:mul9=8'h9b;
         8'h90:mul9=8'h7c;
         8'h91:mul9=8'h75;
         8'h92:mul9=8'h6e;
         8'h93:mul9=8'h67;
         8'h94:mul9=8'h58;
         8'h95:mul9=8'h51;
         8'h96:mul9=8'h4a;
         8'h97:mul9=8'h43;
         8'h98:mul9=8'h34;
         8'h99:mul9=8'h3d;
         8'h9a:mul9=8'h26;
         8'h9b:mul9=8'h2f;
         8'h9c:mul9=8'h10;
         8'h9d:mul9=8'h19;
         8'h9e:mul9=8'h02;
         8'h9f:mul9=8'h0b;
         8'ha0:mul9=8'hd7;
         8'ha1:mul9=8'hde;
         8'ha2:mul9=8'hc5;
         8'ha3:mul9=8'hcc;
         8'ha4:mul9=8'hf3;
         8'ha5:mul9=8'hfa;
         8'ha6:mul9=8'he1;
         8'ha7:mul9=8'he8;
         8'ha8:mul9=8'h9f;
         8'ha9:mul9=8'h96;
         8'haa:mul9=8'h8d;
         8'hab:mul9=8'h84;
         8'hac:mul9=8'hbb;
         8'had:mul9=8'hb2;
         8'hae:mul9=8'ha9;
         8'haf:mul9=8'ha0;
         8'hb0:mul9=8'h47;
         8'hb1:mul9=8'h4e;
         8'hb2:mul9=8'h55;
         8'hb3:mul9=8'h5c;
         8'hb4:mul9=8'h63;
         8'hb5:mul9=8'h6a;
         8'hb6:mul9=8'h71;
         8'hb7:mul9=8'h78;
         8'hb8:mul9=8'h0f;
         8'hb9:mul9=8'h06;
         8'hba:mul9=8'h1d;
         8'hbb:mul9=8'h14;
         8'hbc:mul9=8'h2b;
         8'hbd:mul9=8'h22;
         8'hbe:mul9=8'h39;
         8'hbf:mul9=8'h30;
         8'hc0:mul9=8'h9a;
         8'hc1:mul9=8'h93;
         8'hc2:mul9=8'h88;
         8'hc3:mul9=8'h81;
         8'hc4:mul9=8'hbe;
         8'hc5:mul9=8'hb7;
         8'hc6:mul9=8'hac;
         8'hc7:mul9=8'ha5;
         8'hc8:mul9=8'hd2;
         8'hc9:mul9=8'hdb;
         8'hca:mul9=8'hc0;
         8'hcb:mul9=8'hc9;
         8'hcc:mul9=8'hf6;
         8'hcd:mul9=8'hff;
         8'hce:mul9=8'he4;
         8'hcf:mul9=8'hed;
         8'hd0:mul9=8'h0a;
         8'hd1:mul9=8'h03;
         8'hd2:mul9=8'h18;
         8'hd3:mul9=8'h11;
         8'hd4:mul9=8'h2e;
         8'hd5:mul9=8'h27;
         8'hd6:mul9=8'h3c;
         8'hd7:mul9=8'h35;
         8'hd8:mul9=8'h42;
         8'hd9:mul9=8'h4b;
