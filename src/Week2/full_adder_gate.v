`include "src/Week1/xor_gate.v"
`include "src/Week1/and_gate.v"
`include "src/Week1/or_gate.v"

module full_adder_gate(
    output wire sum,
    output wire carry,
    input wire a,
    input wire b,
    input wire c
);
    // Simple full adder gate
    // assign sum = a ^ b ^ c; // XOR
    // assign carry = (a & b) | (b & c) | (a & c); // OR

    wire ab_xor;
    xor_gate ab_xor_out(
        .out(ab_xor),
        .a(a),
        .b(b)
    );

    xor_gate abc_xor(
        .out(sum), // sum = a ^ b ^ c
        .a(ab_xor),
        .b(c)
    );

    // A & B, A & C, OR B & C
    wire ab_and, ac_and, bc_and;
    and_gate ab_and_out(
        .out(ab_and),
        .a(a),
        .b(b)
    );
    and_gate ac_and_out(
        .out(ac_and),
        .a(a),
        .b(c)
    );
    and_gate bc_and_out(
        .out(bc_and),
        .a(b),
        .b(c)
    );

    wire abOrAC;
    or_gate abOrAC_or(
        .out(abOrAC),
        .a(ab_and),
        .b(ac_and)
    );

    or_gate abOrACOrBC(
        .out(carry), // carry = (a & b) | (b & c) | (a & c)
        .a(abOrAC),
        .b(bc_and)
    );
endmodule