`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 14:26:37
// Design Name: 
// Module Name: REG_MEM_BLOCK
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



module reg_mem_block(
    input clk,
    input we3,
    input [4:0] ra1,
    input [4:0] ra2,
    input [4:0] ra3,
    input [31:0] wd3,
    output reg [31:0] rd1,
    output reg [31:0] rd2
);
reg [31:0] mem [31:0];
always @(posedge clk)
begin
    if (we3)
        mem[ra3] <= wd3;
end

always @(ra1 or ra2)
begin
    rd1 = mem[ra1];
    rd2 = mem[ra2];
end

endmodule