`timescale 1ns/100ps

module tb_ha;
	reg a, b;
	wire s, co;

	ha test_ha(s, co, a, b);
	
	initial
	begin
		a = 0; b = 0; #10;
		a = 1; b = 0; #10;
		a = 0; b = 1; #10;
		a = 1; b = 1; #10;
	end
	
endmodule
