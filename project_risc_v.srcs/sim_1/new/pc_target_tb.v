

module pc_target_tb;

    reg  [31:0] Pc;
    reg  [31:0] ImmExt;
    wire [31:0] PcTarget;

    pc_target uut (
        .Pc(Pc),
        .ImmExt(ImmExt),
        .PcTarget(PcTarget)
    );

    initial begin
        Pc = 32'h00000100; ImmExt = 32'h00000010; #10;
        Pc = 32'h00000110; ImmExt = 32'h00000020; #10;
        Pc = 32'h00000120; ImmExt = 32'h00000030; #10;
        Pc = 32'h00000130; ImmExt = 32'h00000040; #10;
        Pc = 32'h00000140; ImmExt = 32'h00000050; #10;
        Pc = 32'h00000150; ImmExt = 32'h00000060; #10;
        Pc = 32'h00000160; ImmExt = 32'h00000070; #10;
        Pc = 32'h00000170; ImmExt = 32'h00000080; #10;
        Pc = 32'h00000180; ImmExt = 32'h00000090; #10;
        Pc = 32'h00000190; ImmExt = 32'h000000A0; #10;

        Pc = 32'h00000200; ImmExt = 32'h00000010; #10;
        Pc = 32'h00000210; ImmExt = 32'h00000020; #10;
        Pc = 32'h00000220; ImmExt = 32'h00000030; #10;
        Pc = 32'h00000230; ImmExt = 32'h00000040; #10;
        Pc = 32'h00000240; ImmExt = 32'h00000050; #10;
        Pc = 32'h00000250; ImmExt = 32'h00000060; #10;
        Pc = 32'h00000260; ImmExt = 32'h00000070; #10;
        Pc = 32'h00000270; ImmExt = 32'h00000080; #10;
        Pc = 32'h00000280; ImmExt = 32'h00000090; #10;
        Pc = 32'h00000290; ImmExt = 32'h000000A0; #10;

        Pc = 32'h00000300; ImmExt = 32'h00000010; #10;
        Pc = 32'h00000310; ImmExt = 32'h00000020; #10;
        Pc = 32'h00000320; ImmExt = 32'h00000030; #10;
        Pc = 32'h00000330; ImmExt = 32'h00000040; #10;
        Pc = 32'h00000340; ImmExt = 32'h00000050; #10;
        Pc = 32'h00000350; ImmExt = 32'h00000060; #10;
        Pc = 32'h00000360; ImmExt = 32'h00000070; #10;
        Pc = 32'h00000370; ImmExt = 32'h00000080; #10;
        Pc = 32'h00000380; ImmExt = 32'h00000090; #10;
        Pc = 32'h00000390; ImmExt = 32'h000000A0; #20;
    end

endmodule