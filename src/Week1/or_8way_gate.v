`include "src/Week1/or_gate.v"

`ifndef OR_8WAY_GATE_V
`define OR_8WAY_GATE_V
module or_8way_gate(
    output wire out,
    input wire[7:0] in
);
    // Simple 8-way OR gate
    // assign out = in[0] | in[1] | in[2] | in[3] | in[4] | in[5] | in[6] | in[7];

    // Using multiple OR gates
    wire aOrB;
    or_gate or1(
        .out(aOrB),
        .a(in[0]),
        .b(in[1])
    );

    wire cOrD;
    or_gate or2(
        .out(cOrD),
        .a(in[2]),
        .b(in[3])
    );

    wire eOrF;
    or_gate or3(
        .out(eOrF),
        .a(in[4]),
        .b(in[5])
    );

    wire gOrH;
    or_gate or4(
        .out(gOrH),
        .a(in[6]),
        .b(in[7])
    );

    wire abcOrD;
    or_gate or5(
        .out(abcOrD),
        .a(aOrB),
        .b(cOrD)
    );

    wire efgOrH;
    or_gate or6(
        .out(efgOrH),
        .a(eOrF),
        .b(gOrH)
    );

    or_gate or7(
        .out(out),
        .a(abcOrD),
        .b(efgOrH)
    );
endmodule
`endif