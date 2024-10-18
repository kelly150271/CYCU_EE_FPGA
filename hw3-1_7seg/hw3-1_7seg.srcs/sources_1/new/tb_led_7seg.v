////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:02:05 06/27/2012
// Design Name:   
// Module Name:   tb_led_7seg_decoder.v
// Project Name:  
// Target Device:  
// Tool versions:  
// Description: 
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ns
module tb_led_7seg_decoder;
	reg [3:0] x;
	wire [7:0] a_to_g;
	// Instantiate the Unit Under Test (UUT)
	led7seg uut (
		.x(x), 
		.a_to_g(a_to_g)
	);

	initial begin
		x = 0;
		// Wait 100 ns for global reset to finish
		#10;
      #160 $finish; 
		// Add stimulus here

	end
	
	always #10 x[0] = ~x[0];
	always #20 x[1] = ~x[1];
	always #40 x[2] = ~x[2];
	always #80 x[3] = ~x[3];
	
	
      
endmodule

