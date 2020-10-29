module buftri(input ena, input [3:0]d, output logic [3:0]q);

	always @ (*)
		if (ena == 0)
			q <= 1'bz;
		else
			q <= d;
endmodule