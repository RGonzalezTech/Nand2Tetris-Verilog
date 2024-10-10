`include "src/Week1/demux_gate.v"
`include "src/Week1/dmux_4way_gate.v"

`ifndef DMUX_8WAY_GATE_V
`define DMUX_8WAY_GATE_V
module dmux_8way_gate(
    output wire a,
    output wire b,
    output wire c,
    output wire d,
    output wire e,
    output wire f,
    output wire g,
    output wire h,
    input wire in,
    input wire [2:0] sel
);
    // Simple 8-way DEMUX gate
    // assign a = (sel == 3'b000) ? in : 1'b0;
    // assign b = (sel == 3'b001) ? in : 1'b0;
    // assign c = (sel == 3'b010) ? in : 1'b0;
    // assign d = (sel == 3'b011) ? in : 1'b0;
    // assign e = (sel == 3'b100) ? in : 1'b0;
    // assign f = (sel == 3'b101) ? in : 1'b0;
    // assign g = (sel == 3'b110) ? in : 1'b0;
    // assign h = (sel == 3'b111) ? in : 1'b0;

    // Using dmux_4way_gates
    wire topHalf, bottomHalf;
    demux_gate dmuxTopOrBottom(
        .a(topHalf),
        .b(bottomHalf),
        .in(in),
        .sel(sel[2]) // 2nd bit of sel is the top (aOrBOrCOrD) or bottom (eOrFOrGOrH) selector
    );

    // Top half
    dmux_4way_gate dmuxTop(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .in(topHalf),
        .sel(sel[1:0]) // 1st and 0th bits of sel is the top (aOrB) selector
    );

    // Bottom half
    dmux_4way_gate dmuxBottom(
        .a(e),
        .b(f),
        .c(g),
        .d(h),
        .in(bottomHalf),
        .sel(sel[1:0]) // 1st and 0th bits of sel is the bottom (eOrF) selector
    );
endmodule
`endif