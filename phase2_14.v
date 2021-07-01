`timescale 1ns/100ps

module phase2_14(a, b, rst, cout, clk, s);
input	clk, rst;
output		[7:0] a, b;
wire		[7:0] a, b;

output		[7:0] s;
output		cout;
wire   rst;
wire	[7:0] s;
wire	cout;

Add_Sub_14	U_Add_Sub_14 (.a1(a), .b1(b), .sel1(a[7]), .s1(s), .cout1(cout), .clk(clk));
down	U_down (.dout(b), .clk(clk), .rst(rst));
up		U_up (.dout(a), .clk(clk), .rst(rst));

endmodule