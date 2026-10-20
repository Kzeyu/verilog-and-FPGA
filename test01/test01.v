module test1;
//1.reduction operator
wire [31:0] Address_Bus;
wire result_1;
assign result_1= ~&Address_Bus[20:11];
//2.concatenation operator
wire [15:0] Control_Bus;
wire [0:9] Abus;
wire [6:1] Bbus;
assign {Abus,Bbus}=Control_Bus;
//3.shift operator
reg [7:0] Q=8'b1011_0110;
wire [7:0] Q_lr_3,Q_rr_3;
assign Q_lr_3=Q << 3;
assign Q_rr_3=Q>>3;
//lr:1011_0000
//rr:0001_0110

//4.conditional operator
//assign NextState = (CurrentState == RESET)?GO:BUSY;
wire NextState;
reg [1:0] CurrentState; 
parameter RESET = 2'b00;
parameter GO    = 2'b01;
parameter BUSY  = 2'b10;

assign NextState = (CurrentState == RESET) ? GO :
                   (CurrentState == GO)    ? BUSY :
                   (CurrentState == BUSY)  ? RESET : 0;
//5.concatenation operator
wire [0:3] BusQ;
wire [7:0] BusR;
wire A,B,C,D,E,F,G,H;
assign BusQ={A,B,C,D};//connect
assign {A,B,C,D,E,F,G,H}=BusR;//sperate

endmodule