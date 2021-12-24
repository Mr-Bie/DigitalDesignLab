module ALUControl(
    input [1:0] aluop,
    input [6:0] func7,
    input [2:0] func3,
    output reg [3:0] alucon
    );

always @(*)
begin
	case (aluop)
		2'b10: begin //ALU
				case ({func7,func3})
				10'b0000000000 : alucon = 4'b0010; //Add
				10'b0100000000 : alucon = 4'b0110; //Sub
				10'b0000000111 : alucon = 4'b0000; //And
				10'b0000000110 : alucon = 4'b0001; //Or
				endcase
			end
		2'b00: alucon <=4'b0000; //LW , SW
		2'b01: alucon <= 4'b0110; //Branch (Sub)

	endcase
end
endmodule