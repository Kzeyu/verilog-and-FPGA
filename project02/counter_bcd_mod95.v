module counter_bcd_mod95(clk,arst,counter);
//define port
input clk,arst;
output reg [7:0] counter;
//combinatorial logic
always @(posedge clk or posedge arst )begin//positive edge
	//reset counter
	if(arst) counter <=0;
	//judge whether counter = 94
	else if (counter == 8'h94)
    		counter <= 8'h00;
	//lower 4 bits processing
	else if (counter[3:0] == 4'd9) begin
    		counter[7:4] <= counter[7:4] + 4'd1;//update decade
    		counter[3:0] <= 4'd0;end 			//reset unit
	else
    	counter <= counter + 8'd1;
end
endmodule