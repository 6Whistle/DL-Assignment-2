module ha(s, co, a, b);		//half adder
	input a, b;
	output s, co;
	
	_xor2 xors(s, a, b);			//s = a'b + ab'
	_and2 andco(co, a, b);		//co = ab
endmodule
