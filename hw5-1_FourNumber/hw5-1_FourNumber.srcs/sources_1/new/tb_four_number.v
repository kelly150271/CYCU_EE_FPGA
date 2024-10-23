`timescale 1ns/1ns
module tb_four_number();
    reg [7:0] data;
    reg load, up, reset, enable, clk;
    wire [3:0] display4;
    wire [7:0] seg7;

    four_number m1 (data, load, up, reset, enable, seg7, clk, display4);

    initial begin
        load = 0;
        up = 1;
        reset = 0;
        enable = 0;
        clk = 0;
        data  = 8'hb4;

        #10
        reset = 1;

        #20
        reset = 0;

        #10
        load = 1;

        #100
        load = 0;

        #20
        enable = 1;

        #100
        up = 0;

        #300
        enable = 0;

        #200
        $finish;



    end

    always #5 clk = ~clk;
endmodule