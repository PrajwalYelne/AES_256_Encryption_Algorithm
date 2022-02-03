module stupidKeyTest;

    reg [3:0] rc;
    reg [255:0] key;
    wire [255:0] keyout;
    
    keyExpansion DUT (.rc(rc),.key(key),.keyout(keyout))
    
    initial 
        begin
         #10 rc =4'b0010; key=256'hd59aecb85bf3c917fee94248de8ebe96b5a9328a2678a647983122292f6c79b3;
        end
    
    initial
        begin
            $monitor($time,"key=%h,keyout=%h",key,keyout); 
        end

endmodule
