`include "src/Week2/half_adder_gate.v"

module half_adder_gate_tb();
    reg a, b;
    wire sum, carry;

    half_adder_gate adder(
        .sum(sum),
        .carry(carry),
        .a(a),
        .b(b)
    );

    initial begin
        $display("| a | b |sum|car|");
        $monitor("| %b | %b | %b | %b |", a, b, sum, carry);

        a = 0; b = 0;
        #1
        a = 0; b = 1;
        #1
        a = 1; b = 0;
        #1
        a = 1; b = 1;
        #1

        $finish;
    end
endmodule