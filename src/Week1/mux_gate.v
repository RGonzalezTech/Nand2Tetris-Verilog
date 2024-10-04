`include "src/Week1/not_gate.v"
`include "src/Week1/and_gate.v"
`include "src/Week1/or_gate.v"

`ifndef MUX_GATE_V
`define MUX_GATE_V
module mux_gate(
    output wire out,
    input wire a,
    input wire b,
    input wire sel
);
    // Simple MUX gate
    // assign out = (sel) ? b : a;

    wire notSelOut;
    not_gate notSel(
        .out(notSelOut),
        .in(sel)
    );

    wire aAndNotSelOut;
    and_gate aAndNotSel (
        .out(aAndNotSelOut),
        .a(a),
        .b(notSelOut)
    );

    wire bAndSelOut;
    and_gate bAndSel (
        .out(bAndSelOut),
        .a(b),
        .b(sel)
    );

    // A AND NOT SEL || B AND SEL
    or_gate muxGate (
        .out(out),
        .a(aAndNotSelOut),
        .b(bAndSelOut)
    );
endmodule
`endif