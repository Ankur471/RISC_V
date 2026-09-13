`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 16:03:42
// Design Name: 
// Module Name: PC_Mux_tb
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


`timescale 1ns / 1ps

module PC_Mux_tb;

    reg  [31:0] PC_Target;
    reg  [31:0] PC_Plus_4;
    reg         PCSrc;
    wire [31:0] PC_Next;

    PC_Mux uut (
        .PC_Target(PC_Target),
        .PC_Plus_4(PC_Plus_4),
        .PCSrc(PCSrc),
        .PC_Next(PC_Next)
    );

    initial begin
        PC_Target = 32'h00000010; PC_Plus_4 = 32'h00000004; PCSrc = 1'b0; #10;
        PC_Target = 32'h00000014; PC_Plus_4 = 32'h00000008; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000018; PC_Plus_4 = 32'h0000000C; PCSrc = 1'b0; #10;
        PC_Target = 32'h0000001C; PC_Plus_4 = 32'h00000010; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000020; PC_Plus_4 = 32'h00000014; PCSrc = 1'b0; #10;
        PC_Target = 32'h00000024; PC_Plus_4 = 32'h00000018; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000028; PC_Plus_4 = 32'h0000001C; PCSrc = 1'b0; #10;
        PC_Target = 32'h0000002C; PC_Plus_4 = 32'h00000020; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000030; PC_Plus_4 = 32'h00000024; PCSrc = 1'b0; #10;
        PC_Target = 32'h00000034; PC_Plus_4 = 32'h00000028; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000038; PC_Plus_4 = 32'h0000002C; PCSrc = 1'b0; #10;
        PC_Target = 32'h0000003C; PC_Plus_4 = 32'h00000030; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000040; PC_Plus_4 = 32'h00000034; PCSrc = 1'b0; #10;
        PC_Target = 32'h00000044; PC_Plus_4 = 32'h00000038; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000048; PC_Plus_4 = 32'h0000003C; PCSrc = 1'b0; #10;
        PC_Target = 32'h0000004C; PC_Plus_4 = 32'h00000040; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000050; PC_Plus_4 = 32'h00000044; PCSrc = 1'b0; #10;
        PC_Target = 32'h00000054; PC_Plus_4 = 32'h00000048; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000058; PC_Plus_4 = 32'h0000004C; PCSrc = 1'b0; #10;
        PC_Target = 32'h0000005C; PC_Plus_4 = 32'h00000050; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000060; PC_Plus_4 = 32'h00000054; PCSrc = 1'b0; #10;
        PC_Target = 32'h00000064; PC_Plus_4 = 32'h00000058; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000068; PC_Plus_4 = 32'h0000005C; PCSrc = 1'b0; #10;
        PC_Target = 32'h0000006C; PC_Plus_4 = 32'h00000060; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000070; PC_Plus_4 = 32'h00000064; PCSrc = 1'b0; #10;
        PC_Target = 32'h00000074; PC_Plus_4 = 32'h00000068; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000078; PC_Plus_4 = 32'h0000006C; PCSrc = 1'b0; #10;
        PC_Target = 32'h0000007C; PC_Plus_4 = 32'h00000070; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000080; PC_Plus_4 = 32'h00000074; PCSrc = 1'b0; #10;
        PC_Target = 32'h00000084; PC_Plus_4 = 32'h00000078; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000088; PC_Plus_4 = 32'h0000007C; PCSrc = 1'b0; #10;
        PC_Target = 32'h0000008C; PC_Plus_4 = 32'h00000080; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000090; PC_Plus_4 = 32'h00000084; PCSrc = 1'b0; #10;
        PC_Target = 32'h00000094; PC_Plus_4 = 32'h00000088; PCSrc = 1'b1; #10;
        PC_Target = 32'h00000098; PC_Plus_4 = 32'h0000008C; PCSrc = 1'b0; #10;
        PC_Target = 32'h0000009C; PC_Plus_4 = 32'h00000090; PCSrc = 1'b1; #10;
        PC_Target = 32'h000000A0; PC_Plus_4 = 32'h00000094; PCSrc = 1'b0; #10;
        PC_Target = 32'h000000A4; PC_Plus_4 = 32'h00000098; PCSrc = 1'b1; #10;
        PC_Target = 32'h000000A8; PC_Plus_4 = 32'h0000009C; PCSrc = 1'b0; #10;
        PC_Target = 32'h000000AC; PC_Plus_4 = 32'h000000A0; PCSrc = 1'b1; #20;
    end

endmodule
