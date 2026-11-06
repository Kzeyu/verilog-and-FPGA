`timescale 10ns/1ns
module fadder4bit_tb;
//proclaim signal
reg ci;
reg [3:0] a,b;
wire [3:0] sum_func,sum_task;
wire co_func,co_task;
integer file_id;
reg [1:0] i;//for ci cycle
reg [4:0] j,k;//for a,b cycle
//instance duv
fadder4bit u(ci,a,b,sum_func,sum_task,co_func,co_task);
//write stimulu
initial begin
	//ci cycle
	for(i=0;i<2;i=i+1)begin
		ci=i;
		//a cycle
		for(j=0;j<16;j=j+1)begin
			a=j;
			//b cycle
			for(k=0;k<16;k=k+1)begin
				b=k;
				#1;
				$fdisplay((file_id | 1'b1),"%04t %4b %4h %4h %4h %4b %4h %4b",$time,ci,a,b,sum_func,co_func,sum_task,co_task);
			end
		end
	end
	#1 $fclose(file_id);
	#1 $stop(2);
end
//file output
initial begin
file_id = $fopen("adder4b_table.dat");
$fdisplay(file_id,"the module is %m");
$fdisplay(file_id,"time | ci  | a | b | sum_function | co_function | sum_task | co_task"); 
end
endmodule
