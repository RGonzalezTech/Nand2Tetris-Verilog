`include "src/Week1/nand_gate.v"

module nand_gate_tb();
    reg a, b;
    wire out;

    nand_gate nand_gate_0(
        .out(out),
        .a(a),
        .b(b)
    );

    initial begin
        $display("| a | b |out|");
        $monitor("| %b | %b | %b |", a, b, out);

        a = 0;
        b = 0;
        #3; // 3 ticks
        a = 0;
        b = 1;
        #3; // 3 ticks
        a = 1;
        b = 0;
        #3; // 3 ticks
        a = 1;
        b = 1;
        #3; // 3 ticks

        $finish; // Stop simulation
    end
endmodule