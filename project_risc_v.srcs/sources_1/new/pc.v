`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 14:53:43
// Design Name: 
// Module Name: pc
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


// Program Counter
module pc (
    input  [31:0] PC_Next,
    input         reset,
    input         clk,
    output reg [31:0] PC
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        PC <= 32'b0;
    else
        PC <= PC_Next;
end

endmodule
