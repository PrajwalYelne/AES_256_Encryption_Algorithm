module stupidciphertest;

    reg clk;
    reg [255:0] key;
    reg [127:0] datain;
    wire [127:0] dataout;
    
    aescipher DUT (.clk(clk),.key(key),.datain(datain),.dataout(dataout));

    initial 
        begin
          #10 datain=128'h00112233445566778899aabbccddeeff; key=256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;
        end
    
    always #10 clk=~clk;

    initial
        begin
          $monitor($time,"key=%h,datain=%h,dataout=%h",key,datain,dataout); 
        end
