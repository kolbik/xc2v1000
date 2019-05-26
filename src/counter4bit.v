`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:32:39 05/26/2019 
// Design Name: 
// Module Name:    counter4bit 
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
module counter4bit (q, clk, reset);

  output [3:0] q;
  input clk, reset;
  
  tff tff0(q[0], ~clk, reset);
  tff tff1(q[1], ~q[0], reset);
  tff tff2(q[2], ~q[1], reset);
  tff tff3(q[3], ~q[2], reset);
  
endmodule


endmodule
