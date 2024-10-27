`include "src/Week2/add16_gate.v"

`ifndef INC16_GATE_V
`define INC16_GATE_V
module inc16_gate (
    output wire[15:0] out,
    input wire[15:0] in
);
    // Simple 16-bit incrementer
    // assign out = in + 1;

    // Using 16-bit adder
    add16_gate add(
        .out(out),
        .a(in),
        .b(16'b1) // 1
    );
endmodule
`endif