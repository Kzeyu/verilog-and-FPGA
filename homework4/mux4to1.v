module mux4to1(d0,d1,d2,d3,sel,out_func,out_task);
input d0,d1,d2,d3;
input [1:0] sel;
output reg out_func,out_task;

//call function and task
always @(*) begin    
        out_func = mux4to1_func(d0, d1, d2, d3, sel);
        mux4to1_task(d0, d1, d2, d3, sel, out_task);
 end


//use function to realize
function  mux4to1_func;
	//define input port
	input d0,d1,d2,d3;
	input [1:0] sel;
	//combinational logic
	begin
		case(sel)
			2'b00:mux4to1_func=d0;
			2'b01:mux4to1_func=d1;
			2'b10:mux4to1_func=d2;
			2'b11:mux4to1_func=d3;
			default:mux4to1_func=1'b0;//consider default
		endcase
	end
endfunction
//use task to realize
task mux4to1_task;
	//define port
	input d0,d1,d2,d3;
	input [1:0] sel;
	output reg out;//task use output to return
	//combinational logic
	begin
		case(sel)
			2'b00:out=d0;
			2'b01:out=d1;
			2'b10:out=d2;
			2'b11:out=d3;
			default:out=1'b0;
		endcase
	end
endtask

endmodule