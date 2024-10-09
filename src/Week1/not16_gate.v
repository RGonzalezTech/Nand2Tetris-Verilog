`include "src/Week1/not_gate.v"

`ifndef NOT16_GATE_V
`define NOT16_GATE_V
module not16_gate(
    output wire [15:0] out,
    input wire [15:0] in
);
    // Simple 16-bit NOT gate
    // assign out = ~in;

    not_gate not0(
        .out(out[0]),
        .in(in[0])
    );

    not_gate not1(
        .out(out[1]),
        .in(in[1])
    );

    not_gate not2(
        .out(out[2]),
        .in(in[2])
    );

    not_gate not3(
        .out(out[3]),
        .in(in[3])
    );

    not_gate not4(
        .out(out[4]),
        .in(in[4])
    );

    not_gate not5(
        .out(out[5]),
        .in(in[5])
    );

    not_gate not6(
        .out(out[6]),
        .in(in[6])
    );

    not_gate not7(
        .out(out[7]),
        .in(in[7])
    );

    not_gate not8(
        .out(out[8]),
        .in(in[8])
    );

    not_gate not9(
        .out(out[9]),
        .in(in[9])
    );

    not_gate not10(
        .out(out[10]),
        .in(in[10])
    );

    not_gate not11(
        .out(out[11]),
        .in(in[11])
    );

    not_gate not12(
        .out(out[12]),
        .in(in[12])
    );

    not_gate not13(
        .out(out[13]),
        .in(in[13])
    );

    not_gate not14(
        .out(out[14]),
        .in(in[14])
    );

    not_gate not15(
        .out(out[15]),
        .in(in[15])
    );
endmodule
`endif