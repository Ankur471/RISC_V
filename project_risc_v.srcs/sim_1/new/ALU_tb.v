`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 12:43:42
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;

reg [31:0] A;
reg [31:0] B;
reg [3:0] con;
wire [31:0] res;
wire zero;

ALU uut(
.A(A),
.B(B),
.con(con),
.res(res),
.zero(zero)
);

initial
begin

A=32'd20; B=32'd10; con=4'b0000; #10;
A=32'd30; B=32'd10; con=4'b0001; #10;
A=32'd40; B=32'd10; con=4'b0010; #10;
A=32'd50; B=32'd10; con=4'b0011; #10;
A=32'd60; B=32'd10; con=4'b0100; #10;
A=32'd5;  B=32'd10; con=4'b0101; #10;
A=32'd5;  B=32'd10; con=4'b0110; #10;
A=32'h12345678; B=32'd0; con=4'b0111; #10;
A=32'd100; B=32'h12345000; con=4'b1000; #10;
A=32'd0; B=32'h12345000; con=4'b1001; #10;
A=32'd5; B=32'd2; con=4'b1010; #10;
A=32'd20; B=32'd2; con=4'b1011; #10;

$finish;

end

endmodule
