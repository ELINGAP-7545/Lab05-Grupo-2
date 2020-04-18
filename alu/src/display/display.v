module display(input [7:0] V_SW, output [6:0] G_HEX0, output [6:0] G_HEX1);

BCDtoSSeg D1(.V_SW(V_SW[3:0]), .G_HEX(G_HEX0));

BCDtoSSeg D2(.V_SW(V_SW[7:4]), .G_HEX(G_HEX1));

endmodule