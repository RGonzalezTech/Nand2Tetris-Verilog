`ifndef NAND_GATE_V
`define NAND_GATE_V
module nand_gate(
    output wire out,
    input wire a,
    input wire b
);
    assign out = ~(a & b);
endmodule
`endif