`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:32 05/26/2019 
// Design Name: 
// Module Name:    segdriver 
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
module segdriver( bcd, dot, seg1out );
	input [3:0] bcd;
	input dot;
	output reg [7:0] seg1out;
	
	always @ (bcd or dot) 
	begin
		seg1out[7:1] <= 7'b0000001;
		case ( bcd )
			0: seg1out[7:1] <= 7'b1111110;
			1: seg1out[7:1] <= 7'b0110000;
			2: seg1out[7:1] <= 7'b1101101;
			3: seg1out[7:1] <= 7'b1111001;			
			4: seg1out[7:1] <= 7'b0110011;
			5: seg1out[7:1] <= 7'b1011011;
			6: seg1out[7:1] <= 7'b1011111;
			7: seg1out[7:1] <= 7'b1110000;
			8: seg1out[7:1] <= 7'b1111111;
			9: seg1out[7:1] <= 7'b1111011;
			//default: seg1out <= 7'b0000001;
		endcase
   end
endmodule
