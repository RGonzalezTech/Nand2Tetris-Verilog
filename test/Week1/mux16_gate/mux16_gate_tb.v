`include "src/Week1/mux16_gate.v"

module mux16_gate_tb();
    reg [15:0] a, b;
    reg sel;
    wire [15:0] out;

    mux16_gate mux16(
        .out(out),
        .a(a),
        .b(b),
        .sel(sel)
    );

    initial begin
        $display("|        a         |        b         |sel|       out        |");
        $monitor("| %b | %b | %b | %b |", a, b, sel, out);

        a = 16'b0000000000000000;
        b = 16'b0000000000000000;
        sel = 0;

        #1

        sel = 1;

        #1

        b = 16'b0001001000110100;
        sel = 0;

        #1

        sel = 1;

        #1

        a = 16'b1001100001110110;
        b = 16'b0000000000000000;
        sel = 0;

        #1

        sel = 1;

        #1

        a = 16'b1010101010101010;
        b = 16'b0101010101010101;
        sel = 0;

        #1

        sel = 1;

        #1

        $finish;
    end
endmodule