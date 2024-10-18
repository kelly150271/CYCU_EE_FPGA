`timescale 1 ns / 1 ns

module adder_1b(a, b, c_in, sum);
    input a, b, c_in;
    output sum;
    
    assign sum = a ^ b ^ c_in;

endmodule