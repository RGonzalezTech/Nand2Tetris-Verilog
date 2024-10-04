`include "src/Week1/nand_gate.v"
`include "src/Week1/not_gate.v"

`ifndef OR_GATE_V
`define OR_GATE_V
module or_gate(
    output wire out,
    input wire a,
    input wire b
);
    wire a_not;
    wire b_not;

    not_gate nota (
        .out(a_not),
        .in(a)
    );

    not_gate notb (
        .out(b_not),
        .in(b)
    );

    // De Morgan's Law:
    // Invert inputs first, then NAND them
    // to get an OR gate
    nand_gate or0 (
        .out(out),
        .a(a_not),
        .b(b_not)
    );
endmodule
`endif