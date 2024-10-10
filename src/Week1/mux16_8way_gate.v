`include "src/Week1/mux16_gate.v"
`include "src/Week1/mux16_4way_gate.v"

`ifndef MUX16_8WAY_GATE_V
`define MUX16_8WAY_GATE_V
module mux16_8way_gate(
    output wire [15:0] out,
    input wire [15:0] a,
    input wire [15:0] b,
    input wire [15:0] c,
    input wire [15:0] d,
    input wire [15:0] e,
    input wire [15:0] f,
    input wire [15:0] g,
    input wire [15:0] h,
    input wire [2:0] sel
);
    // Simple 8-way 16-bit multiplexer
    // assign out = (sel == 3'b000) ? a : 
    //              (sel == 3'b001) ? b : 
    //              (sel == 3'b010) ? c : 
    //              (sel == 3'b011) ? d : 
    //              (sel == 3'b100) ? e : 
    //              (sel == 3'b101) ? f : 
    //              (sel == 3'b110) ? g : 
    //              (sel == 3'b111) ? h : 16'b0; // Default value (0)

    wire [15:0] abcOrD;
    mux16_4way_gate muxTop(
        .out(abcOrD),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel[1:0])
    );

    wire [15:0] efgOrH;
    mux16_4way_gate muxBottom(
        .out(efgOrH),
        .a(e),
        .b(f),
        .c(g),
        .d(h),
        .sel(sel[1:0])
    );

    // Top or bottom, depending on sel[2]
    mux16_gate muxFinal(
        .out(out),
        .a(abcOrD),
        .b(efgOrH),
        .sel(sel[2])
    );
endmodule
`endif