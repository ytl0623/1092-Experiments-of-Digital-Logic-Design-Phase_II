`timescale 1ns/100ps

module TM_AddSub4;
reg	clk;
wire		[7:0] a, b;
reg   rst;
wire	[7:0] s;
wire	cout;

phase2_14 U_phase2_14(.a(a), .b(b), .rst(rst), .cout(cout), .clk(clk), .s(s));


parameter	t = 30;
parameter	th = 0.5*t;
always #th clk = ~clk;

 // Enter fixture code here
 initial 
 begin
    clk = 1;
    rst = 1;
    #th rst = 0;
    #(t*2)	rst = 1;
	#(t*255);
	$stop;
 end


endmodule




