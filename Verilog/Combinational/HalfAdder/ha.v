`timescale 1ns/1ns
module ha(input a, b, output sum, carry);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule

module haTest;
    reg a, b;
    wire sum, carry;
    integer i;

    ha uut(.a(a), .b(b), .sum(sum), .carry(carry));

    initial begin
        a <= 0;
        b <= 0;
        
        $monitor("a = %b    b = %b    sum = %b    carry = %b\n", a, b, sum, carry);
        $dumpfile("ha.vcd");
        $dumpvars(0, haTest);

        for(i = 0; i < 4; i = i + 1) begin
            {a, b} = i;
            #10;
        end
    end
endmodule