`include "src/Week1/or_8way_gate.v"

module or_8way_gate_tb();
    reg [7:0] in;
    wire out;

    or_8way_gate or8(
        .in(in),
        .out(out)
    );

    initial begin
        $display("|     in     |out|");
        $monitor("|  %b  | %b |", in, out);

        in = 8'b00000000;
        #1
        in = 8'b11111111;
        #1
        in = 8'b00010000;
        #1
        in = 8'b00000001;
        #1
        in = 8'b00100110;
        #1

        $finish;
    end
endmodule