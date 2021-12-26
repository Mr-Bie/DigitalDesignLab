module PC(
	input clk, input [31:0] PC, input [31:0] immediate, input Branch, input zero, output [31:0] PCNext);

		assign PCNext = PC + 32'd4;
		assign PCNext = (Branch && zero) ? PC + immediate : PC + 32'd4;

endmodule
