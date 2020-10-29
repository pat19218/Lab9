module ffjk(input clk, input reset, input ena, input J,K, output logic q);

	always @ (posedge clk, posedge reset)
		if (reset)
			q <= 0;
		else if (ena==1 && J==0 && K==0)
			q <= q;	
		else if (ena==1 && J==1 && K==0)
			q <= 1;	
		else if (ena==1 && J==0 && K==1)
			q <= 0;	
		else if (ena==1 && J==1 && K==1)
			q <= ~q;			
endmodule



