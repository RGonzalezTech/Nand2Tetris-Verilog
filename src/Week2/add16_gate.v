`include "src/Week2/full_adder_gate.v"

`ifndef ADD16_GATE_V
`define ADD16_GATE_V
module add16_gate (
    output wire[15:0] out,
    input wire[15:0] a,
    input wire[15:0] b
);
    // Simple 16-bit adder
    // assign out = a + b;

    // Using 16 full adders
    wire[15:0] carry;
    full_adder_gate fa0(
        .sum(out[0]),
        .carry(carry[0]),
        .a(a[0]),
        .b(b[0]),
        .c(1'b0) // Carry-in is 0 to start
    );
    full_adder_gate fa1(
        .sum(out[1]),
        .carry(carry[1]),
        .a(a[1]),
        .b(b[1]),
        .c(carry[0])
    );
    full_adder_gate fa2(
        .sum(out[2]),
        .carry(carry[2]),
        .a(a[2]),
        .b(b[2]),
        .c(carry[1])
    );
    full_adder_gate fa3(
        .sum(out[3]),
        .carry(carry[3]),
        .a(a[3]),
        .b(b[3]),
        .c(carry[2])
    );
    full_adder_gate fa4(
        .sum(out[4]),
        .carry(carry[4]),
        .a(a[4]),
        .b(b[4]),
        .c(carry[3])
    );
    full_adder_gate fa5(
        .sum(out[5]),
        .carry(carry[5]),
        .a(a[5]),
        .b(b[5]),
        .c(carry[4])
    );
    full_adder_gate fa6(
        .sum(out[6]),
        .carry(carry[6]),
        .a(a[6]),
        .b(b[6]),
        .c(carry[5])
    );
    full_adder_gate fa7(
        .sum(out[7]),
        .carry(carry[7]),
        .a(a[7]),
        .b(b[7]),
        .c(carry[6])
    );
    full_adder_gate fa8(
        .sum(out[8]),
        .carry(carry[8]),
        .a(a[8]),
        .b(b[8]),
        .c(carry[7])
    );
    full_adder_gate fa9(
        .sum(out[9]),
        .carry(carry[9]),
        .a(a[9]),
        .b(b[9]),
        .c(carry[8])
    );
    full_adder_gate fa10(
        .sum(out[10]),
        .carry(carry[10]),
        .a(a[10]),
        .b(b[10]),
        .c(carry[9])
    );
    full_adder_gate fa11(
        .sum(out[11]),
        .carry(carry[11]),
        .a(a[11]),
        .b(b[11]),
        .c(carry[10])
    );
    full_adder_gate fa12(
        .sum(out[12]),
        .carry(carry[12]),
        .a(a[12]),
        .b(b[12]),
        .c(carry[11])
    );
    full_adder_gate fa13(
        .sum(out[13]),
        .carry(carry[13]),
        .a(a[13]),
        .b(b[13]),
        .c(carry[12])
    );
    full_adder_gate fa14(
        .sum(out[14]),
        .carry(carry[14]),
        .a(a[14]),
        .b(b[14]),
        .c(carry[13])
    );
    full_adder_gate fa15(
        .sum(out[15]),
        .carry(carry[15]),
        .a(a[15]),
        .b(b[15]),
        .c(carry[14])
    );
endmodule
`endif