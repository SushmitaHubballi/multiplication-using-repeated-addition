`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:26:19 02/05/2022
// Design Name:   controller
// Module Name:   D:/xilinx_college/example1/tb.v
// Project Name:  example1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg clk;
	reg start;

	// Outputs
	wire lda;
	wire ldb;
	wire ldp;
	wire clrp;
	wire decb;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.lda(lda), 
		.ldb(ldb), 
		.ldp(ldp), 
		.clrp(clrp), 
		.decb(decb), 
		.done(done), 
		.clk(clk), 
		.start(start)
	);
	
	
	
	
		
			// Inputs
	reg lda;
	reg ldb;
	reg ldp;
	reg clrp;
	reg decb;
	reg [15:0] data_in;
	reg clk;

	// Outputs
	wire eqz;

	// Instantiate the Unit Under Test (UUT)
	MUL_datapath uut (
		.eqz(eqz), 
		.lda(lda), 
		.ldb(ldb), 
		.ldp(ldp), 
		.clrp(clrp), 
		.decb(decb), 
		.data_in(data_in), 
		.clk(clk)
	);
	
	
	
	
	
	

	initial begin
		// Initialize Inputs
		clk = 1'b0;;
	 #3	start = 1'b1;
	 #500 $finish;
      end
		
		always #5 clk=~clk;
	
      end
      
		
		

	initial begin
		// Initialize Inputs
		
		#17 data_in = 17;
		#10 data_in=5;

	end
	
	initial begin
	$monitor ($time, "%d ", MUL_datapath.y)
      
endmodule

