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
         8'hda:mul9=8'h50;
         8'hdb:mul9=8'h59;
         8'hdc:mul9=8'h66;
         8'hdd:mul9=8'h6f;
         8'hde:mul9=8'h74;
         8'hdf:mul9=8'h7d;
         8'he0:mul9=8'ha1;
         8'he1:mul9=8'ha8;
         8'he2:mul9=8'hb3;
         8'he3:mul9=8'hba;
         8'he4:mul9=8'h85;
         8'he5:mul9=8'h8c;
         8'he6:mul9=8'h97;
         8'he7:mul9=8'h9e;
         8'he8:mul9=8'he9;
         8'he9:mul9=8'he0;
         8'hea:mul9=8'hfb;
         8'heb:mul9=8'hf2;
         8'hec:mul9=8'hcd;
         8'hed:mul9=8'hc4;
         8'hee:mul9=8'hdf;
         8'hef:mul9=8'hd6;
         8'hf0:mul9=8'h31;
         8'hf1:mul9=8'h38;
         8'hf2:mul9=8'h23;
         8'hf3:mul9=8'h2a;
         8'hf4:mul9=8'h15;
         8'hf5:mul9=8'h1c;
         8'hf6:mul9=8'h07;
         8'hf7:mul9=8'h0e;
         8'hf8:mul9=8'h79;
         8'hf9:mul9=8'h70;
         8'hfa:mul9=8'h6b;
         8'hfb:mul9=8'h62;
         8'hfc:mul9=8'h5d;
         8'hfd:mul9=8'h54;
         8'hfe:mul9=8'h4f;
         8'hff:mul9=8'h46;
         endcase
              endfunction

  function [7:0]	mulb;
    input	[7:0]	rc;
    case(rc)
      8'h00:mulb=8'h00;
      8'h01:mulb=8'h0b;
      8'h02:mulb=8'h16;
      8'h03:mulb=8'h1d;
      8'h04:mulb=8'h2c;
      8'h05:mulb=8'h27;
      8'h06:mulb=8'h3a;
      8'h07:mulb=8'h31;
      8'h08:mulb=8'h58;
      8'h09:mulb=8'h53;
      8'h0a:mulb=8'h4e;
      8'h0b:mulb=8'h45;
      8'h0c:mulb=8'h74;
      8'h0d:mulb=8'h7f;
      8'h0e:mulb=8'h62;
      8'h0f:mulb=8'h69;
      8'h10:mulb=8'hb0;
      8'h11:mulb=8'hbb;
      8'h12:mulb=8'ha6;
      8'h13:mulb=8'had;
      8'h14:mulb=8'h9c;
      8'h15:mulb=8'h97;
      8'h16:mulb=8'h8a;
      8'h17:mulb=8'h81;
      8'h18:mulb=8'he8;
      8'h19:mulb=8'he3;
      8'h1a:mulb=8'hfe;
      8'h1b:mulb=8'hf5;
      8'h1c:mulb=8'hc4;
      8'h1d:mulb=8'hcf;
      8'h1e:mulb=8'hd2;
      8'h1f:mulb=8'hd9;
      8'h20:mulb=8'h7b;
      8'h21:mulb=8'h70;
      8'h22:mulb=8'h6d;
      8'h23:mulb=8'h66;
      8'h24:mulb=8'h57;
      8'h25:mulb=8'h5c;
      8'h26:mulb=8'h41;
      8'h27:mulb=8'h4a;
      8'h28:mulb=8'h23;
      8'h29:mulb=8'h28;
      8'h2a:mulb=8'h35;
      8'h2b:mulb=8'h3e;
      8'h2c:mulb=8'h0f;
      8'h2d:mulb=8'h04;
      8'h2e:mulb=8'h19;
      8'h2f:mulb=8'h12;
      8'h30:mulb=8'hcb;   
      8'h31:mulb=8'hc0;
      8'h32:mulb=8'hdd;
      8'h33:mulb=8'hd6;
      8'h34:mulb=8'he7;
      8'h35:mulb=8'hec;
      8'h36:mulb=8'hf1;
      8'h37:mulb=8'hfa;
      8'h38:mulb=8'h93;
      8'h39:mulb=8'h98;
      8'h3a:mulb=8'h85;
      8'h3b:mulb=8'h8e;
      8'h3c:mulb=8'hbf;
      8'h3d:mulb=8'hb4;
      8'h3e:mulb=8'ha9;
      8'h3f:mulb=8'ha2;
      8'h40:mulb=8'hf6;
      8'h41:mulb=8'hfd;
      8'h42:mulb=8'he0;
      8'h43:mulb=8'heb;
      8'h44:mulb=8'hda;
      8'h45:mulb=8'hd1;
      8'h46:mulb=8'hcc;
      8'h47:mulb=8'hc7;
      8'h48:mulb=8'hae;
      8'h49:mulb=8'ha5;
      8'h4a:mulb=8'hb8;
      8'h4b:mulb=8'hb3;
      8'h4c:mulb=8'h82;
      8'h4d:mulb=8'h89;
      8'h4e:mulb=8'h94;
      8'h4f:mulb=8'h9f;
      8'h50:mulb=8'h46;
      8'h51:mulb=8'h4d;
      8'h52:mulb=8'h50;
      8'h53:mulb=8'h5b;
      8'h54:mulb=8'h6a;
      8'h55:mulb=8'h61;
      8'h56:mulb=8'h7c;
      8'h57:mulb=8'h77;
      8'h58:mulb=8'h1e;
      8'h59:mulb=8'h15;
      8'h5a:mulb=8'h08;
      8'h5b:mulb=8'h03;
      8'h5c:mulb=8'h32;
      8'h5d:mulb=8'h39;
      8'h5e:mulb=8'h24;
      8'h5f:mulb=8'h2f;
      8'h60:mulb=8'h8d;
      8'h61:mulb=8'h86;
      8'h62:mulb=8'h9b;
      8'h63:mulb=8'h90;
      8'h64:mulb=8'ha1;
      8'h65:mulb=8'haa;
      8'h66:mulb=8'hb7;
      8'h67:mulb=8'hbc;
      8'h68:mulb=8'hd5;
      8'h69:mulb=8'hde;
      8'h6a:mulb=8'hc3;
      8'h6b:mulb=8'hc8;
      8'h6c:mulb=8'hf9;
      8'h6d:mulb=8'hf2;
      8'h6e:mulb=8'hef;
      8'h6f:mulb=8'he4;
      8'h70:mulb=8'h3d;
      8'h71:mulb=8'h36;
      8'h72:mulb=8'h2b;
      8'h73:mulb=8'h20;
      8'h74:mulb=8'h11;
      8'h75:mulb=8'h1a;
      8'h76:mulb=8'h07;
      8'h77:mulb=8'h0c;
      8'h78:mulb=8'h65;
      8'h79:mulb=8'h6e;
      8'h7a:mulb=8'h73;
      8'h7b:mulb=8'h78;
      8'h7c:mulb=8'h49;
      8'h7d:mulb=8'h42;
      8'h7e:mulb=8'h5f;
      8'h7f:mulb=8'h54;
      8'h80:mulb=8'hf7;
      8'h81:mulb=8'hfc;
      8'h82:mulb=8'he1;
      8'h83:mulb=8'hea;
      8'h84:mulb=8'hdb;
      8'h85:mulb=8'hd0;
      8'h86:mulb=8'hcd;
      8'h87:mulb=8'hc6;
      8'h88:mulb=8'haf;
      8'h89:mulb=8'ha4;
      8'h8a:mulb=8'hb9;
      8'h8b:mulb=8'hb2;
      8'h8c:mulb=8'h83;
      8'h8d:mulb=8'h88;
      8'h8e:mulb=8'h95;
      8'h8f:mulb=8'h9e;
      8'h90:mulb=8'h47;
      8'h91:mulb=8'h4c;
      8'h92:mulb=8'h51;
      8'h93:mulb=8'h5a;
      8'h94:mulb=8'h6b;
      8'h95:mulb=8'h60;
      8'h96:mulb=8'h7d;
      8'h97:mulb=8'h76;
      8'h98:mulb=8'h1f;
      8'h99:mulb=8'h14;
      8'h9a:mulb=8'h09;
      8'h9b:mulb=8'h02;
      8'h9c:mulb=8'h33;
      8'h9d:mulb=8'h38;
      8'h9e:mulb=8'h25;
      8'h9f:mulb=8'h2e;
      8'ha0:mulb=8'h8c;
      8'ha1:mulb=8'h87;
      8'ha2:mulb=8'h9a;
      8'ha3:mulb=8'h91;
      8'ha4:mulb=8'ha0;
      8'ha5:mulb=8'hab;
      8'ha6:mulb=8'hb6;
      8'ha7:mulb=8'hbd;
      8'ha8:mulb=8'hd4;
      8'ha9:mulb=8'hdf;
      8'haa:mulb=8'hc2;
      8'hab:mulb=8'hc9;
      8'hac:mulb=8'hf8;
      8'had:mulb=8'hf3;
      8'hae:mulb=8'hee;
      8'haf:mulb=8'he5;
      8'hb0:mulb=8'h3c;
      8'hb1:mulb=8'h37;
      8'hb2:mulb=8'h2a;
      8'hb3:mulb=8'h21;
      8'hb4:mulb=8'h10;
      8'hb5:mulb=8'h1b;
      8'hb6:mulb=8'h06;
      8'hb7:mulb=8'h0d;
      8'hb8:mulb=8'h64;
      8'hb9:mulb=8'h6f;
      8'hba:mulb=8'h72;
      8'hbb:mulb=8'h79;
      8'hbc:mulb=8'h48;
      8'hbd:mulb=8'h43;
      8'hbe:mulb=8'h5e;
      8'hbf:mulb=8'h55;
      8'hc0:mulb=8'h01;
      8'hc1:mulb=8'h0a;
      8'hc2:mulb=8'h17;
      8'hc3:mulb=8'h1c;
      8'hc4:mulb=8'h2d;
      8'hc5:mulb=8'h26;
      8'hc6:mulb=8'h3b;
      8'hc7:mulb=8'h30;
      8'hc8:mulb=8'h59;
      8'hc9:mulb=8'h52;
      8'hca:mulb=8'h4f;
      8'hcb:mulb=8'h44;
      8'hcc:mulb=8'h75;
      8'hcd:mulb=8'h7e;
      8'hce:mulb=8'h63;
      8'hcf:mulb=8'h68;
      8'hd0:mulb=8'hb1;
      8'hd1:mulb=8'hba;
      8'hd2:mulb=8'ha7;
      8'hd3:mulb=8'hac;
      8'hd4:mulb=8'h9d;
      8'hd5:mulb=8'h96;
      8'hd6:mulb=8'h8b;
      8'hd7:mulb=8'h80;
      8'hd8:mulb=8'he9;
      8'hd9:mulb=8'he2;
      8'hda:mulb=8'hff;
      8'hdb:mulb=8'hf4;
      8'hdc:mulb=8'hc5;
      8'hdd:mulb=8'hce;
      8'hde:mulb=8'hd3;
      8'hdf:mulb=8'hd8;
      8'he0:mulb=8'h7a;
      8'he1:mulb=8'h71;
      8'he2:mulb=8'h6c;
      8'he3:mulb=8'h67;
      8'he4:mulb=8'h56;
      8'he5:mulb=8'h5d;
      8'he6:mulb=8'h40;
      8'he7:mulb=8'h4b;
      8'he8:mulb=8'h22;
      8'he9:mulb=8'h29;
      8'hea:mulb=8'h34;
      8'heb:mulb=8'h3f;
      8'hec:mulb=8'h0e;
      8'hed:mulb=8'h05;
      8'hee:mulb=8'h18;
      8'hef:mulb=8'h13;
      8'hf0:mulb=8'hca;
      8'hf1:mulb=8'hc1;
      8'hf2:mulb=8'hdc;
      8'hf3:mulb=8'hd7;
      8'hf4:mulb=8'he6;
      8'hf5:mulb=8'hed;
      8'hf6:mulb=8'hf0;
      8'hf7:mulb=8'hfb;
      8'hf8:mulb=8'h92;
      8'hf9:mulb=8'h99;
      8'hfa:mulb=8'h84;
      8'hfb:mulb=8'h8f;
      8'hfc:mulb=8'hbe;
      8'hfd:mulb=8'hb5;
      8'hfe:mulb=8'ha8;
      8'hff:mulb=8'ha3;      
            endcase
      endfunction 
  
function [7:0]	muld;
      input	[7:0]	rc;
      case(rc)
      8'h00:muld=8'h00;
      8'h01:muld=8'h0d;
      8'h02:muld=8'h1a;
      8'h03:muld=8'h17;
      8'h04:muld=8'h34;
      8'h05:muld=8'h39;
      8'h06:muld=8'h2e;
      8'h07:muld=8'h23;
      8'h08:muld=8'h68;
      8'h09:muld=8'h65;
      8'h0a:muld=8'h72;
      8'h0b:muld=8'h7f;
      8'h0c:muld=8'h5c;
      8'h0d:muld=8'h51;
      8'h0e:muld=8'h46;
      8'h0f:muld=8'h4b;
      8'h10:muld=8'hd0;
      8'h11:muld=8'hdd;
      8'h12:muld=8'hca;
      8'h13:muld=8'hc7;
      8'h14:muld=8'he4;
      8'h15:muld=8'he9;
      8'h16:muld=8'hfe;
      8'h17:muld=8'hf3;
      8'h18:muld=8'hb8;
      8'h19:muld=8'hb5;
      8'h1a:muld=8'ha2;
      8'h1b:muld=8'haf;
      8'h1c:muld=8'h8c;
      8'h1d:muld=8'h81;
      8'h1e:muld=8'h96;
      8'h1f:muld=8'h9b;
      8'h20:muld=8'hbb;
      8'h21:muld=8'hb6;
      8'h22:muld=8'ha1;
      8'h23:muld=8'hac;
      8'h24:muld=8'h8f;
      8'h25:muld=8'h82;
      8'h26:muld=8'h95;
      8'h27:muld=8'h98;
      8'h28:muld=8'hd3;
      8'h29:muld=8'hde;
      8'h2a:muld=8'hc9;
      8'h2b:muld=8'hc4;
      8'h2c:muld=8'he7;
      8'h2d:muld=8'hea;
      8'h2e:muld=8'hfd;
      8'h2f:muld=8'hf0;
      8'h30:muld=8'h6b;
      8'h31:muld=8'h66;
      8'h32:muld=8'h71;
      8'h33:muld=8'h7c;
      8'h34:muld=8'h5f;
      8'h35:muld=8'h52;
      8'h36:muld=8'h45;
      8'h37:muld=8'h48;
      8'h38:muld=8'h03;
      8'h39:muld=8'h0e;
      8'h3a:muld=8'h19;
      8'h3b:muld=8'h14;
      8'h3c:muld=8'h37;
      8'h3d:muld=8'h3a;
      8'h3e:muld=8'h2d;
      8'h3f:muld=8'h20;
      8'h40:muld=8'h6d;
      8'h41:muld=8'h60;
      8'h42:muld=8'h77;
      8'h43:muld=8'h7a;
      8'h44:muld=8'h59;
      8'h45:muld=8'h54;
      8'h46:muld=8'h43;
      8'h47:muld=8'h4e;
      8'h48:muld=8'h05;
      8'h49:muld=8'h08;
      8'h4a:muld=8'h1f;
      8'h4b:muld=8'h12;
      8'h4c:muld=8'h31;
      8'h4d:muld=8'h3c;
      8'h4e:muld=8'h2b;
      8'h4f:muld=8'h26;
      8'h50:muld=8'hbd;
      8'h51:muld=8'hb0;
      8'h52:muld=8'ha7;
      8'h53:muld=8'haa;
      8'h54:muld=8'h89;
      8'h55:muld=8'h84;
      8'h56:muld=8'h93;
