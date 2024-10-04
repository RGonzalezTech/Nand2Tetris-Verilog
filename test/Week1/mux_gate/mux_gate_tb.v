`include "src/Week1/mux_gate.v"

module mux_gate_tb();
    reg a, b, sel;
    wire out;

    mux_gate mux0(
        .out(out),
        .a(a),
        .b(b),
        .sel(sel)
    );

    initial begin
        $display("| a | b |sel|out|");
        $monitor("| %b | %b | %b | %b |", a, b, sel, out);

        a = 0; b = 0; sel = 0;
        #1
        a = 0; b = 0; sel = 1;
        #1
        a = 0; b = 1; sel = 0;
        #1
        a = 0; b = 1; sel = 1;
        #1
        a = 1; b = 0; sel = 0;
        #1
        a = 1; b = 0; sel = 1;
        #1
        a = 1; b = 1; sel = 0;
        #1
        a = 1; b = 1; sel = 1;

        $finish;
    end
endmodule