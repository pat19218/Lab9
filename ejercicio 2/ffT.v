module ffT1(input clk, input reset, input ena, output logic q);
reg d;
	always @ (posedge clk, posedge reset)
		if (reset)
			q <= 0;
		else if (ena)
			q <= ~q;			
endmodule

