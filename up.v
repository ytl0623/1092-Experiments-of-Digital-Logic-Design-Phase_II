`timescale 1ns/1ns


module up ( 
dout,

clk,
rst

);

output	[7:0]	dout;

input	clk, rst;

reg		[7:0]	dout;
always @(posedge clk or negedge rst) 
begin
	if(!rst) begin
		dout <= 0;
	end
	else begin
		if(dout < 8'hff)
			dout <= dout+ 1'b1;
		else
			dout <= dout ;
	end

end

endmodule