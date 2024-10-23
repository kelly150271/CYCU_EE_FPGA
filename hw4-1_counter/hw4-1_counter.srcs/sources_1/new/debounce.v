module debounce(clk, button, de_button);
    input clk, button;
    output de_button;
    reg pos_button, neg_button;
    
    always @(posedge clk) begin
        pos_button <= button;
        neg_button <= ~pos_button;
    end

    assign de_button = pos_button & neg_button;

endmodule