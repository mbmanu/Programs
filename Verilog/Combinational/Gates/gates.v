`timescale 1ns/1ns
module gate(input a, b, output o1, o2, o3, o4, o5, o6,o7);
    assign o1 = ~a;
    assign o2 = a | b;
    assign o3 = a & b;
    assign o4 = a ^ b;
    assign o5 = ~(a | b);
    assign o6 = ~(a & b);
    assign o7 = ~(a ^ b);
endmodule

module gateTest;
    reg a, b;
    wire o1, o2, o3, o4, o5, o6,o7;
    integer i;

    gate uut(.a(a), .b(b), .o1(o1), .o2(o2), .o3(o3), .o4(o4), .o5(o5), .o6(o6), .o7(o7));

    initial begin
        a <= 0;
        b <= 0;

        $monitor("a = %b    b = %b    o1 = %b    o2 = %b    o3 = %b    o4 = %b    o5 = %b    o6 = %b    o7 = %b\n", a, b, o1, o2, o3, o4, o5, o6,o7);
        $dumpfile("gates.vcd");
        $dumpvars(0, gateTest);

        for(i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #10;
        end
    end
endmodule