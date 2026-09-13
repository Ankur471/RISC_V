`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 16:38:41
// Design Name: 
// Module Name: ALU_Mux_tb
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
module ALU_Mux_tb;

    reg  [31:0] WD;
    reg  [31:0] ImmExt;
    reg         ALUSrc;
    wire [31:0] B;

    ALU_Mux uut (
        .WD(WD),
        .ImmExt(ImmExt),
        .ALUSrc(ALUSrc),
        .B(B)
    );

    initial begin
        WD = 32'h1111_1111; ImmExt = 32'h2222_2222;
        ALUSrc = 1'b0;
        #10;
        
        
        WD = 32'h1111_1111; ImmExt = 32'h2222_2222;
        ALUSrc = 1'b1; 
        #10;

        WD = 32'hABCD_1234; ImmExt = 32'h5678_EF90;
        ALUSrc = 1'b0; 
        #10;
        
        WD = 32'hABCD_1234; ImmExt = 32'h5678_EF90; 
        ALUSrc = 1'b1;
        
        
         #10;

        WD = 32'h1357_9BDF; ImmExt = 32'h2468_ACE0; ALUSrc = 1'b0; #10;
        WD = 32'h1357_9BDF; ImmExt = 32'h2468_ACE0; ALUSrc = 1'b1; #10;

        WD = 32'h0000_FFFF; ImmExt = 32'hFFFF_0000; ALUSrc = 1'b0; #10;
        WD = 32'h0000_FFFF; ImmExt = 32'hFFFF_0000; ALUSrc = 1'b1; #10;

        WD = 32'h5555_AAAA; ImmExt = 32'hAAAA_5555; ALUSrc = 1'b0; #10;
        WD = 32'h5555_AAAA; ImmExt = 32'hAAAA_5555; ALUSrc = 1'b1; #20;
    end

endmodule