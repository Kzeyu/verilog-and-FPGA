module shifter(addr,left_addr,right_addr);
//goal:write a shifter which can shift toward right or left
//proclaim signal
`define LEFT_SHIFT 1'b0
`define RIGHT_SHIFT 1'b1
input  wire [31:0] addr;
output reg [31:0] left_addr,right_addr;
reg control;
//behavior:if addr change,figure out new value
always @(addr)
	begin
		left_addr = shift(addr,` LEFT_SHIFT);
		right_addr = shift(addr,`RIGHT_SHIFT);
	end

//define a function to shift,return a 32bits reg type value
function reg [31:0] shift;
input [31:0] address;
input control;
begin
	shift=(control == `LEFT_SHIFT)?(address<<1):(address>>1);
end

endfunction

endmodule