`include "src/Week1/not_gate.v"

module not_gate_tb();
    reg in;
    wire out;

    not_gate not0 (
        .out(out),
        .in(in)
    );

    initial begin
        $display("|in |out|");
        $monitor("| %b | %b |", in, out);

        in = 0;
        #1
        in = 1;
    end
endmodule