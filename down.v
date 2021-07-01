`timescale 1ns/1ns


module down ( 
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
		dout <= 8'hff;
	end
	else begin
		if(dout > 8'd0)
			dout <= dout- 1'b1;
		else
			dout <= dout ;
	end

end

endmodule