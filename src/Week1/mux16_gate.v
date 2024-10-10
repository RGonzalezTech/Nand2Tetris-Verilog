`include "src/Week1/mux_gate.v"

`ifndef MUX16_GATE_V
`define MUX16_GATE_V
module mux16_gate(
    output wire [15:0] out,
    input wire [15:0] a,
    input wire [15:0] b,
    input wire sel
);
    // Simple 16-bit multiplexer
    // assign out = sel ? b : a;

    // 16 1-bit multiplexers
    mux_gate mux0(
        .out(out[0]),
        .a(a[0]),
        .b(b[0]),
        .sel(sel)
    );

    mux_gate mux1(
        .out(out[1]),
        .a(a[1]),
        .b(b[1]),
        .sel(sel)
    );

    mux_gate mux2(
        .out(out[2]),
        .a(a[2]),
        .b(b[2]),
        .sel(sel)
    );

    mux_gate mux3(
        .out(out[3]),
        .a(a[3]),
        .b(b[3]),
        .sel(sel)
    );

    mux_gate mux4(
        .out(out[4]),
        .a(a[4]),
        .b(b[4]),
        .sel(sel)
    );

    mux_gate mux5(
        .out(out[5]),
        .a(a[5]),
        .b(b[5]),
        .sel(sel)
    );

    mux_gate mux6(
        .out(out[6]),
        .a(a[6]),
        .b(b[6]),
        .sel(sel)
    );

    mux_gate mux7(
        .out(out[7]),
        .a(a[7]),
        .b(b[7]),
        .sel(sel)
    );

    mux_gate mux8(
        .out(out[8]),
        .a(a[8]),
        .b(b[8]),
        .sel(sel)
    );

    mux_gate mux9(
        .out(out[9]),
        .a(a[9]),
        .b(b[9]),
        .sel(sel)
    );

    mux_gate mux10(
        .out(out[10]),
        .a(a[10]),
        .b(b[10]),
        .sel(sel)
    );

    mux_gate mux11(
        .out(out[11]),
        .a(a[11]),
        .b(b[11]),
        .sel(sel)
    );

    mux_gate mux12(
        .out(out[12]),
        .a(a[12]),
        .b(b[12]),
        .sel(sel)
    );

    mux_gate mux13(
        .out(out[13]),
        .a(a[13]),
        .b(b[13]),
        .sel(sel)
    );

    mux_gate mux14(
        .out(out[14]),
        .a(a[14]),
        .b(b[14]),
        .sel(sel)
    );

    mux_gate mux15(
        .out(out[15]),
        .a(a[15]),
        .b(b[15]),
        .sel(sel)
    );
endmodule
`endif