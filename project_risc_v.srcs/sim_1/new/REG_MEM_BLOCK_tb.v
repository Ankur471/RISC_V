`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 14:57:17
// Design Name: 
// Module Name: REG_MEM_BLOCK_tb
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


module REG_MEM_BLOCK_tb;
reg clk,we3;
reg [4:0] ra1,ra2,ra3;
reg [31:0] wd3;
wire [31:0] rd1,rd2;

reg_mem_block uut(
    .clk(clk),
    .we3(we3),
    .ra1(ra1),
    .ra2(ra2),
    .ra3(ra3),
    .wd3(wd3),
    .rd1(rd1),
    .rd2(rd2)
);

always #5 clk=~clk;

initial begin
    clk=0;
    we3=0;
    ra1=0;
    ra2=0;
    ra3=0;
    wd3=0;

    #10 we3=1; ra3=5'd1; wd3=32'd100;
    #10 ra3=5'd2; wd3=32'd200;
    #10 ra3=5'd3; wd3=32'd300;

    #10 we3=0; ra1=5'd1; ra2=5'd2;
    #10 ra1=5'd2; ra2=5'd3;
    #10 ra1=5'd1; ra2=5'd3;

    #10 $finish;
end

endmodule
