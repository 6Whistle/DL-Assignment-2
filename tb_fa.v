`timescale 1ns/100ps

module tb_fa;
	reg a, b, ci;
	wire s, co;
	
	fa testfa(s, co, a, b, ci);
	
	initial
	begin
		a = 0; b = 0; ci = 0; #10;
		a = 1; #10;
		a = 0; b = 1; #10;
		b = 0; ci = 1; #10;
		
		a = 1; b = 1; ci = 0; #10;
		b = 0; ci = 1; #10;
		a= 0; b = 1; ci = 1; #10;
		
		a = 1; #10;		
		
	
	end
	
endmodule
