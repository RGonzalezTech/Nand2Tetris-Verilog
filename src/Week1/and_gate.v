`include "src/Week1/nand_gate.v"
`include "src/Week1/not_gate.v"

`ifndef AND_GATE_V
`define AND_GATE_V
module and_gate(
    output wire out,
    input wire a,
    input wire b
);
    wire nand_out;
    nand_gate nand0 (
        .out(nand_out),
        .a(a),
        .b(b)
    );

    not_gate not0 (
        .out(out),
        .in(nand_out)
    );
endmodule
`endif