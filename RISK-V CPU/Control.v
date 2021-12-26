module Control(
	input Opcode,
	output Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite,
	output [1:0] ALUOperation);

assign Branch = (Opcode == 7'b1100011);
assign MemRead = (Opcode == 7'b0000011);
assign MemtoReg = (Opcode == 7'b0000011);
assign MemWrite = (Opcode == 7'b0100011);
assign ALUSrc = (Opcode == 7'b0100011 || Opcode == 7'b0000011);
assign RegWrite = (Opcode == 7'b0110011 || Opcode == 7'b0000011);
assign ALUOperation[0] = (Opcode == 7'b1100011);
assign ALUOperation[1] = (Opcode == 7'b0110011);

endmodule  

