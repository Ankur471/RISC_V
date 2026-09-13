`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 15:12:31
// Design Name: 
// Module Name: pc_plus_4_tb
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


module tb_Pc_Plus_4;

    reg  [31:0] Pc;
    wire [31:0] PCPlus4;

    pc_plus_4 uut (
        .PC(Pc),
        .PCPlus4(PCPlus4)
    );

    initial begin
        Pc = 32'h00000020;
        #10;

        Pc = 32'h00000024;
        #10;

        Pc = 32'h00000028;
        #10;

        Pc = 32'h00002000;
        #10;

        Pc = 32'h12345678;
        #10;
        
        Pc = 32'hABCDEF00;
        #20;
    end

endmodule
