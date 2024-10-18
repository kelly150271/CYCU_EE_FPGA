`timescale 1ns / 1ns

module adder_CLA(a, b, c_in, sum, c_out);
    input [3:0] a, b;
    input c_in;
    output [3:0] sum;
    output c_out;
    
    reg [3:0] g, p, out_tmp;
    
    adder_1b a1(a[0], b[0], c_in, sum[0]);
    adder_1b a2(a[1], b[1], out_tmp[0], sum[1]);
    adder_1b a3(a[2], b[2], out_tmp[1], sum[2]);
    adder_1b a4(a[3], b[3], out_tmp[2], sum[3]);
    
    always @(a, b) begin
        g[0] = a[0] & b[0];
        g[1] = a[1] & b[1];
        g[2] = a[2] & b[2];
        g[3] = a[3] & b[3];
        p[0] = a[0] | b[0];
        p[1] = a[1] | b[1];
        p[2] = a[2] | b[2];
        p[3] = a[3] | b[3];
    end
    always @(g, p) begin
        out_tmp[0] = g[0]|p[0] & c_in;
        out_tmp[1] = g[1]|p[1] & g[0]|p[1] & p[0] & c_in;
        out_tmp[2] = g[2]|p[2] & g[1]|p[2] & p[1] & g[0]|p[2] & p[1] & p[0] & c_in;
        out_tmp[3] = g[3]|p[3] & g[2]|p[3] & p[2] & g[1]|p[3] & p[2] & p[1] & g[0]|p[3] & p[2] & p[1] & p[0] & c_in;
    end
    
    assign c_out = out_tmp[3];
    
endmodule
