module nand_gate(
    output wire out,
    input wire a,
    input wire b
);
    assign out = ~(a & b);
endmodule