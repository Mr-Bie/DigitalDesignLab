module InstructionMemory(Address, Instruction);
    input [31:0] Address;
    output [31:0] Instruction;
    reg [63:0] Memory[63:0];

    initial $readmemh("instructiona.txt", Memory);

    assign Instruction = Memory[Address[5:0]]; //read 32 bit data from file starting from where address point to

endmodule