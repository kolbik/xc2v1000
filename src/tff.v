`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:29:59 05/26/2019 
// Design Name: 
// Module Name:    tff 
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
// Toggle Flip-Flop
module tff (q, clk, reset);

  output q;
  input clk, reset;
  
  reg q;
  
  always @(posedge reset or posedge clk) begin
    if (reset) begin
      q <= 1'b0;
    end else begin
      q <= ~q;
    end
  end
endmodule


endmodule
