`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 15:41:23
// Design Name: 
// Module Name: Single_Cycle_Core
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




 module Single_Cycle_Core(
    input clk,
    input reset,
    input [31:0] Instr,
    input [31:0] ReadData,

    output [31:0] PC,
    output [31:0] ALUResult,
    output [31:0] WriteData,
    output MemWrite

	);
wire ALUSrc;
wire RegWrite;
wire Zero;
wire PCSrc;
wire Jump;

wire [1:0] ResultSrc;
wire [1:0] ImmSrc;
wire [3:0] ALUControl;
	Control_unit control_unit_inst(
	     .op(Instr[6:0]),
		 .funct3(Instr[14:12]),
		 .funct7b5(Instr[30]),
		 .zero(Zero),
		 .ResultSrc(ResultSrc),
		 .ALUSrc(ALUSrc),
		 .RegWrite(RegWrite),
         .MemWrite(MemWrite),
         .Jump(Jump),
		 .ImmSrc(ImmSrc),
		 .ALUControl(ALUControl),
		 .PcSrc(PcSrc)
		 );
		 core_datapath core_datapath_inst(
		 
		 .clk(clk),
		 .reset(reset),
		 .ResultSrc(ResultSrc),
		 .ALUSrc(ALUSrc),
		 .PCSrc(PCSrc),
		 .RegWrite(RegWrite),
		 .ImmSrc(ImmSrc),
		 .ALUControl(ALUControl),
		 .ReadData(ReadData),
		 .Instr(Instr),
		 .Zero(Zero),
		 .ALUResult(ALUResult),
		 .PC(PC),
     	 .WriteData(WriteData)
		 );
endmodule

