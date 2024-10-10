`include "src/Week1/not_gate.v"
`include "src/Week1/and_gate.v"

`ifndef DMUX_GATE_V
`define DMUX_GATE_V
module dmux_gate(
    output wire a,
    output wire b,
    input wire in,
    input wire sel
);
    // Simple DMUX gate
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