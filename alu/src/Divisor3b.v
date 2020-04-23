module Divisor3b(Divend,Divder,init,clk,reset,ResultD,done);
	 
   input [2:0] Divend;
   input [2:0] Divder;
   input init;
	input clk;
	input reset;
   output [2:0] ResultD;
   output done;
	
	reg [4:0] acum;
	reg [3:0] ResultD;
	reg done;
	reg [3:0] i;

	
//always @ ( init,reset ) begin
//	while (reset !=1 )begin
	always @(init) begin
		if(init==1) begin
		acum =0;
		ResultD=0;
		done=0;
		ResultD = Divend;
			for (i=0; i<3; i=i+1) begin
				acum = acum << 1;
				acum[0] = ResultD[2];
				ResultD = ResultD << 1;
				if (acum >= Divder) begin
					ResultD = ResultD+1;
					acum = acum - Divder;
				end
			end
		done = 1;
		end
	end
//end
endmodule
