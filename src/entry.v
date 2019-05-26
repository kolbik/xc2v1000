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
module entry( PB_SWITCH, LED );

	input  [1:0] PB_SWITCH;
	output [3:0] LED;

wire [1:0] btn;
wire [3:0] ledrnm0;

//reg  [7:0] regSeg1;

//assign SEG1 = 8'hA5;
//regSeg1 = FFh;


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

				

logicx logicx1(btn[0], btn[1], ledrnm0[0], ledrnm0[1], ledrnm0[2], ledrnm0[3]);


endmodule
