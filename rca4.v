module rca4(s, co, a, b, ci);		//4bit Ripple Carry Adder 
	input [3:0] a, b;
	input ci;
	output [3:0] s;
	output co;
	wire [2:0] c;		//carry

	fa fa0(s[0], c[0], a[0], b[0], ci);		//LSB full adder
	fa fa1(s[1], c[1], a[1], b[1], c[0]);	//Second bit full adder
	fa fa2(s[2], c[2], a[2], b[2], c[1]);	//Third bit full adder
	fa fa3(s[3], co, a[3], b[3], c[2]);		//MSB full adder
	
endmodule
	
