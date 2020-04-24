module alu(
    input wire [7:0] V_SW, // portA del 2 al 4 portB del 5 al 7 opcode 0 y 1
    output [0:6] G_HEX, // sseg,
    input wire G_CLOCK_50, // clk,
    input wire V_BT //rst
 );


// Declaración de salidas de cada bloque 
wire [3:0] sal_suma;
wire [3:0] sal_resta;
wire [3:0] sal_div;
wire [5:0] sal_mult;


// Declaración de las entradas init de cada bloque 
reg [3:0] init; 
wire init_suma;
wire init_resta;
wire init_mult;
wire init_div;

// 

assign init_suma= init[0];
assign init_resta=init[1];
assign init_mult=init[2];
assign init_div=init[3];
assign opcode = V_SW[1:0];

reg [15:0]int_bcd;

wire [3:0] operacion;

// descripción del decodificacion de operaciones
always @(*) begin
	case(opcode) 
		2'b00: init<=1;
		2'b01: init<=2;
		2'b10: init<=4;
		2'b11: init<=8;
	default:
		init <= 0;
	endcase
	
end
// Descripcion del miltiplexor
always @(*) begin
	case(opcode) 
		2'b00: int_bcd <={8'b00,sal_suma};
		2'b01: int_bcd <={8'b00,sal_resta};
		2'b10: int_bcd <={8'b00,sal_mult};
		2'b11: int_bcd <={8'b00,sal_div};
	default:
		int_bcd <= 0;
	endcase
	
end


//instanciación de los componnetes 

 sum3b sum(.init(init_suma), .xi({1'b0,portA}), .yi({1'b0,portB}), .sal(sal_suma));
//multiplicador mul ( .MR(portA), .MD(portB), .init(init_mult),.clk(clk), .pp(sal_mult));
 display dp(.V_SW(int_bcd), .G_CLOCK_50(clk), .G_HEX0(G_HEX[0]), .G_HEX1(G_HEX[1]), .V_BT(rst));

// adicone los dos bloques que hacen flata la resta y división





endmodule
