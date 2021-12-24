module ImmGen(
input [31:0] Instruction,
output reg [63:0] Immediate);

assign Immediate =
	(Instruction[6:0] == 7'b0000011) ? {{53{Instruction[31]}}, Instruction[30:20]} : //ld : concat 53 * immediate sign to imediate itself to have a 64-bit immediate
        (Instruction[6:0] == 7'b1100011) ? {{52{Instruction[31]}}, Instruction[30:25], Instruction[11:7], 1'b0}: //bq : concat 52 * immediate sign to double of immediate
	(Instruction[6:0] == 7'b0100011) ? {{53{Instruction[31]}}, Instruction[30:25], Instruction[11:7]} //sd : concat 53 * immediate sign to immediate
	: 64'bx ;

endmodule
