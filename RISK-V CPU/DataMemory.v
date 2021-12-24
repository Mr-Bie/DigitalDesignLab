module DataMemory (
input clk,
input [5:0] Address,
input [63:0] WriteData,
input MemRead,
input MemWrite,
output [63:0] ReadData);
reg [63:0] RAM [63:0];

assign ReadData = RAM[Address];
always @(posedge clk)
	begin
		if (MemWrite) RAM[Address] <= WriteData; 
	end	
endmodule