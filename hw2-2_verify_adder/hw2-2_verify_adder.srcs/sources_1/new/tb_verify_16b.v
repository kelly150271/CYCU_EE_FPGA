`timescale 1ns / 1ns

module tb_adder_16b();
    reg [31:0] sid;
    reg [1:0] mode;
    reg c_in;
    reg [15:0] a, b;
    wire [15:0] sum;
    wire c_out;
    
    reg [16:0] SUM;
    reg [15:0] sum_e;
    reg c_out_e;
    reg [16*8:0] result;
    integer i, j, k, mo;
    integer out;
    parameter file_name = "tb_adder16b_log.txt";
    
    adder_16b a1(sid, mode, c_in, a, b, sum, c_out);
    
    initial begin
        out = $fopen(file_name, "w");
    	$display("File %s is open", file_name);
    	
	end
	
    initial begin
        $timeformat(-9, 2, " ns", 20);
    	$dumpfile("adder_16b.vcd"); 
    	$dumpvars;
    	
    	sid = 32'h11176010;
        
        $fwrite (out, "sid = 11176010\n");
	   $display("-----for loop test-----");
	   
	   for(mo = 0; mo < 4; mo = mo + 1) begin
	       mode = mo;
	       $fwrite (out, "mode =  %d\n", mode);
	       
	       //test a
	       a = 16'd32768;
           b = 16'b0;
    	   c_in = 1'b0;
    	
	       for (k = 0; k < 16; k = k + 1) begin
	           for(i = 0; i < 16; i = i + 1) begin
	               a[i+1] <= a[i];
	           end
	           a[0] <= a [15];
	       	      
	           #10;
	           SUM = a+b+c_in;
	           sum_e = SUM[15:0];
	           c_out_e = SUM[16];
	        
	           $display("Time = %t, a = %b, b = %b, c_in = %b", $time, a, b, c_in);
	           if (sum_e == sum && c_out_e == c_out) begin
		          result = "Test Pass!!";
	           end
	           else begin 
		          result = "Wrong result!!";
		          $fwrite(out, "Time=%t, A= %d, B = %d, C = %d, Expected A+B+C_in=%d, C_out=%d, DUT_output Sum=%d, C_out=%d, %s\n",
	   	           $time, a, b, c_in, sum_e, c_out_e, sum, c_out, result);
	   	       end
	   	   end
	   	
	   	   //test b
	   	   a = 16'd0;
           b = 16'd32768;
    	   c_in = 1'b0;
	   	
	   	   for (k = 0; k < 16; k = k + 1) begin
	           for(i = 0; i < 16; i = i + 1) begin
	               b[i+1] <= b[i];
	           end
	           b[0] <= b [15];
	       	      
	           #10;
	           SUM = a+b+c_in;
	           sum_e = SUM[15:0];
	           c_out_e = SUM[16];
	        
	           $display("Time = %t, a = %b, b = %b, c_in = %b", $time, a, b, c_in);
	           if (sum_e == sum && c_out_e == c_out) begin
		          result = "Test Pass!!";
	           end
	           else begin 
		          result = "Wrong result!!";
		          $fwrite(out, "Time=%t, A= %d, B = %d, C = %d, Expected A+B+C_in=%d, C_out=%d, DUT_output Sum=%d, C_out=%d, %s\n",
	   	           $time, a, b, c_in, sum_e, c_out_e, sum, c_out, result);
	   	       end
	   	   end
	   	
	   	   //test c
	   	   a = 16'd0;
           b = 16'd0;
    	   c_in = 1'b0;
	   	
	   	   for (k = 0; k < 2; k = k + 1) begin
                c_in = k;
            
	           #10;
	           SUM = a+b+c_in;
	           sum_e = SUM[15:0];
	           c_out_e = SUM[16];
	        
	           $display("Time = %t, a = %b, b = %b, c_in = %b", $time, a, b, c_in);
	           if (sum_e == sum && c_out_e == c_out) begin
		          result = "Test Pass!!";
	           end
	           else begin 
		          result = "Wrong result!!";
		          $fwrite(out, "Time=%t, A= %d, B = %d, C = %d, Expected A+B+C_in=%d, C_out=%d, DUT_output Sum=%d, C_out=%d, %s\n",
	   	           $time, a, b, c_in, sum_e, c_out_e, sum, c_out, result);
	   	       end
	   	   end
	   end
	   
	   

     $fclose(out);

        #200 $finish;
    end
endmodule