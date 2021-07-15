`timescale 1ns/1ns

module mux(input a, b, c, d, s0, s1, output y);
    assign y = (~s1 & ~s0 & a) | (~s1 & s0 & b) | (s1 & ~s0 & c) | (s0 & s1 & d);
endmodule

module muxTest;
    reg a, b, c, d, s0, s1;
    wire y;
    integer i;

    mux uut(.a(a), .b(b), .c(c), .d(d), .s0(s0), .s1(s1), .y(y));

    initial begin
        a <= 1;
        b <= 0;
        c <= 1;
        d <= 1;
        s0 <= 0;
        s1 <= 0;

        $monitor("a = %b    b = %b    c = %b    d = %b    s0 = %b    s1 = %b    y = %b\n", a, b, c, d, s0, s1, y);
        $dumpfile("mux.vcd");
        $dumpvars(0, muxTest);

        for(i = 0; i < 4; i = i + 1) begin
            {s1, s0} = i;
            #10;
        end
    end
endmodule