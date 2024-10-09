`include "src/Week1/and_gate.v"

`ifndef AND16_GATE_V
`define AND16_GATE_V
module and16_gate(
    output wire [15:0] out,
    input wire [15:0] a,
    input wire [15:0] b
);
    // Simple 16-bit AND gate
    // assign out = a & b;

    and_gate and0(
        .out(out[0]),
        .a(a[0]),
        .b(b[0])
    );

    and_gate and1(
        .out(out[1]),
        .a(a[1]),
        .b(b[1])
    );

    and_gate and2(
        .out(out[2]),
        .a(a[2]),
        .b(b[2])
    );

    and_gate and3(
        .out(out[3]),
        .a(a[3]),
        .b(b[3])
    );

    and_gate and4(
        .out(out[4]),
        .a(a[4]),
        .b(b[4])
    );

    and_gate and5(
        .out(out[5]),
        .a(a[5]),
        .b(b[5])
    );

    and_gate and6(
        .out(out[6]),
        .a(a[6]),
        .b(b[6])
    );

    and_gate and7(
        .out(out[7]),
        .a(a[7]),
        .b(b[7])
    );

    and_gate and8(
        .out(out[8]),
        .a(a[8]),
        .b(b[8])
    );

    and_gate and9(
        .out(out[9]),
        .a(a[9]),
        .b(b[9])
    );

    and_gate and10(
        .out(out[10]),
        .a(a[10]),
        .b(b[10])
    );

    and_gate and11(
        .out(out[11]),
        .a(a[11]),
        .b(b[11])
    );

    and_gate and12(
        .out(out[12]),
        .a(a[12]),
        .b(b[12])
    );

    and_gate and13(
        .out(out[13]),
        .a(a[13]),
        .b(b[13])
    );

    and_gate and14(
        .out(out[14]),
        .a(a[14]),
        .b(b[14])
    );

    and_gate and15(
        .out(out[15]),
        .a(a[15]),
        .b(b[15])
    );
endmodule
`endif