module stupiddeciphertest;

reg clk;
reg [255:0] key;
reg [127:0] datain;
wire [127:0] dataout;

aesdecipher DUT (.clk(clk),.key(key),.datain(datain),.dataout(dataout));
