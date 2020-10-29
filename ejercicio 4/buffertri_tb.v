module testbench();

reg enabled = 0;
reg [3:0]d;
output wire [3:0]q1;

buftri eins(enabled, d, q1);

initial begin
	   enabled=0; d=4'b0;
	#2 d=4'b0010;	   
	#2 enabled=1; d=4'b1000;	   
	#2 d=4'b1;	   
	#2 enabled=0; d=4'b0100;
	#2 enabled=1; d=4'b0001;	   
	#2 d=4'b0011;
	#2 d=4'b0101;	   
	#2 d=4'b1010;	   
end


initial
	#25 $finish;		

initial begin
	$dumpfile("buffertri_tb.vcd");
	$dumpvars(0, testbench);
	end
endmodule