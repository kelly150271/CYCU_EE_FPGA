`timescale 1ns / 1ns
module tb_counter();
    reg clk, button, reset;
    wire [7:0] out_seg;
    wire display;
    
    counter uut(clk, out_seg, button, reset, display);
    
    initial begin
        clk = 0;
        button = 0;
        reset = 0;
        
        #10
        reset = 1;
        
        #30
        reset = 0;
        
        #200
        button = 1;
        
        #50
        button = 0;
        
        #50
        button = 1;
        
        #50
        button = 0;
        
        #200
        $finish;
    
    end
    
    always #5 clk = ~clk;
    
endmodule