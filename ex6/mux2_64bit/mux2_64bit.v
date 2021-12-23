module mux2_64bit (x,y,s,z);
input [0:63]x,y;
input s;
output reg [0:63]z;

always @(x, y, s)
begin
z = x;
if (s == 1)
z = y;
end


endmodule;