`include "src/Week1/dmux_gate.v"

module dmux_gate_tb();
    reg in, sel;
    wire a, b;

    dmux_gate dmux0(
        .a(a),
        .b(b),
        .in(in),
        .sel(sel)
    );

    initial begin
        $display("|in |sel| a | b |");
        $monitor("| %b | %b | %b | %b |", in, sel, a, b);

        in = 0;
        sel = 0;
        #1
        sel = 1;
        #1
        sel = 0;
        in = 1;
        #1
        sel = 1;
        #1
        $finish;
    end
endmodule