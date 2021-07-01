`timescale 1ns/1ns


module Add_Sub_14 (a1, b1, sel1, s1, cout1, clk);

    input	clk;
    input 	[7:0]	a1, b1;
    input		 	sel1;
    output	reg[7:0]	s1;
    output	reg		cout1;
       
    wire	[7:0]	s;
    wire		cout;
    wire	[7:0]	bx;
    wire    [6:0]   c;
    
    xor (bx[0], b1[0], sel1);
    xor (bx[1], b1[1], sel1);
    xor (bx[2], b1[2], sel1);
    xor (bx[3], b1[3], sel1);
    xor (bx[4], b1[4], sel1);
    xor (bx[5], b1[5], sel1);
    xor (bx[6], b1[6], sel1);
    xor (bx[7], b1[7], sel1);
    
    FA		tfa0(.a(a1[0]), .b(bx[0]), .c(sel1 ), .cout(c[0]), .sum(s[0]));
    FA		tfa1(.a(a1[1]), .b(bx[1]), .c(c[0]), .cout(c[1]), .sum(s[1]));
    FA		tfa2(.a(a1[2]), .b(bx[2]), .c(c[1]), .cout(c[2]), .sum(s[2]));
    FA		tfa3(.a(a1[3]), .b(bx[3]), .c(c[2]), .cout(c[3]), .sum(s[3]));
    FA		tfa4(.a(a1[4]), .b(bx[4]), .c(c[3]), .cout(c[4]), .sum(s[4]));
    FA		tfa5(.a(a1[5]), .b(bx[5]), .c(c[4]), .cout(c[5]), .sum(s[5]));
    FA		tfa6(.a(a1[6]), .b(bx[6]), .c(c[5]), .cout(c[6]), .sum(s[6]));
    FA		tfa7(.a(a1[7]), .b(bx[7]), .c(c[6]), .cout(cout), .sum(s[7]));

    always@(posedge clk) begin
       s1<=s;
       cout1<=cout;
    end



endmodule

