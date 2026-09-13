`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 15:26:33
// Design Name: 
// Module Name: Result_Mux
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


module Result_Mux( input [31:0] ALUResult,
           input [31:0] ReadData,
           input [31:0] PC_Plus_4,
           input [1:0] ResultSrc,
           output reg [31:0] Result );
           
       always@ (ReadData or PC_Plus_4 or ALUResult or ResultSrc )
		begin 
		    case(ResultSrc)
			   2'b00:Result=ALUResult;
			   2'b01:Result=ReadData;
			   2'b10:Result=PC_Plus_4;
			   default:Result=1'bx;
            endcase
         end 
endmodule
