`timescale 1ns/1ns
module demux(input i, s0, s1, output a, b, c, d);
    assign a = i & ~s1 & ~s0;
    assign b = i & s1 & ~s0;
    assign c = i & ~s1 & s0;
    assign d = i & s1 & s0;
endmodule

module demuxTest;
    reg i, s0, s1;
    wire a, b, c, d;
    integer j;

    demux uut(.i(i), .s0(s0), .s1(s1), .a(a), .b(b), .c(c), .d(d));

    initial begin
        i = 1;
        s0 <= 0;
        s1 <= 0;

        $monitor("i = %b    s0 = %b    s1 = %b    a = %b    b = %b    c = %b    d = %b\n", i, s0, s1, a, b, c, d);
        $dumpfile("demux.vcd");
        $dumpvars(0, demuxTest);

        for(j = 0; j < 4; j = j + 1) begin
            {s0, s1} = j;
            #10;
        end
    end
endmodule