module RegisterFile (
    	input [4:0] ReadRegister1,
    	input [4:0] ReadRegister2,
	input RegWrite,
    	input [4:0] WriteRegister,
    	input [63:0] WriteData,
    	input clk,
    	output [63:0]ReadData1,
    	output [63:0]ReadData2
    );
reg [63:0] RegisterFile[31:0];
integer i , j;
//set all registers to 0 at simulate start
initial
    begin
        for(j = 0; j < 32; j = j+1)
        RegisterFile[j] = {64{1'b0}};
    end

assign ReadData1 = (ReadRegister1 != 0) ? RegisterFile[ReadRegister1] : 0;
assign ReadData2 = (ReadRegister2 != 0) ? RegisterFile[ReadRegister2] : 0;

always @ (posedge clk)
    begin
        if(RegWrite)
	        begin
		        RegisterFile[WriteRegister] <= WriteData;
	        end 
    end
endmodule