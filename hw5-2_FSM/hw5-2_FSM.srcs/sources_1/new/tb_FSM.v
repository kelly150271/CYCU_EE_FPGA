`timescale 1ns/1ns
module tb_FSM();
    reg inc, set, reset, clk;
    wire [7:0] seg7;
    wire [3:0] display4;

    FSM m1(inc, set, reset, seg7, clk, display4);

    initial begin
        inc = 0;
        set = 0;
        reset = 0;
        clk = 0;

        #10
        reset = 1;

        #20
        reset = 0;

        #10
        inc = 1; //enter up_mode

        #20
        inc = 0;

        #20
        set = 1; //enter setup

        #10
        set = 0;

        #10
        inc = 1; //enter pulse

        #10
        inc = 0;

        #20
        set = 1; 
        inc = 1; //enter down_mode

        #10
        set = 0;
        inc = 0;

        #20
        set = 1; //enter setup

        #10
        set = 0;

        #10
        set = 1;
        inc = 1; //enter down_mode

        #10
        set = 0;
        inc = 0;

        #10
        set = 1;
        inc = 1; //enter idle
    
        #20
        $finish;

    end 

    always #5 clk = ~clk;

endmodule