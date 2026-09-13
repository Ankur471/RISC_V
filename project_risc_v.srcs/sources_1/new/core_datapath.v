`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 15:36:46
// Design Name: 
// Module Name: core_datapath
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


module core_datapath(
    input clk,
    input reset,
    input PCSrc,
    input RegWrite,
    input ALUSrc,
    input [1:0] ImmSrc,
    input [1:0] ResultSrc,
    input [3:0] ALUControl,
    input [31:0] Instr,
    input [31:0] ReadData,
    output [31:0] PC,
    output [31:0] ALUResult,
    output [31:0] Result,
    output [31:0] WriteData,
    output Zero
);

wire [31:0] PCNext;
wire [31:0] PCPlus4;
wire [31:0] PCTarget;
wire [31:0] ImmExt;
wire [31:0] RD1;
wire [31:0] RD2;
wire [31:0] B;

pc PC1(
    .PC_Next(PCNext),
    .reset(reset),
    .clk(clk),
    .PC(PC)
);

pc_plus_4 PC4(
    .PC(PC),
    .PCPlus4(PCPlus4)
);

Extend EXT(
    .Instr(Instr[31:7]),
    .ImmSrc(ImmSrc),
    .ImmExt(ImmExt)
);

reg_mem_block RF(
    .clk(clk),
    .we3(RegWrite),
    .ra1(Instr[19:15]),
    .ra2(Instr[24:20]),
    .ra3(Instr[11:7]),
    .wd3(Result),
    .rd1(RD1),
    .rd2(RD2)
);

ALU_Mux ALUMUX(
    .WD(RD1),
    .ImmExt(ImmExt),
    .ALUSrc(ALUSrc),
    .B(B)
);

ALU ALU1(
    .A(RD2),
    .B(B),
    .con(ALUControl),
    .res(ALUResult),
    .zero(Zero)
);

pc_target PCT(
    .Pc(PC),
    .ImmExt(ImmExt),
    .PcTarget(PCTarget)
);

Result_Mux RMUX(
    .ALUResult(ALUResult),
    .ReadData(ReadData),
    .PC_Plus_4(PCPlus4),
    .ResultSrc(ResultSrc),
    .Result(Result)
);

PC_Mux PCMUX(
    .PC_Target(PCTarget),
    .PC_Plus_4(PCPlus4),
    .PCSrc(PCSrc),
    .PC_Next(PCNext)
);
assign WriteData = RD2;
endmodule
