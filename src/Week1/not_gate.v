`include "src/Week1/nand_gate.v"

module not_gate(
    output wire out,
    input wire in
);
    // This is how you get a NOT gate
    // by using a NAND gate
    nand_gate inverter (
        .out(out),
        .a(in),
        .b(in)
    );
endmodule