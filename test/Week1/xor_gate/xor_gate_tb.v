`include "src/Week1/xor_gate.v"

module xor_gate_tb();
    reg a, b;
    wire out;

    xor_gate xor0(
        .out(out),
        .a(a),
        .b(b)
    );

    initial begin
        $display("| a | b |out|");
        $monitor("| %b | %b | %b |", a, b, out);

        a = 0; b = 0;
        #1
        a = 0; b = 1;
        #1
        a = 1; b = 0;
        #1
        a = 1; b = 1;

        $finish;
    end
endmodule