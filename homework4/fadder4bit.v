module fadder4bit(ci,a,b,sum_func,sum_task,co_func,co_task);
//define port
input ci;
input [3:0] a,b;
output reg [3:0] sum_func,sum_task;
output reg co_func,co_task;
//call the  function and task respectively
always@* begin
	{co_func,sum_func}=fadder_func(ci,a,b);
	fadder_task(ci,a,b,sum_task,co_task);
end

//define a function to realize full adder,it has only one return
function [4:0] fadder_func;
	input ci;
	input [3:0] a,b;
	begin
		fadder_func = a+b+ci;//verilog can comulate it directly
	end
endfunction
//define a task to realize full adder
task fadder_task;
	input ci;
	input [3:0] a,b;
	output [3:0] sum;
	output co;
	begin
		{co,sum}=a+b+ci;
	end
endtask
endmodule
