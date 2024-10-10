`include "src/Week1/dmux_gate.v"

`ifndef DMUX_4WAY_GATE_V
`define DMUX_4WAY_GATE_V
module dmux_4way_gate(
    output wire a,
    output wire b,
    output wire c,
    output wire d,
    input wire in,
    input wire [1:0] sel
);
    // Simple 4-way DMUX gate
    // assign a = (sel == 2'b00) ? in : 1'b0;
    // assign b = (sel == 2'b01) ? in : 1'b0;
    // assign c = (sel == 2'b10) ? in : 1'b0;
    // assign d = (sel == 2'b11) ? in : 1'b0;

    // Using dmux_gates
    wire topHalf, bottomHalf;
    dmux_gate topOrBottom(
        .a(topHalf),
        .b(bottomHalf),
        .in(in),
        .sel(sel[1]) // 1st bit of sel is the top (aOrB) or bottom (cOrD) selector
    );

    dmux_gate aOrB(
        .a(a),
        .b(b),
        .in(topHalf),
        .sel(sel[0]) // 0th bit of sel is the a or b selector for the top half
    );

    dmux_gate cOrD(
        .a(c),
        .b(d),
        .in(bottomHalf),
        .sel(sel[0]) // 0th bit of sel is the c or d selector for the bottom half
    );
endmodule
`endif