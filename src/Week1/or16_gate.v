`include "src/Week1/or_gate.v"

`ifndef OR16_GATE_V
`define OR16_GATE_V
module or16_gate(
    output wire [15:0] out,
    input wire [15:0] a,
    input wire [15:0] b
);
    // Simple 16-bit OR gate
    // assign out = a | b;

    or_gate or0(
        .out(out[0]),
        .a(a[0]),
        .b(b[0])
    );

    or_gate or1(
        .out(out[1]),
        .a(a[1]),
        .b(b[1])
    );

    or_gate or2(
        .out(out[2]),
        .a(a[2]),
        .b(b[2])
    );

    or_gate or3(
        .out(out[3]),
        .a(a[3]),
        .b(b[3])
    );

    or_gate or4(
        .out(out[4]),
        .a(a[4]),
        .b(b[4])
    );

    or_gate or5(
        .out(out[5]),
        .a(a[5]),
        .b(b[5])
    );

    or_gate or6(
        .out(out[6]),
        .a(a[6]),
        .b(b[6])
    );

    or_gate or7(
        .out(out[7]),
        .a(a[7]),
        .b(b[7])
    );

    or_gate or8(
        .out(out[8]),
        .a(a[8]),
        .b(b[8])
    );

    or_gate or9(
        .out(out[9]),
        .a(a[9]),
        .b(b[9])
    );

    or_gate or10(
        .out(out[10]),
        .a(a[10]),
        .b(b[10])
    );

    or_gate or11(
        .out(out[11]),
        .a(a[11]),
        .b(b[11])
    );

    or_gate or12(
        .out(out[12]),
        .a(a[12]),
        .b(b[12])
    );

    or_gate or13(
        .out(out[13]),
        .a(a[13]),
        .b(b[13])
    );

    or_gate or14(
        .out(out[14]),
        .a(a[14]),
        .b(b[14])
    );

    or_gate or15(
        .out(out[15]),
        .a(a[15]),
        .b(b[15])
    );
endmodule
`endif