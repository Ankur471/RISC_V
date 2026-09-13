`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 14:58:14
// Design Name: 
// Module Name: pc_plus_4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pc_plus_4(
    input[31:0] PC,
    output [31:0]PCPlus4);
    
    assign PCPlus4 = PC + 32'b0100;
endmodule 
