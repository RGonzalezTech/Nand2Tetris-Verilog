`include "src/Week1/and_gate.v"
`include "src/Week1/or_gate.v"
`include "src/Week1/not_gate.v"

`ifndef XOR_GATE_V
`define XOR_GATE_V
module xor_gate(
    output wire out,
    input wire a,
    input wire b
);
    wire aOrBOut;
    or_gate aOrB(
        .out(aOrBOut),
        .a(a),
        .b(b)
    );

    wire aAndBOut;
    and_gate aAndB(
        .out(aAndBOut),
        .a(a),
        .b(b)
    );

    wire notAandBOut;
    not_gate notAandB(
        .out(notAandBOut),
        .in(aAndBOut)
    );

    // A OR B, AND NOT (A AND B)
    and_gate xorGate(
        .out(out),
        .a(aOrBOut),
        .b(notAandBOut)
    );
endmodule
`endif