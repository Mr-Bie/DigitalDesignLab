module mux1_2 (x,y,s,z);
input x,y,s;
output reg z;

always @(*)
begin
z = x;
if (s == 1)
z = y;
end

endmodule