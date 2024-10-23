module counter(clk, out_seg, button, reset, display);
    input clk, button, reset;
    output reg [7:0] out_seg;
    output display;
    reg [3:0] seg;
    reg one;
    
    clock f1(clk, reset, oneHz);
    debounce f2(clk, button, de_button);
    
    assign display = 0;
    
    always @(reset or de_button) begin
        if(reset) begin
            one = 1'b1; // 1 is + & 0 is -
        end
        else if(de_button) begin
            one = ~one;
        end
        else begin
            one = one;
        end
    end
    
    always @(posedge reset or posedge oneHz) begin
        if (reset) begin
            seg <= 4'b0;
        end
        else if(one) begin
            seg <= seg + 1'b1;
        end
        else begin
            seg <= seg - 1'b1;
        end
    end   
    
    always @(seg) begin
        out_seg[7] = 1'b1;
        case (seg)
            4'h0: out_seg = 7'b0000001;
            4'h1: out_seg = 7'b1001111;
            4'h2: out_seg = 7'b0010010;
            4'h3: out_seg = 7'b0000110;
            4'h4: out_seg = 7'b1001100;
            4'h5: out_seg = 7'b0100100;
            4'h6: out_seg = 7'b0100000;
            4'h7: out_seg = 7'b0001111;
            4'h8: out_seg = 7'b0000000;
            4'h9: out_seg = 7'b0000100;
            4'hA: out_seg = 7'b0001000;
            4'hb: out_seg = 7'b1100000;
            4'hC: out_seg = 7'b0110001;
            4'hd: out_seg = 7'b1000010;
            4'hE: out_seg = 7'b0110000;
            4'hF: out_seg = 7'b0111000;
            default: out_seg = 7'b0000001;   
        endcase
    end
    

endmodule