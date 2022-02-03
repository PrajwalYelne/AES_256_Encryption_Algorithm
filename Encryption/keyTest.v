module stupidKeyTest;

    reg [3:0] rc;
    reg [255:0] key;
    wire [255:0] keyout;
    
    keyExpansion DUT (.rc(rc),.key(key),.keyout(keyout))
