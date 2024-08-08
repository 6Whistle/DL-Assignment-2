module fa(s, co, a, b, ci);		//full adder
	input a, b, ci;
	output s, co;
	
	ha ha0(sm, c1, b, ci);		//sm = b'ci + bci'		c1 = bci
	ha ha1(s, c2, a, sm);		//s = a xor b xor ci		c2 = a(b xor ci)
	_or2 or1(co, c1, c2);		//co = a(b xor ci) + bci
	
endmodule