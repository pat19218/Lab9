module testbench();

reg clk = 0;
reg reset = 0;




always@(*)begin
	#1 clk = ~clk;
end
always@(*)begin
	#1 clk = ~clk;
end

initial
	#60 $finish;		

initial begin
	$dumpfile("ff_tb.vcd");
	$dumpvars(0, testbench);
	end
endmodule
