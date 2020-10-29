module testbench();

reg clk = 0;
reg reset = 0;
reg enabled = 0;

output wire q1;


ffT1 eins(clk, reset, enabled, q1);

initial begin
	   enabled=1; 
       	#3 reset=1; #1 reset = 0; 
       	#6 reset=1; #1 reset = 0; 
	#1 enabled=0; #3 enabled=1;  
end



always@(*)begin
	#1 clk = ~clk;
end
always@(*)begin
	#1 clk = ~clk;
end

initial
	#20 $finish;		

initial begin
	$dumpfile("ffT_tb.vcd");
	$dumpvars(0, testbench);
	end
endmodule
