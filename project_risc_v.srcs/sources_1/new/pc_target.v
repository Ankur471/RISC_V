`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 15:19:08
// Design Name: 
// Module Name: pc_target
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

module pc_target(
     input [31:0] Pc,
     input [31:0] ImmExt,
     output [31:0] PcTarget);
     assign PcTarget= Pc+ImmExt;
endmodule 
     
