`timescale 1ns/100ps

module tb_rca4;				//Simple Testbench by Directed Verification
	reg[3:0] tb_a, tb_b;
	reg tb_ci;
	wire[3:0] tb_s;
	wire tb_co;
	wire[4:0] tb_result;

	rca4 testrca4(tb_s, tb_co, tb_a, tb_b, tb_ci);
	
	initial
	begin
		tb_a = 4'b0000; tb_b = 4'b0000; tb_ci=1'b0; #10;
		
		tb_a = 4'b0001; tb_b = 4'b0001; #10;						//MSB Carry verification
		tb_ci=1'b1; #10;
		
		tb_a = 4'b0010; tb_b = 4'b0010; tb_ci=1'b0; #10;		//Second bit Carry verification
		tb_a = 4'b0011; tb_b = 4'b0011; #10;
		
		tb_a = 4'b0100; tb_b = 4'b0100; #10;						//Third bit Carry verification
		tb_a = 4'b0110; tb_b = 4'b0110; #10;
		
		tb_a = 4'b1000; tb_b = 4'b1000; #10;						//MSB Carry verification
		tb_a = 4'b1100; tb_b = 4'b1100; #10;
	
	
	end
	
	assign tb_result = {tb_co, tb_s};
	
endmodule
