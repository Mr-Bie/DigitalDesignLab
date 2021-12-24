module ALU(
    input [63:0] in1,
    input [63:0] in2,
    input [3:0] alucon,
    output reg [63:0] out,
    output zero
    );
	assign zero = (out == 0);
	always @(*)
		 begin
			case (alucon)
				4'b0010 : out = in1 + in2; //ADD
				4'b0110 : out = in1 - in2; //SUB
				4'b0000 : out = in1 & in2; //AND
				4'b0001 : out = in1 | in2; //OR
				default: out <= 64'bx;
			endcase
		end
endmodule
