module mod10(input clk, output reg[3:0] out);
    always @(posedge clk) begin
        if (out == 10)
            out <= 0;
        else
            out <= out + 1;
    end
endmodule

