`timescale 1ns / 1ps

module pc_tb;

    reg        clk;
    reg        reset;
    reg [31:0] PC_Next;
    wire[31:0] PC;

    pc uut (
        .clk(clk),
        .reset(reset),
        .PC_Next(PC_Next),
        .PC(PC)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        reset   = 1'b1;
        PC_Next = 32'h00000000;
        #3;

        reset   = 1'b0;
        #12;

        PC_Next = 32'h00000000; #10;
        PC_Next = 32'h00000004; #10;
        PC_Next = 32'h00000008; #10;
        PC_Next = 32'h0000000C; #10;
        PC_Next = 32'h00000010; #10;
        PC_Next = 32'h00000014; #10;
        PC_Next = 32'h00000018; #10;
        PC_Next = 32'h0000001C; #10;
        PC_Next = 32'h00000020; #10;
        PC_Next = 32'h00000024; #10;

        PC_Next = 32'h00000028; #10;
        PC_Next = 32'h0000002C; #10;
        PC_Next = 32'h00000030; #10;
        PC_Next = 32'h00000034; #10;
        PC_Next = 32'h00000038; #10;
        PC_Next = 32'h0000003C; #10;
        PC_Next = 32'h00000040; #10;
        PC_Next = 32'h00000044; #10;
        PC_Next = 32'h00000048; #10;
        PC_Next = 32'h0000004C; #10;

        PC_Next = 32'h00000050; #10;
        PC_Next = 32'h00000054; #10;
        PC_Next = 32'h00000058; #10;
        PC_Next = 32'h0000005C; #10;
        PC_Next = 32'h00000060; #10;
        PC_Next = 32'h00000064; #10;
        PC_Next = 32'h00000068; #10;
        PC_Next = 32'h0000006C; #10;
        PC_Next = 32'h00000070; #10;
        PC_Next = 32'h00000074; #10;

        #20;
    end

endmodule