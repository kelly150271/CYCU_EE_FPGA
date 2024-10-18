/* CYCU FGPA Design 
 * 
 * Module Name:led7seg
 * 
 * 
 * Rev.       :v1.0
 * Date       :2021-2-25
 * Programmer :Yu-kuen Lai
 * 
 * Notes      :A 7 segment LED decoder
 * 
 *  
 * */

module led7seg(x, a_to_g, zero);

    input wire [3:0] x;
    input zero;
    output reg [7:0] a_to_g;
    
    assign zero = 0;

    always @(*) begin
        a_to_g[7] = 1'b1;
        case(x)
            4'h0: a_to_g = 7'b0000001;
            4'h1: a_to_g = 7'b1001111;
            4'h2: a_to_g = 7'b0010010;
            4'h3: a_to_g = 7'b0000110;
            4'h4: a_to_g = 7'b1001100;
            4'h5: a_to_g = 7'b0100100;
            4'h6: a_to_g = 7'b0100000;
            4'h7: a_to_g = 7'b0001111;
            4'h8: a_to_g = 7'b0000000;
            4'h9: a_to_g = 7'b0000100;
            4'hA: a_to_g = 7'b0001000;
            4'hb: a_to_g = 7'b1100000;
            4'hC: a_to_g = 7'b0110001;
            4'hd: a_to_g = 7'b1000010;
            4'hE: a_to_g = 7'b0110000;
            4'hF: a_to_g = 7'b0111000;
            default: a_to_g = 7'b0000001;
        endcase
    end

endmodule