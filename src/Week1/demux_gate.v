`include "src/Week1/not_gate.v"
`include "src/Week1/and_gate.v"

`ifndef DEMUX_GATE_V
`define DEMUX_GATE_V
module demux_gate(
    output wire a,
    output wire b,
    input wire in,
    input wire sel
);
    // Simple DEMUX gate
    // assign a = in & ~sel;
    // assign b = in & sel;

    wire notSelOut;
    not_gate notSel(
        .out(notSelOut),
        .in(sel)
    );

    and_gate aAndNotSel (
        .out(a),
        .a(in),
        .b(notSelOut)
    );

    and_gate bAndSel (
        .out(b),
        .a(in),
        .b(sel)
    );
endmodule
`endif