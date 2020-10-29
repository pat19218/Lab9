module ffd1(input clk, input reset, input ena, input d, output logic q);

	always @ (posedge clk, posedge reset)
		if (reset)
			q <= d;
		else if (ena)
			q <= ~d;			
endmodule

module ffd2(input clk, input reset, input ena, input [1:0]d, output logic [1:0]q);

	always @ (posedge clk, posedge reset)
		if (reset)
			q <= d;
		else if (ena)
			q <= ~d;			
endmodule

module ffd4(input clk, input reset, input ena, input [3:0]d, output logic [3:0]q);

	always @ (posedge clk, posedge reset)
		if (reset)
			q <= d;
		else if (ena)
			q <= ~d;			
endmodule





