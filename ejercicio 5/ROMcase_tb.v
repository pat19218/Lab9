module testbench();

reg [6:0]addres;
output wire [12:0]dato;

ROM zucker(addres, dato);

initial begin
	   addres = 7'b0000000;
	#1 $display("Address = %b, dato = %b", addres, dato);
	
	#1 addres = 7'b0000101;
	#1 $display("Address = %b, dato = %b", addres, dato);
	
	#1 addres = 7'b0000001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b0001101;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b0001001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b0010001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b0011001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b0100001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b0101001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b0110001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b0111001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b1000011;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b1000001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b1001011;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b1001001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b1010001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b1011001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b1100001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b1101001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b1110001;
	#1 $display("Address = %b, dato = %b", addres, dato);

	#1 addres = 7'b1111001;
	#1 $display("Address = %b, dato = %b", addres, dato);

end



initial
	#25 $finish;		
initial begin
	$dumpfile("ROMcase_tb.vcd");
	$dumpvars(0, testbench);
	end
endmodule