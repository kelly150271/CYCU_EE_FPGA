`timescale 1ns / 1ns

module tb_adder();
    reg [3:0] a, b;
    reg c_in;
    wire [3:0] sum;
    wire c_out;
    
    reg [4:0] SUM;
    reg [3:0] sum_e;
    reg c_out_e;
    reg [16*8:0] result;
    integer i, j, k, out;
    parameter file_name = "tb_adderCLA_log.txt";
    
    adder_CLA cla1(a, b, c_in, sum, c_out);
    
    initial begin
        out = $fopen(file_name, "w");
    	$display("File %s is open", file_name);
    	
        $monitor("Monitor Time=%t, A= %d, B = %d, C = %d, Expected A+B+C_in=%d, C_out=%d, DUT_output Sum=%d, C_out=%d",
	   	       $time, a, b, c_in, sum_e, c_out_e, sum, c_out);
	end
	
    initial begin  	
        $timeformat(-9, 2, " ns", 20);
    	$dumpfile("adder.vcd"); 
    	$dumpvars;

	   $display("-----for loop test-----");
	   for (k = 0; k < 2; k = k + 1) begin
           for (i = 0; i < 16; i = i + 1) begin
	           for (j = 0; j < 16; j = j + 1) begin
	               a = i; 
	               b = j;
	               c_in = k;
	               SUM = i+j+c_in;
	               sum_e = SUM[3:0];
	               c_out_e = SUM[4];
	               #10;
	               if (sum_e == sum && c_out_e == c_out) begin
		              result = "Test Pass!!";
		              $display("Display Time=%t, %s",$time, result);
		              $fwrite(out, "Time=%t, A= %d, B = %d, C = %d, Expected A+B+C_in=%d, C_out=%d, DUT_output Sum=%d, C_out=%d, %s\n",
	   	       $time, a, b, c_in, sum_e, c_out_e, sum, c_out, result);
	               end
	  	
	               else begin 
		              result = "Wrong result!!";
		              $display("Display Time=%t, %s",$time, result);
		              $fwrite(out, "Time=%t, A= %d, B = %d, C = %d, Expected A+B+C_in=%d, C_out=%d, DUT_output Sum=%d, C_out=%d, %s\n",
	   	       $time, a, b, c_in, sum_e, c_out_e, sum, c_out, result);
	               end
	  	
	  	          $display("Display Time=%t, A= %d, B = %d, C = %d, Expected A+B+C_in=%d, C_out=%d, DUT_output Sum=%d, C_out=%d\n",
	   	       $time, a, b, c_in, sum_e, c_out_e, sum, c_out);
                  
	  
	       end
        end
     end
     
     $fclose(out);

        #200 $finish;
    end
endmodule