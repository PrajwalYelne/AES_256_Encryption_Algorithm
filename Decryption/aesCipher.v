module aesdecipher(clk,datain,key,dataout);

    input clk;
    input [127:0] datain;
    input [255:0] key;
    output[127:0] dataout;
    
    wire [255:0] keyout1,keyout2,keyout3,keyout4,keyout5,keyout6,keyout7;
    wire [127:0] key1,key2,key3,key4,key5,key6,key7,key8,key9,key10,key11,key12,key13,key14,key15;

    keyExpansion k1(.rc(4'b0000),.key(key),.keyout(keyout1));
    keyExpansion k2(.rc(4'b0001),.key(keyout1),.keyout(keyout2));
    keyExpansion k3(.rc(4'b0010),.key(keyout2),.keyout(keyout3));
    keyExpansion k4(.rc(4'b0011),.key(keyout3),.keyout(keyout4));
    keyExpansion k5(.rc(4'b0100),.key(keyout4),.keyout(keyout5));
    keyExpansion k6(.rc(4'b0101),.key(keyout5),.keyout(keyout6));
    keyExpansion k7(.rc(4'b0110),.key(keyout6),.keyout(keyout7));
    
    assign key15 = key[255:128];
    assign key14 = key[127:0];
    assign key13 = keyout1[255:128];
    assign key12 = keyout1[127:0];
    assign key11 = keyout2[255:128];
    assign key10 = keyout2[127:0];
    assign key9 = keyout3[255:128];
    assign key8 = keyout3[127:0];
    assign key7 = keyout4[255:128];
    assign key6 = keyout4[127:0];
    assign key5 = keyout5[255:128];
    assign key4 = keyout5[127:0];
    assign key3 = keyout6[255:128];
    assign key2 = keyout6[127:0];
    assign key1 = keyout7[255:128];
    
    //addroundKey
    wire [127:0] add_roundKey_out;
    assign add_roundKey_out = datain ^ key1;
    
