module testbench();

reg clk = 0;
reg reset = 0;
reg enabled = 0;
reg j, k;
output wire q1;

ffjk eins(clk, reset, enabled, j, k, q1);

initial begin
	   j=1; k=0;
	#1 reset=1; #1 reset=0;
	#1 enabled=1;
	#3 j=1; k=0;
	#3 j=0; k=1;
	#3 j=1; k=1;
	#6 j=0; k=0;
end



always@(*)begin
	#1 clk = ~clk;
end
always@(*)begin
	#1 clk = ~clk;
end
initial
	#25 $finish;		

initial begin
	$dumpfile("ffJK_tb.vcd");
	$dumpvars(0, testbench);
	end
endmodule
