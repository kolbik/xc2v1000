`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:49 05/23/2019 
// Design Name: 
// Module Name:    entry 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module entry( PB_SWITCH, LED, SEG1, CLK_40MHZ);

	input  CLK_40MHZ;
	input  [1:0] PB_SWITCH;
	output [3:0] LED;
	output [7:0] SEG1;

wire clk40mhz;
wire [1:0] btn;
wire [3:0] ledrnm0;
wire [7:0] seg1rnm0;

reg  [31:0] cnt = 0;
reg  [3:0] seg1def = 0;
reg  status = 0;


IBUF  clk_ibuf (.I(CLK_40MHZ), 
            .O(clk40mhz));

IBUF  SW0 (.I(PB_SWITCH[0]), 
            .O(btn[0]));
				
IBUF  SW1 (.I(PB_SWITCH[1]), 
            .O(btn[1]));		

OBUF  LD0 (.I(ledrnm0[0]), 
            .O(LED[0]));	

OBUF  LD1 (.I(ledrnm0[1]), 
            .O(LED[1]));

OBUF  LD2 (.I(ledrnm0[2]), 
            .O(LED[2]));

OBUF  LD3 (.I(ledrnm0[3]), 
            .O(LED[3]));

OBUF  SEG10 (.I(seg1rnm0[0]), .O(SEG1[0]));
OBUF  SEG11 (.I(seg1rnm0[1]), .O(SEG1[1]));
OBUF  SEG12 (.I(seg1rnm0[2]), .O(SEG1[2]));
OBUF  SEG13 (.I(seg1rnm0[3]), .O(SEG1[3]));
OBUF  SEG14 (.I(seg1rnm0[4]), .O(SEG1[4]));
OBUF  SEG15 (.I(seg1rnm0[5]), .O(SEG1[5]));
OBUF  SEG16 (.I(seg1rnm0[6]), .O(SEG1[6]));
OBUF  SEG17 (.I(seg1rnm0[7]), .O(SEG1[7]));

always @(posedge clk40mhz) 
begin
	cnt = cnt + 1;
	if( cnt == 32'h1312D00) begin
	   cnt = 0;
		status = ~status;
	end
end

always @(posedge status) 
begin
	seg1def = seg1def + 1;
	if (seg1def == 10) begin
	seg1def = 0;
	end
end

logicx logicx1(btn[0], btn[1], ledrnm0[0], ledrnm0[1], ledrnm0[2], ledrnm0[3]);
segdriver segdriver(seg1def, 1, seg1rnm0);


endmodule
