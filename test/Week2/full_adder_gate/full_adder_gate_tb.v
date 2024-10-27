`include "src/Week2/full_adder_gate.v"

module full_adder_gate_tb();
    reg a, b, c;
    wire sum, carry;

    full_adder_gate full(
        .sum(sum),
        .carry(carry),
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin
        $display("| a | b | c |sum|carry|");
        $monitor("| %b | %b | %b | %b |  %b  |", a, b, c, sum, carry);

        a = 0; b = 0; c = 0;
        #1
        a = 0; b = 0; c = 1;
        #1
        a = 0; b = 1; c = 0;
        #1
        a = 0; b = 1; c = 1;
        #1
        a = 1; b = 0; c = 0;
        #1
        a = 1; b = 0; c = 1;
        #1
        a = 1; b = 1; c = 0;
        #1
        a = 1; b = 1; c = 1;
        #1

        $finish;
    end
endmodule