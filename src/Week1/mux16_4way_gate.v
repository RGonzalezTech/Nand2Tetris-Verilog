`include "src/Week1/mux16_gate.v"

`ifndef MUX16_4WAY_GATE_V
`define MUX16_4WAY_GATE_V
module mux16_4way_gate(
    output wire [15:0] out,
    input wire [15:0] a,
    input wire [15:0] b,
    input wire [15:0] c,
    input wire [15:0] d,
    input wire [1:0] sel
);
    // Simple 4-way 16-bit multiplexer
    // assign out = (sel == 2'b00) ? a : 
    //              (sel == 2'b01) ? b : 
    //              (sel == 2'b10) ? c : 
    //              (sel == 2'b11) ? d : 16'b0; // Default value (0)

    // 0 == a, 1 == b
    wire [15:0] aOrB;
    mux16_gate mux0(
        .out(aOrB),
        .a(a),
        .b(b),
        .sel(sel[0])
    );

    // 0 == c, 1 == d
    wire [15:0] cOrD;
    mux16_gate mux1(
        .out(cOrD),
        .a(c),
        .b(d),
        .sel(sel[0])
    );

    // sel[1] selects between aOrB and cOrD
    mux16_gate mux2(
        .out(out),
        .a(aOrB),
        .b(cOrD),
        .sel(sel[1])
    );
endmodule
`endif