module sum3b (xi, yi, co, zi);

  input [2:0] xi;
  input [2:0] yi;
  output co;
  output [3:0] zi;
  
  wire c1,c2;
  sum1bcc s0 (.A(xi[0]), .B(yi[0]), .Ci(0),  .Cout(c1), .S(zi[0]));
  sum1bcc s1 (.A(xi[1]), .B(yi[1]), .Ci(c1), .Cout(c2), .S(zi[1]));
  sum1bcc s2 (.A(xi[2]), .B(yi[2]), .Ci(c2), .Cout(co), .S(zi[2]));
  
  assign zi[3] = co;		

endmodule
