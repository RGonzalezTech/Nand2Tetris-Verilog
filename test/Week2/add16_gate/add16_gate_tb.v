`include "src/Week2/add16_gate.v"

module add16_gate_tb();
    reg[15:0] a, b;
    wire[15:0] out;

    add16_gate sum(
        .out(out),
        .a(a),
        .b(b)
    );

    initial begin
        $display("|        a         |        b         |       out        |");
        $monitor("| %b | %b | %b |", a, b, out);

        a = 16'b0000000000000000;
        b = 16'b0000000000000000;
        #1;

        a = 16'b0000000000000000;
        b = 16'b1111111111111111;
        #1;

        a = 16'b1111111111111111;
        b = 16'b1111111111111111;
        #1;

        a = 16'b1010101010101010;
        b = 16'b0101010101010101;
        #1;

        a = 16'b0011110011000011;
        b = 16'b0000111111110000;
        #1;

        a = 16'b0001001000110100;
        b = 16'b1001100001110110;
        #1;

        $finish;
    end
endmodule