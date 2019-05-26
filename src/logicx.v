`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:50 05/21/2019 
// Design Name: 
// Module Name:    logicx
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
module logicx
(
    input  btn_0,
    input  btn_1,

    output led_0,
    output led_1,
    output led_2,
    output led_3
);

    assign led_0 = btn_0;
    assign led_1 = btn_1;
    assign led_2 = btn_0 & btn_1;
    assign led_3 = btn_0 | btn_1;

endmodule
