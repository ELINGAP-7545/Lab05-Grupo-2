module resta3b (input [2:0] xi, input [2:0] yi, output reg po, output [3:0] zi, input init);

  reg [2:0] st;
  assign pi = 0;

  assign zi[2:0] = st;
  assign zi[3] = po;

always @ ( * ) begin

  if (xi>=yi) begin
		st = xi-yi-pi;
		po = 0;
  end
   else begin
			st = yi-xi-pi;
			po = 1;	
		  end
end
endmodule
