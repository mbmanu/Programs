`timescale 1ns/1ns

module fa(input a, b, c, output sum, carry);
    assign sum = a ^ b ^ c;
    assign carry = ((a ^ b) & c) | (a & b);
endmodule

module faTest;
    reg a, b, c;
    wire sum, carry;
    integer i;

    fa uut(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));

    initial begin
        
        a <= 0;
        b <= 0;
        c <= 0;

        $monitor("a = %b    b = %b    c = %b    sum = %b    carry = %b\n", a, b, c, sum, carry);
        $dumpfile("fa.vcd");
        $dumpvars(0, faTest);

        for(i = 0; i < 8; i = i + 1) begin
            {a, b, c} = i;
            #10;
        end
    end
endmodule