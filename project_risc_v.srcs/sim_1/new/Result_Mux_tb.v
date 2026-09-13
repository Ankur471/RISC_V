`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 15:49:20
// Design Name: 
// Module Name: Result_Mux_tb
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

`timescale 1ns/1ps

module Result_Mux_tb;

reg [31:0] ALUResult;
reg [31:0] ReadData;
reg [31:0] PC_Plus_4;
reg [1:0] ResultSrc;
wire [31:0] Result;

Result_Mux uut(
    .ALUResult(ALUResult),
    .ReadData(ReadData),
    .PC_Plus_4(PC_Plus_4),
    .ResultSrc(ResultSrc),
    .Result(Result)
);

initial begin
    ALUResult=32'd100;
    ReadData=32'd200;
    PC_Plus_4=32'd300;
    ResultSrc=2'b00;

    #10 ResultSrc=2'b01;
    #10 ResultSrc=2'b10;
    #10 ResultSrc=2'b11;

    #10 $finish;
end

endmodule
