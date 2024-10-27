`include "src/Week1/and_gate.v"
`include "src/Week1/xor_gate.v"

`ifndef HALF_ADDER_GATE_V
`define HALF_ADDER_GATE_V
module half_adder_gate(
    output wire sum,
    output wire carry,
    input wire a,
    input wire b
);
    // Simple half adder gate
    // assign sum = a ^ b; // XOR
    // assign carry = a & b; // AND

    // Using gate primitives
    xor_gate sum_xor(
        .out(sum),
        .a(a),
        .b(b)
    );

    and_gate carry_and(
        .out(carry),
        .a(a),
        .b(b)
    );
endmodule
`endif