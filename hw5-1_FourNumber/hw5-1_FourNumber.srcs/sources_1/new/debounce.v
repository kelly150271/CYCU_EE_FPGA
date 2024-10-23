module debounce(clk, button, de_button);
    input clk, button;
    output reg de_button;
    reg pos_button, neg_button;
    
    always @(posedge clk) begin
        pos_button <= button;
        neg_button <= ~pos_button;
        
        de_button <= pos_button & neg_button;
    end
endmodule