module sum1bcc (A, B, Ci, co, Cout, S);

  input  A;
  input  B;
  input  Ci;
  output reg co;
  output Cout;
  output S;

  reg [1:0] st;
  
  assign S = st[0];
  assign Cout = st[1];

  always @ ( * ) begin
  	st  = 	A+B+Ci;
	if (st>=8) begin
		co = 1;
	end 
	else
		co = 0;

  end
  
endmodule
