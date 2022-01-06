

module aescipher(clk,datain,key,dataout);

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

    assign key1 = key[255:128];
    assign key2 = key[127:0];
    assign key3 = keyout1[255:128];
    assign key4 = keyout1[127:0];
    assign key5 = keyout2[255:128];
    assign key6 = keyout2[127:0];
    assign key7 = keyout3[255:128];
    assign key8 = keyout3[127:0];
    assign key9 = keyout4[255:128];
    assign key10 = keyout4[127:0];
    assign key11 = keyout5[255:128];
    assign key12 = keyout5[127:0];
    assign key13 = keyout6[255:128];
    assign key14 = keyout6[127:0];
    assign key15 = keyout7[255:128];


//addroundKey
    wire [127:0] add_roundKey_out;
    assign add_roundKey_out = datain ^ key1;
    
    
//firstRound
    wire [127:0] r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out,r10_out,r11_out,r12_out,r13_out;

    rounds r1(.clk(clk),.data(add_roundKey_out),.keyin(key2),.rndout(r1_out));
    rounds r2(.clk(clk),.data(r1_out),.keyin(key3),.rndout(r2_out));
    rounds r3(.clk(clk),.data(r2_out),.keyin(key4),.rndout(r3_out));
    rounds r4(.clk(clk),.data(r3_out),.keyin(key5),.rndout(r4_out));
    rounds r5(.clk(clk),.data(r4_out),.keyin(key6),.rndout(r5_out));
    rounds r6(.clk(clk),.data(r5_out),.keyin(key7),.rndout(r6_out));
    rounds r7(.clk(clk),.data(r6_out),.keyin(key8),.rndout(r7_out));
    rounds r8(.clk(clk),.data(r7_out),.keyin(key9),.rndout(r8_out));
    rounds r9(.clk(clk),.data(r8_out),.keyin(key10),.rndout(r9_out));
    rounds r10(.clk(clk),.data(r9_out),.keyin(key11),.rndout(r10_out));
    rounds r11(.clk(clk),.data(r10_out),.keyin(key12),.rndout(r11_out));
    rounds r12(.clk(clk),.data(r11_out),.keyin(key13),.rndout(r12_out));
    rounds r13(.clk(clk),.data(r12_out),.keyin(key14),.rndout(r13_out));
    rounndlast r14(.clk(),.rin(r13_out),.keylastin(key15),.fout(dataout));

endmodule
